.class public Lcom/android/contacts/activities/DialtactsActivity;
.super Landroid/app/Activity;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLandFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;,
        Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;,
        Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;,
        Lcom/android/contacts/activities/DialtactsActivity$CustomArrayAdapter;,
        Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;,
        Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
    }
.end annotation


# static fields
.field private static final ACTION_RECENT_CALLS:Ljava/lang/String; = "com.android.phone.action.RECENT_CALLS"

.field private static final ACTION_TOUCH_DIALER:Ljava/lang/String; = "com.android.phone.action.TOUCH_DIALER"

.field public static final CALL_ORIGIN_DIALTACTS:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field public static final CALL_ORIGIN_FOR_ASSISTDIALING:Ljava/lang/String; = "from_dialer"

.field public static final CALL_ORIGIN_FOR_ASSISTDIALING_FROM_CONTACT:Ljava/lang/String; = "from_contact"

.field private static final CALL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting"

.field public static final DEBUG:Z = true

.field public static final DEBUG_ENG:Z

.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field private static final EASY_MODE_SWITCH_INTENT:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field public static final EXTRA_CALL_DIRECTCALL:Ljava/lang/String; = "android.phone.extra.CALL_DIRECTCALL"

.field public static final EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.phone.CALL_ORIGIN"

.field public static final EXTRA_CALL_ORIGIN_FOR_ASSISTDIALING:Ljava/lang/String; = "origin"

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final PREF_LAST_MANUALLY_SELECTED_TAB:Ljava/lang/String; = "DialtactsActivity_last_manually_selected_tab"

.field private static final PREF_LAST_MANUALLY_SELECTED_TAB_DEFAULT:I = 0x0

.field public static final TAB_INDEX_CALL_LOG:I = 0x1

.field private static final TAB_INDEX_CONTACTS:I = 0x3

.field private static final TAB_INDEX_COUNT:I = 0x4

.field public static final TAB_INDEX_DIALER:I = 0x0

.field public static final TAB_INDEX_FAVORITES:I = 0x2

.field public static final TAB_INDEX_GROUPS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DialtactsActivity"

.field private static VERIFICATION_LOG_TAG:Ljava/lang/String;

.field public static VT_ENABLE:Z

.field private static isFavouriteEmptyStatus:Z

.field public static isSupportMultiWindow:Z

.field public static mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

.field public static mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field public static mContactsDB_Status:I

.field private static mCurrentTab:I

.field public static mDisplayNameOrder:I

.field public static mEasyMode:Z

.field public static mIsSamsungCorean:Z

.field public static mIsTabChange:Z

.field public static mIsVendorKTT:Z

.field public static mIsVendorLGT:Z

.field public static mIsVendorSKT:Z

.field public static mMenuOpen:Z

.field private static mTalkbackCheck:Z

.field public static noNeedToClear:Z


# instance fields
.field private Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

.field private intent_action:Ljava/lang/String;

.field private isFonblet:Z

.field private isUpdateListModeTabPosition:Z

.field private isUpdateTabPosition:Z

.field private isUsingTwoPanel:Z

.field private mAddFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mCTStatusHandler:Landroid/os/Handler;

.field private mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

.field private mCallLogCustomTabView:Landroid/view/View;

.field private mCallLogCustomTabView_Text:Landroid/widget/TextView;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private mCallSettingMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mChangeViewFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mChangeViewMenu:Landroid/view/MenuItem;

.field private mContactCustomTabView:Landroid/view/View;

.field private mContactCustomTabView_Text:Landroid/widget/TextView;

.field private mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLandLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mContext:Landroid/content/Context;

.field mDeleteFavoriteItem:Landroid/view/MenuItem;

.field private mDeleteFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mDialCustomTabView:Landroid/view/View;

.field private mDialCustomTabView_Text:Landroid/widget/TextView;

.field private mDialUri:Landroid/net/Uri;

.field private mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private mDialpadListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

.field mDuringSwipe:Z

.field private mEAMReceiver:Landroid/content/BroadcastReceiver;

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

.field private mFavoCustomTabView:Landroid/view/View;

.field private mFavoCustomTabView_Text:Landroid/widget/TextView;

.field private mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

.field private mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private final mFilterOptionClickListener:Landroid/view/View$OnClickListener;

.field private mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFilterText:Ljava/lang/String;

.field private final mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field public mFromMissedCallNotify:Z

.field private mGroupsCustomTabView:Landroid/view/View;

.field private mGroupsCustomTabView_Text:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInSearchUi:Z

.field private mLastManuallySelectedFragment:I

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

.field private final mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private final mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

.field private mStrequentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

.field private mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mStrequentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mSupportFolderType:Z

.field private mSwipeToMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field private mTw_color017:I

.field private mTw_color031:I

.field mUserTabClick:Z

.field public mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

.field private mbFirstWindowFocusChanged:Z

.field private navAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resource:Landroid/content/res/Resources;

.field private tab_custom_view_button:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    const-string v0, "VerificationLog"

    sput-object v0, Lcom/android/contacts/activities/DialtactsActivity;->VERIFICATION_LOG_TAG:Ljava/lang/String;

    .line 190
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG_ENG:Z

    .line 228
    sput v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    .line 237
    sput-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    .line 244
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mTalkbackCheck:Z

    .line 271
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    .line 272
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorSKT:Z

    .line 273
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorKTT:Z

    .line 274
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    .line 277
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    .line 287
    sput v2, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    .line 290
    sput v1, Lcom/android/contacts/activities/DialtactsActivity;->mDisplayNameOrder:I

    .line 293
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    .line 295
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mMenuOpen:Z

    .line 297
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsTabChange:Z

    .line 300
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->noNeedToClear:Z

    .line 555
    sput-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->isFavouriteEmptyStatus:Z

    return-void

    :cond_0
    move v0, v2

    .line 190
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 241
    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mHandler:Landroid/os/Handler;

    .line 252
    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->intent_action:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 284
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 285
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 288
    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    .line 296
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFromMissedCallNotify:Z

    .line 408
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 416
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 535
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    .line 546
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

    .line 548
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;

    .line 553
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 558
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$1;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 837
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$2;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    .line 859
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$3;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 883
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$4;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mAddFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 895
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$5;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 906
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$6;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 925
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$7;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSwipeToMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 952
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$8;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallSettingMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 978
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$9;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 1000
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$10;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$10;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 1030
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$11;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$11;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 1041
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$12;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$12;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 2791
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$16;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$16;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

    .line 2798
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$17;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$17;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 2806
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    .line 3947
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$18;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$18;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/DialtactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isFonblet:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/DialtactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/activities/DialtactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 183
    sput p0, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/activities/DialtactsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->checkCallLogFavoriteList()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/DialtactsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->intent_action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/contacts/activities/DialtactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/contacts/activities/DialtactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    return-void
.end method

.method static synthetic access$3602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 183
    sput-boolean p0, Lcom/android/contacts/activities/DialtactsActivity;->isFavouriteEmptyStatus:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/DialtactsActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/contacts/activities/DialtactsActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupFavoriteDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/DialtactsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/DialtactsActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method private checkCallLogFavoriteList()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 3876
    const v4, 0x7f0901a3

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3877
    .local v0, "contactsUnavailableView":Landroid/view/View;
    const v4, 0x7f0900d6

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3879
    .local v2, "mainView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    :cond_0
    sget v4, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    if-eqz v4, :cond_4

    sget v4, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    if-eq v4, v8, :cond_4

    .line 3883
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v4, :cond_1

    .line 3884
    new-instance v4, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v4}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 3886
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0901a4

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3894
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    sget v4, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/list/ProviderStatusWatcher$Status;-><init>(ILjava/lang/String;)V

    .line 3896
    .local v3, "watcherStatus":Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v4, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 3898
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3900
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v4, :cond_2

    .line 3901
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setVisibility(I)V

    .line 3903
    :cond_2
    if-eqz v2, :cond_3

    .line 3904
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3917
    .end local v3    # "watcherStatus":Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    :cond_3
    :goto_1
    return-void

    .line 3889
    :catch_0
    move-exception v1

    .line 3890
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v4, "DialtactsActivity"

    const-string v5, "Activity might be destroyed before commit"

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3908
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3910
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v4, :cond_5

    .line 3911
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setVisibility(I)V

    .line 3913
    :cond_5
    if-eqz v2, :cond_3

    .line 3914
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private checkVoipState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3803
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3804
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->voipIsInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3806
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->returnToVoipCallScreen()V

    .line 3807
    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/activities/DialtactsActivity;->overridePendingTransition(II)V

    .line 3808
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 3810
    :cond_0
    return-void
.end method

.method private enterSearchUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3019
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-nez v3, :cond_0

    .line 3080
    :goto_0
    return-void

    .line 3028
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v3, :cond_1

    .line 3029
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->prepareSearchView()V

    .line 3033
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3044
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3045
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 3046
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 3049
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 3051
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 3052
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3053
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 3054
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3056
    invoke-direct {p0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    .line 3057
    iget-boolean v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v3, :cond_3

    .line 3058
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_3

    .line 3059
    invoke-direct {p0, v1, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 3058
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3063
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 3064
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 3065
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 3066
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 3067
    iget-boolean v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v3, :cond_4

    .line 3068
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setVisibility(I)V

    .line 3074
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 3075
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    .line 3078
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method private exitSearchUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3105
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3108
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v3, :cond_0

    .line 3109
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 3111
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 3112
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 3113
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 3118
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 3119
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 3120
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3122
    iget-boolean v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v3, :cond_3

    .line 3123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 3124
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 3123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 3124
    goto :goto_1

    .line 3128
    :cond_2
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 3129
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 3131
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setVisibility(I)V

    .line 3133
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    .line 3136
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 3139
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 3140
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    .line 3142
    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1847
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.phone.action.RECENT_CALLS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    :cond_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1850
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1851
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 1853
    :cond_1
    return-void
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 3226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3227
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3228
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3231
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_common_dsds_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3233
    :cond_0
    const-string v1, "fromDialer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3236
    :cond_1
    return-object v0
.end method

.method public static getCurrentTab()I
    .locals 1

    .prologue
    .line 3851
    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    return v0
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 3144
    packed-switch p1, :pswitch_data_0

    .line 3171
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

    .line 3146
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 3167
    :goto_0
    return-object v0

    .line 3148
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    goto :goto_0

    .line 3150
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isFonblet:Z

    if-eqz v0, :cond_0

    .line 3151
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    goto :goto_0

    .line 3153
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_0

    .line 3156
    :pswitch_3
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFragmentAt, mLastManuallySelectedFragment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    packed-switch v0, :pswitch_data_1

    .line 3160
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    goto :goto_0

    .line 3162
    :pswitch_4
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    goto :goto_0

    .line 3164
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isFonblet:Z

    if-eqz v0, :cond_1

    .line 3165
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    goto :goto_0

    .line 3167
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_0

    .line 3144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3157
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 3941
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3942
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.contacts.activities.PeopleActivity.Favourites"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3943
    const-string v1, "com.android.contacts.activities.PeopleActivity.All"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3944
    return-object v0
.end method

.method private getMenuList()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3935
    .local v0, "menu":Ljava/lang/StringBuilder;
    const-string v1, "Favourites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3936
    const-string v1, "Contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3937
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3092
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3093
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3094
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3096
    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 2457
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2458
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2467
    :cond_0
    :goto_0
    return v2

    .line 2461
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2462
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2463
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2467
    .end local v1    # "data":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPenMultiWindow(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 3920
    if-eqz p0, :cond_0

    .line 3921
    invoke-virtual {p0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3922
    const/4 v0, 0x1

    .line 3926
    :cond_0
    return v0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "recentCallsRequest"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2170
    if-eqz p2, :cond_0

    .line 2171
    const-string v5, "call_key"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2172
    .local v0, "callKey":Z
    const-string v5, "notify"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2174
    .local v2, "notify":Z
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2175
    .local v3, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 2187
    .end local v0    # "callKey":Z
    .end local v2    # "notify":Z
    .end local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v4

    .line 2179
    .restart local v0    # "callKey":Z
    .restart local v2    # "notify":Z
    .restart local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 2180
    const/4 v4, 0x1

    goto :goto_0

    .line 2182
    .end local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2183
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "DialtactsActivity"

    const-string v6, "Failed to handle send while in call"

    invoke-static {v5, v6, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isSupportHoveringUI(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 3844
    const-string v0, "com.sec.feature.hovering_ui"

    invoke-static {p0, v0}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3845
    const/4 v0, 0x1

    .line 3847
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playSoundEffect(I)V
    .locals 2
    .param p1, "effectType"    # I

    .prologue
    .line 2512
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2513
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 2514
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2516
    :cond_0
    return-void
.end method

.method private prepareSearchView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1739
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040120

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1741
    .local v1, "searchViewLayout":Landroid/view/View;
    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 1742
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1743
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1750
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1751
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1752
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1753
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/activities/DialtactsActivity$15;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/DialtactsActivity$15;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1762
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1764
    const v2, 0x7f0902ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1765
    .local v0, "filterOptionView":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1766
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1770
    .end local v0    # "filterOptionView":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1773
    return-void
.end method

.method private registerProviderStatusObserver()V
    .locals 4

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1589
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    .line 1590
    :cond_0
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    .line 1591
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1592
    const-string v0, "DialtactsActivity"

    const-string v1, "registerProviderStatusObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return-void
.end method

.method private returnToVoipCallScreen()V
    .locals 4

    .prologue
    .line 3816
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 3819
    .local v1, "voipinterface":Landroid/os/IVoIPInterface;
    :try_start_0
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->moveVoIPToTop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3823
    :goto_0
    return-void

    .line 3820
    :catch_0
    move-exception v0

    .line 3821
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DialtactsActivity"

    const-string v3, "voipinterface.isVoIPRingOrDialing() or voipinterface.isOffhook() failed"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendAccessibilityEvent(I)V
    .locals 6
    .param p1, "tabPos"    # I

    .prologue
    .line 3600
    const-string v3, ""

    .line 3601
    .local v3, "tabString":Ljava/lang/String;
    const v1, 0x7f0e02f1

    .line 3602
    .local v1, "tab1":I
    const v2, 0x7f0e02f2

    .line 3604
    .local v2, "tab2":I
    iget-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v4, :cond_0

    .line 3605
    const v1, 0x7f0e008f

    .line 3606
    const v2, 0x7f0e0127

    .line 3609
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3630
    :goto_0
    const/16 v4, 0x20

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3633
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3634
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3635
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 3636
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 3637
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3638
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3640
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3642
    return-void

    .line 3611
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3612
    goto :goto_0

    .line 3615
    :pswitch_1
    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3616
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e018a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3618
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3619
    goto :goto_0

    .line 3622
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3623
    goto :goto_0

    .line 3626
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0212

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendAccessibilityEvent(Landroid/app/ActionBar$Tab;)V
    .locals 7
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 3547
    const-string v4, ""

    .line 3548
    .local v4, "tabString":Ljava/lang/String;
    const v2, 0x7f0e02f1

    .line 3549
    .local v2, "tab1":I
    const v3, 0x7f0e02f2

    .line 3551
    .local v3, "tab2":I
    iget-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v5, :cond_0

    .line 3552
    const v2, 0x7f0e008f

    .line 3553
    const v3, 0x7f0e0127

    .line 3556
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3580
    :goto_0
    const/16 v5, 0x20

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3583
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3584
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3585
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 3586
    const-string v5, ""

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 3587
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3588
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3592
    :try_start_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3597
    :goto_1
    return-void

    .line 3559
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3560
    goto :goto_0

    .line 3563
    :pswitch_1
    const-string v5, "feature_vzw"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3564
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e018a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3566
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3567
    goto :goto_0

    .line 3570
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e02f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3571
    goto :goto_0

    .line 3574
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0212

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3593
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :catch_0
    move-exception v0

    .line 3594
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "DialtactsActivity"

    const-string v6, "java.lang.IllegalStateException: Accessibility off."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "visibility"    # Z

    .prologue
    .line 3177
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFragmentVisibiltyChange(). position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    if-ltz p1, :cond_1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    .line 3182
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 3183
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 3184
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 3185
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 3187
    :cond_0
    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    if-eqz v1, :cond_1

    .line 3188
    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v0, p2}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;->onVisibilityChanged(Z)V

    .line 3192
    :cond_1
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 23
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2196
    const-string v4, "DialtactsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurrentTab , intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const-string v4, "notify"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 2199
    .local v17, "notify":Z
    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 2200
    .local v19, "recentCallsRequest":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2201
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 2376
    :goto_0
    return-void

    .line 2204
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 2205
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 2209
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    move/from16 v20, v0

    .line 2212
    .local v20, "savedTabIndex":I
    const/4 v10, 0x0

    .line 2215
    .local v10, "actionBar":Landroid/app/ActionBar;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    .line 2217
    const/4 v12, 0x0

    .line 2218
    .local v12, "bSaveTabIndex":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 2219
    .local v9, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->intent_action:Ljava/lang/String;

    .line 2220
    const-string v4, "tab"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2222
    .local v15, "extra":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2224
    .local v11, "bHasBadgeCount":Z
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 2225
    .local v22, "where":Ljava/lang/StringBuilder;
    const-string v4, "new"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    const-string v4, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    const-string v4, "type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2230
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "_id DESC LIMIT 1"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2233
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 2234
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 2235
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2236
    const/4 v11, 0x1

    .line 2238
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2245
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v22    # "where":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecntcallEntryActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v15, :cond_a

    const-string v4, "logs"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2247
    :cond_4
    const/16 v21, 0x1

    .line 2347
    .local v21, "tabIndex":I
    :cond_5
    :goto_2
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2348
    sput v21, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    .line 2351
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v4, :cond_8

    .line 2352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v18

    .line 2353
    .local v18, "previousItemIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    .line 2355
    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 2356
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 2358
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    .line 2359
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 2361
    .end local v18    # "previousItemIndex":I
    :cond_8
    if-eqz v10, :cond_9

    .line 2362
    invoke-virtual {v10}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v4

    move/from16 v0, v21

    if-eq v4, v0, :cond_9

    .line 2363
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2367
    :cond_9
    if-eqz v12, :cond_21

    .line 2368
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 2374
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 2375
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    goto/16 :goto_0

    .line 2240
    .end local v21    # "tabIndex":I
    :catch_0
    move-exception v14

    .line 2241
    .local v14, "e":Ljava/lang/Exception;
    const-string v4, "DialtactsActivity"

    const-string v5, "LogsProvider cursor returns null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2248
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_a
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_b
    if-nez v17, :cond_e

    if-nez v19, :cond_e

    .line 2249
    const/4 v12, 0x1

    .line 2250
    const/16 v21, 0x0

    .line 2251
    .restart local v21    # "tabIndex":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v4, :cond_c

    .line 2252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_2

    .line 2254
    :cond_c
    if-eqz v10, :cond_d

    .line 2255
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2257
    :cond_d
    const/4 v4, 0x0

    sput v4, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    goto/16 :goto_2

    .line 2259
    .end local v21    # "tabIndex":I
    :cond_e
    if-eqz v19, :cond_18

    .line 2260
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2262
    if-eqz v9, :cond_f

    const-string v4, "com.android.phone.action.RECENT_CALLS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    if-eqz v15, :cond_11

    const-string v4, "logs"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2264
    :cond_10
    const/16 v21, 0x1

    .restart local v21    # "tabIndex":I
    goto/16 :goto_2

    .line 2266
    .end local v21    # "tabIndex":I
    :cond_11
    const/16 v21, 0x0

    .line 2267
    .restart local v21    # "tabIndex":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v4, :cond_13

    .line 2268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v4

    if-nez v4, :cond_12

    .line 2269
    const-string v4, "keyevent5_current_dialtab"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2271
    :cond_12
    const-string v4, "keyevent5_current_dialtab"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2274
    :cond_13
    if-eqz v10, :cond_14

    invoke-virtual {v10}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v4

    if-nez v4, :cond_14

    .line 2275
    const-string v4, "keyevent5_current_dialtab"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2277
    :cond_14
    const-string v4, "keyevent5_current_dialtab"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2282
    .end local v21    # "tabIndex":I
    :cond_15
    const/16 v21, 0x1

    .line 2283
    .restart local v21    # "tabIndex":I
    const/4 v12, 0x1

    .line 2284
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v4, :cond_16

    .line 2285
    const/4 v4, 0x1

    sput v4, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    .line 2287
    :cond_16
    const-string v4, "permanent_save_view_by_setting"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v17, :cond_5

    .line 2288
    const-string v4, "DialtactsActivity"

    const-string v5, "mFromMissedCallNotify = true"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_17

    .line 2290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFromMissedCallNotify:Z

    goto/16 :goto_2

    .line 2293
    :cond_17
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mFromMissedCallNotify:Z

    goto/16 :goto_2

    .line 2297
    .end local v21    # "tabIndex":I
    :cond_18
    const-string v4, "phone_icon_to_keypad"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2303
    :cond_19
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_1b

    if-nez v19, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000

    if-ne v4, v5, :cond_1b

    .line 2309
    const/16 v21, 0x1

    .line 2319
    .restart local v21    # "tabIndex":I
    :cond_1a
    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 2312
    .end local v21    # "tabIndex":I
    :cond_1b
    const/16 v21, 0x0

    .line 2313
    .restart local v21    # "tabIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v4, :cond_1a

    .line 2314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v0, v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    .line 2315
    .local v16, "mCallLogDeleteDlg":Landroid/app/AlertDialog;
    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2316
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_4

    .line 2320
    .end local v16    # "mCallLogDeleteDlg":Landroid/app/AlertDialog;
    .end local v21    # "tabIndex":I
    :cond_1c
    if-eqz v11, :cond_1d

    .line 2321
    const/16 v21, 0x1

    .line 2322
    .restart local v21    # "tabIndex":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v4, :cond_5

    .line 2323
    const/4 v4, 0x1

    sput v4, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    goto/16 :goto_2

    .line 2324
    .end local v21    # "tabIndex":I
    :cond_1d
    const-string v4, "feature_chn"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2325
    const/16 v21, 0x0

    .restart local v21    # "tabIndex":I
    goto/16 :goto_2

    .line 2326
    .end local v21    # "tabIndex":I
    :cond_1e
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_20

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2328
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2329
    const/16 v21, 0x0

    .restart local v21    # "tabIndex":I
    goto/16 :goto_2

    .line 2332
    .end local v21    # "tabIndex":I
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    move/from16 v21, v0

    .restart local v21    # "tabIndex":I
    goto/16 :goto_2

    .line 2336
    .end local v21    # "tabIndex":I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    move/from16 v21, v0

    .restart local v21    # "tabIndex":I
    goto/16 :goto_2

    .line 2372
    :cond_21
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    goto/16 :goto_3
.end method

.method private setEmbeddedTabs()V
    .locals 7

    .prologue
    .line 3859
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 3860
    .local v0, "actionBarImpl":Lcom/android/internal/app/ActionBarImpl;
    const/4 v1, 0x0

    .line 3862
    .local v1, "setHasEmbeddedTabs":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setHasEmbeddedTabs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3863
    if-eqz v1, :cond_0

    .line 3864
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3865
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3872
    :cond_0
    :goto_0
    return-void

    .line 3870
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3869
    :catch_1
    move-exception v2

    goto :goto_0

    .line 3868
    :catch_2
    move-exception v2

    goto :goto_0

    .line 3867
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private setTabTextWidth()V
    .locals 4

    .prologue
    const v3, 0x7f090023

    .line 1727
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    rsub-int/lit8 v0, v1, 0x4

    .line 1729
    .local v0, "tabCount":I
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1730
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1731
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1732
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1733
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1734
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1735
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1736
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1737
    :cond_3
    return-void

    .line 1727
    .end local v0    # "tabCount":I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupCallLog()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const v9, 0x7f0e02f2

    const/4 v8, 0x2

    const v7, 0x7f090023

    .line 2027
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 2028
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2131624690 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0e04e5

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v2, v5}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 2029
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 2030
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_5

    .line 2031
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2033
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    .line 2034
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2035
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0e04e5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2036
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 2062
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2064
    return-void

    .line 2038
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_2

    const-string v1, "feature_cdma_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_gsm_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2039
    :cond_2
    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2040
    const v1, 0x7f0e018a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 2042
    :cond_3
    invoke-virtual {v0, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 2045
    :cond_4
    const v1, 0x7f0206dd

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 2048
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    .line 2049
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0206dd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2051
    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2052
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e018a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2055
    :goto_1
    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2056
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    rsub-int/lit8 v2, v2, 0x4

    div-int v2, v5, v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2057
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;

    .line 2058
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0e04e5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2059
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto/16 :goto_0

    .line 2054
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_8
    move v2, v4

    .line 2056
    goto :goto_2
.end method

.method private setupContacts()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const v9, 0x7f0e0210

    const v7, 0x7f090023

    const/4 v8, 0x4

    .line 2105
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 2106
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2131624464 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0e04e5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v2, v5}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 2107
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 2109
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_2

    .line 2110
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2112
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    .line 2113
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2114
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0e04e5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2115
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 2156
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2159
    return-void

    .line 2117
    :cond_1
    invoke-virtual {v0, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 2146
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    .line 2147
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0206d9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2148
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2149
    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2150
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    rsub-int/lit8 v2, v2, 0x4

    div-int v2, v5, v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2151
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;

    .line 2152
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0e04e5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2153
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 2150
    goto :goto_1
.end method

.method private setupDialUri(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3296
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3300
    :goto_0
    return-void

    .line 3299
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupDialer()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x0

    const v8, 0x7f090023

    const/4 v4, 0x1

    .line 1961
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1962
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2131624689 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e04e5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v3, v6}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 1963
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1964
    const v1, 0x7f0e02f1

    .line 1966
    .local v1, "tab1":I
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_4

    .line 1967
    const v1, 0x7f0e008f

    .line 1968
    const-string v2, "alwasy_tab_mode_tablet"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1970
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1971
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1972
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0e04e5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1973
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 1991
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1992
    return-void

    .line 1975
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v2, :cond_2

    const-string v2, "feature_cdma_layout"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "feature_gsm_layout"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1976
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1978
    :cond_3
    const v2, 0x7f0206da

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1981
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1982
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0206da

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1983
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e02f1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1984
    const-string v2, "feature_wvga"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1985
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    rsub-int/lit8 v3, v3, 0x4

    div-int v3, v6, v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1986
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;

    .line 1987
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e02f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0e04e5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1988
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto/16 :goto_0

    :cond_6
    move v3, v5

    .line 1985
    goto :goto_1
.end method

.method private setupFavoriteDetailFragment(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 3654
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 3655
    return-void
.end method

.method private setupFavorites()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v7, 0x7f090023

    .line 2069
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 2070
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2131624078 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0e04e5

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v2, v5}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 2071
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 2073
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_4

    .line 2074
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2076
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    .line 2077
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e02f3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2078
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0e04e5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2079
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 2099
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2100
    return-void

    .line 2081
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_2

    const-string v1, "feature_cdma_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_gsm_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2082
    :cond_2
    const v1, 0x7f0e02f3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 2085
    :cond_3
    const v1, 0x7f0206de

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 2089
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    .line 2090
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0206de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2091
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e02f3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2092
    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2093
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_1
    rsub-int/lit8 v2, v2, 0x4

    div-int v2, v5, v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2094
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;

    .line 2095
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0e04e5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2096
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 2093
    goto :goto_1
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2502
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 2509
    :cond_0
    :goto_0
    return-void

    .line 2505
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2506
    .local v0, "filter":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2507
    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupGroup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v2, 0x7f040002

    const v5, 0x7f0206dc

    const v3, 0x7f0e0127

    const v4, 0x7f090023

    .line 1996
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1997
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f0e008d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1998
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 2000
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_4

    .line 2001
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2003
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView:Landroid/view/View;

    .line 2004
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2005
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 2022
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2023
    return-void

    .line 2007
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_2

    const-string v1, "feature_cdma_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_gsm_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2008
    :cond_2
    invoke-virtual {v0, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 2010
    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 2013
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView:Landroid/view/View;

    .line 2014
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView:Landroid/view/View;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2015
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2016
    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2017
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    rsub-int/lit8 v2, v2, 0x4

    div-int v2, v3, v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2018
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView_Text:Landroid/widget/TextView;

    .line 2019
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mGroupsCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 2017
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3083
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3084
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 3085
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3086
    const-string v1, "DialtactsActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    :cond_0
    return-void
.end method

.method private unregisterProviderStatusObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1596
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    if-eqz v0, :cond_0

    .line 1597
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1598
    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    .line 1599
    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    .line 1602
    :cond_0
    const-string v0, "DialtactsActivity"

    const-string v1, "unregisterProviderStatusObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return-void
.end method

.method private updateFakeMenuButtonsVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 3204
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFakeMenuButtonVisibility("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    return-void
.end method

.method private voipIsInUse()Z
    .locals 5

    .prologue
    .line 3830
    const/4 v2, 0x0

    .line 3832
    .local v2, "voipInUse":Z
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 3833
    .local v1, "voipCall":Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_1

    .line 3834
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "com.amc.ui"

    invoke-interface {v1, v3}, Landroid/os/IVoIPInterface;->getVoIPCallCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x1

    .line 3840
    .end local v1    # "voipCall":Landroid/os/IVoIPInterface;
    :cond_1
    :goto_0
    return v2

    .line 3834
    .restart local v1    # "voipCall":Landroid/os/IVoIPInterface;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3836
    .end local v1    # "voipCall":Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 3837
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "DialtactsActivity"

    const-string v4, "voipCall.isVoIPActivated() or voipCall.isVoIPRingOrDialing() failed"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2520
    iget-boolean v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v10, :cond_2

    .line 2521
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit16 v4, v10, -0xc2

    .line 2522
    .local v4, "filteredMetaStateShiftKeyOn":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit16 v3, v10, -0x7001

    .line 2523
    .local v3, "filteredMetaStateCtrlKeyOn":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_2

    .line 2524
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x83

    if-ne v10, v11, :cond_0

    .line 2526
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v10, :cond_2

    .line 2527
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->loadHelp()V

    .line 2528
    const/4 v10, 0x1

    .line 2653
    .end local v3    # "filteredMetaStateCtrlKeyOn":I
    .end local v4    # "filteredMetaStateShiftKeyOn":I
    :goto_0
    return v10

    .line 2530
    .restart local v3    # "filteredMetaStateCtrlKeyOn":I
    .restart local v4    # "filteredMetaStateShiftKeyOn":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x84

    if-ne v10, v11, :cond_1

    .line 2531
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showAddToContact()V

    .line 2532
    const/4 v10, 0x1

    goto :goto_0

    .line 2533
    :cond_1
    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2534
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 2536
    .local v5, "focusView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 2568
    .end local v3    # "filteredMetaStateCtrlKeyOn":I
    .end local v4    # "filteredMetaStateShiftKeyOn":I
    .end local v5    # "focusView":Landroid/view/View;
    :cond_2
    :goto_1
    iget-boolean v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSupportFolderType:Z

    if-nez v10, :cond_4

    .line 2569
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v10

    goto :goto_0

    .line 2538
    .restart local v3    # "filteredMetaStateCtrlKeyOn":I
    .restart local v4    # "filteredMetaStateShiftKeyOn":I
    .restart local v5    # "focusView":Landroid/view/View;
    :pswitch_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f0900df

    if-ne v10, v11, :cond_2

    .line 2540
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v10, :cond_2

    .line 2541
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v10, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->openCallLogContextMenu(Landroid/view/View;)V

    .line 2542
    const/4 v10, 0x1

    goto :goto_0

    .line 2548
    .end local v5    # "focusView":Landroid/view/View;
    :cond_3
    invoke-static {v3}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2549
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 2551
    .restart local v5    # "focusView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    .line 2553
    :sswitch_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f0900df

    if-ne v10, v11, :cond_2

    .line 2555
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v10, :cond_2

    .line 2556
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v10, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showDeleteLogsConfirmDlg(Landroid/view/View;)V

    .line 2557
    const/4 v10, 0x1

    goto :goto_0

    .line 2562
    :sswitch_1
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showAddToContacts()V

    .line 2563
    const/4 v10, 0x1

    goto :goto_0

    .line 2572
    .end local v3    # "filteredMetaStateCtrlKeyOn":I
    .end local v4    # "filteredMetaStateShiftKeyOn":I
    .end local v5    # "focusView":Landroid/view/View;
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_5

    .line 2574
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2575
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v2

    .line 2577
    .local v2, "currentPage":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 2653
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "currentPage":I
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 2580
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v2    # "currentPage":I
    :pswitch_1
    if-nez v0, :cond_6

    .line 2581
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 2582
    :cond_6
    const/4 v10, 0x1

    if-ne v2, v10, :cond_5

    .line 2583
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 2584
    .local v8, "tab":Landroid/view/View;
    if-eqz v8, :cond_5

    .line 2585
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v9

    .line 2586
    .local v9, "twListview":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v10

    if-lez v10, :cond_9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v10

    if-nez v10, :cond_9

    const/4 v6, 0x1

    .line 2587
    .local v6, "isCalllogFirstItemFocused":Z
    :goto_3
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v7, 0x1

    .line 2588
    .local v7, "isWindowNotFocused":Z
    :goto_4
    const/4 v1, 0x0

    .line 2589
    .local v1, "bFocusOnSearchView":Z
    const-string v10, "feature_support_call_log_search"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2590
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 2591
    .restart local v5    # "focusView":Landroid/view/View;
    if-eqz v5, :cond_7

    instance-of v10, v5, Landroid/widget/SearchView$SearchAutoComplete;

    if-eqz v10, :cond_7

    .line 2592
    const/4 v1, 0x1

    .line 2595
    .end local v5    # "focusView":Landroid/view/View;
    :cond_7
    if-nez v6, :cond_8

    if-eqz v7, :cond_b

    :cond_8
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSearchOn()Z

    move-result v10

    if-nez v10, :cond_b

    .line 2596
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 2597
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearFocus()V

    .line 2598
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/contacts/activities/DialtactsActivity;->playSoundEffect(I)V

    .line 2599
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2586
    .end local v1    # "bFocusOnSearchView":Z
    .end local v6    # "isCalllogFirstItemFocused":Z
    .end local v7    # "isWindowNotFocused":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 2587
    .restart local v6    # "isCalllogFirstItemFocused":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 2600
    .restart local v1    # "bFocusOnSearchView":Z
    .restart local v7    # "isWindowNotFocused":Z
    :cond_b
    if-eqz v1, :cond_5

    .line 2601
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 2602
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearFocus()V

    .line 2603
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/contacts/activities/DialtactsActivity;->playSoundEffect(I)V

    .line 2604
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2613
    .end local v1    # "bFocusOnSearchView":Z
    .end local v6    # "isCalllogFirstItemFocused":Z
    .end local v7    # "isWindowNotFocused":Z
    .end local v8    # "tab":Landroid/view/View;
    .end local v9    # "twListview":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    :pswitch_2
    if-nez v0, :cond_c

    .line 2614
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 2615
    :cond_c
    if-nez v2, :cond_5

    .line 2616
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 2617
    .restart local v8    # "tab":Landroid/view/View;
    if-eqz v8, :cond_5

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2618
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 2619
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2625
    .end local v8    # "tab":Landroid/view/View;
    :pswitch_3
    if-nez v0, :cond_d

    .line 2626
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 2627
    :cond_d
    const/4 v10, 0x1

    if-ne v2, v10, :cond_5

    .line 2628
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v9

    .line 2629
    .restart local v9    # "twListview":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 2630
    .restart local v8    # "tab":Landroid/view/View;
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_f

    const/4 v7, 0x1

    .line 2634
    .restart local v7    # "isWindowNotFocused":Z
    :goto_5
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v10

    if-gez v10, :cond_e

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSearchOn()Z

    move-result v10

    if-nez v10, :cond_e

    .line 2635
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2639
    :cond_e
    if-eqz v7, :cond_5

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSearchOn()Z

    move-result v10

    if-nez v10, :cond_5

    .line 2640
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 2641
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestFocus()Z

    .line 2642
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/contacts/activities/DialtactsActivity;->playSoundEffect(I)V

    goto/16 :goto_2

    .line 2630
    .end local v7    # "isWindowNotFocused":Z
    :cond_f
    const/4 v7, 0x0

    goto :goto_5

    .line 2536
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    .line 2551
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2a -> :sswitch_1
    .end sparse-switch

    .line 2577
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3510
    const v0, 0x7f0e02f1

    .line 3511
    .local v0, "tab1":I
    const v1, 0x7f0e02f2

    .line 3513
    .local v1, "tab2":I
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_0

    .line 3514
    const v0, 0x7f0e008f

    .line 3515
    const v1, 0x7f0e0127

    .line 3520
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3538
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3542
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 3522
    :pswitch_0
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3523
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e018a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3525
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3529
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3533
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0212

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAndClearDialUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    .line 3284
    .local v0, "dialUri":Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    .line 3285
    return-object v0
.end method

.method public getAndClearFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 2490
    .local v0, "filterText":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 2491
    return-object v0
.end method

.method public getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 3645
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 3646
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3647
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 3648
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 3649
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public getCallOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2477
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.contacts.activities.DialtactsActivity"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentDialtactsPage()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 3262
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_1

    .line 3263
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3264
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 3265
    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    .line 3271
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return v1

    .line 3269
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v2, :cond_0

    .line 3270
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v1

    goto :goto_0
.end method

.method public hasMultiWindwoFeature()Z
    .locals 4

    .prologue
    .line 3672
    const/4 v2, 0x0

    .line 3674
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3675
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 3676
    const-string v3, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 3682
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 3678
    :catch_0
    move-exception v0

    .line 3679
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3241
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 3259
    :cond_0
    :goto_0
    return-void

    .line 3244
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3246
    :pswitch_0
    const-string v1, "contactListFilter"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 3248
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_0

    .line 3251
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 3252
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 3254
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0

    .line 3244
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x1

    .line 1779
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    .line 1781
    .local v0, "currentPosition":I
    :goto_0
    instance-of v1, p1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v1, :cond_2

    .line 1782
    check-cast p1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 1783
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setListener(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;)V

    .line 1784
    if-nez v0, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 1821
    :cond_0
    :goto_1
    return-void

    .line 1779
    .end local v0    # "currentPosition":I
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1787
    .restart local v0    # "currentPosition":I
    :cond_2
    instance-of v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v1, :cond_3

    .line 1788
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_0

    .line 1789
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 1790
    if-ne v0, v3, :cond_0

    .line 1791
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    .line 1792
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setLogsListActionListener(Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;)V

    goto :goto_1

    .line 1795
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_3
    instance-of v1, p1, Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_4

    .line 1796
    check-cast p1, Lcom/android/contacts/list/ContactTileListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 1797
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    .line 1799
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 1800
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setDataChangeListener(Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;)V

    .line 1801
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v2, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    goto :goto_1

    .line 1815
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_4
    instance-of v1, p1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    if-eqz v1, :cond_5

    .line 1816
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    goto :goto_1

    .line 1817
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_5
    instance-of v1, p1, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    if-eqz v1, :cond_0

    .line 1818
    check-cast p1, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2741
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 2742
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->clearDigits()V

    .line 2744
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 2745
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->backPressed()V

    .line 2749
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v0, :cond_3

    .line 2750
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2751
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iput v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    .line 2753
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2754
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 2765
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 2766
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 2767
    const-string v0, "feature_support_call_log_search"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2768
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->clearCustomSearchResult()V

    .line 2772
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_6

    .line 2774
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 2789
    :goto_1
    return-void

    .line 2756
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 2757
    const-string v0, "feature_view_by_vvm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2758
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    goto :goto_0

    .line 2762
    :cond_5
    const-string v0, "DialtactsActivity"

    const-string v1, "mCallLogFragment.mFromMissedCallNotify = false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFromMissedCallNotify:Z

    goto :goto_0

    .line 2775
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2780
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->safe_moveTaskback()V

    goto :goto_1

    .line 2782
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1633
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1635
    const/4 v0, 0x0

    .line 1638
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1641
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1643
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_a

    .line 1644
    const-string v2, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1645
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1648
    :cond_0
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 1649
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    .line 1650
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1651
    iput-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1652
    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1721
    :cond_1
    :goto_0
    const-string v2, "feature_wvga"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v2, :cond_2

    .line 1722
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setTabTextWidth()V

    .line 1724
    :cond_2
    return-void

    .line 1655
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1656
    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1657
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1658
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1659
    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 1662
    :cond_4
    const-string v2, "alwasy_tab_mode_tablet"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1663
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    goto :goto_0

    .line 1665
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_8

    .line 1666
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v2, :cond_7

    .line 1667
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1668
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1669
    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1670
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1671
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1672
    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 1675
    :cond_7
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1676
    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1677
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1678
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1679
    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 1682
    :cond_8
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v2, :cond_9

    .line 1683
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1684
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 1685
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1686
    iput-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1687
    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 1690
    :cond_9
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 1691
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1692
    iput-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1693
    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 1712
    :cond_a
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1713
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 1714
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v2, v6, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0

    .line 1717
    :cond_b
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x400

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1053
    sget-boolean v6, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG_ENG:Z

    if-eqz v6, :cond_0

    .line 1054
    sget-object v6, Lcom/android/contacts/activities/DialtactsActivity;->VERIFICATION_LOG_TAG:Ljava/lang/String;

    const-string v9, "onCreate"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1057
    const-string v6, "DialtactsActivity"

    const-string v9, "onCreate"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->checkVoipState()V

    .line 1061
    iput-object p0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    .line 1062
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 1064
    new-instance v6, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    .line 1065
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    .line 1066
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isFonblet:Z

    .line 1068
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v6, :cond_1

    .line 1069
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 1070
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v9, 0x2000

    invoke-virtual {v6, v9}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 1073
    :cond_1
    const-string v6, "feature_folder_type"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSupportFolderType:Z

    .line 1075
    const-string v6, "feature_easy_mode"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1076
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "easy_mode_switch"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_6

    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    .line 1078
    :cond_2
    const-string v6, "feature_easy_mode"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1079
    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$13;

    invoke-direct {v6, p0}, Lcom/android/contacts/activities/DialtactsActivity$13;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1089
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1090
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1091
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/contacts/activities/DialtactsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1099
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->hasMultiWindwoFeature()Z

    move-result v6

    sput-boolean v6, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    .line 1101
    const-string v6, "feature_spr"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1102
    new-instance v6, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    .line 1104
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1105
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 1106
    const-string v6, "vnd.android.cursor.dir/calls"

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1107
    .local v4, "recentCallsRequest":Z
    invoke-direct {p0, v2, v4}, Lcom/android/contacts/activities/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1108
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 1319
    :cond_5
    :goto_1
    return-void

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "recentCallsRequest":Z
    :cond_6
    move v6, v8

    .line 1076
    goto :goto_0

    .line 1112
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "recentCallsRequest":Z
    :cond_7
    const v6, 0x7f04011f

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->setContentView(I)V

    .line 1116
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v6, :cond_8

    .line 1130
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1131
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v9, 0x7f0902c4

    invoke-virtual {v6, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 1132
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 1133
    .local v5, "transaction":Landroid/app/FragmentTransaction;
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1134
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1135
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1137
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mHandler:Landroid/os/Handler;

    .line 1140
    .end local v1    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v5    # "transaction":Landroid/app/FragmentTransaction;
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;

    .line 1142
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 1143
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v6, v8}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 1144
    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$14;

    invoke-direct {v6, p0}, Lcom/android/contacts/activities/DialtactsActivity$14;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 1156
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v6, v9}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 1158
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v6, :cond_12

    .line 1159
    const v6, 0x7f090133

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    .line 1160
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    new-instance v9, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v6, v9}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setAdapter(Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;)V

    .line 1161
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;)V

    .line 1163
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1178
    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxContainerOnlyMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_14

    move v3, v7

    .line 1180
    .local v3, "isKioskPersonalMode":Z
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupDialer()V

    .line 1182
    if-nez v3, :cond_16

    .line 1184
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v6, :cond_15

    .line 1185
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupGroup()V

    .line 1189
    :goto_4
    sget-boolean v6, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-nez v6, :cond_a

    .line 1190
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFavorites()V

    .line 1191
    :cond_a
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupContacts()V

    .line 1197
    :cond_b
    :goto_5
    sget-boolean v6, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v6, :cond_c

    .line 1198
    new-instance v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v6, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 1199
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 1202
    :cond_c
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v6, :cond_1f

    .line 1204
    const-string v6, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1205
    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$CustomArrayAdapter;

    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    const v10, 0x7f040071

    invoke-direct {v6, p0, v9, v10}, Lcom/android/contacts/activities/DialtactsActivity$CustomArrayAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 1207
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e008f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1208
    if-nez v3, :cond_d

    .line 1209
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0127

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1210
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e008e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1211
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0210

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1213
    :cond_d
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v7, :cond_e

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v11, :cond_17

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v6

    if-nez v6, :cond_17

    .line 1216
    :cond_e
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    .line 1217
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1218
    iput-object v12, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1266
    :goto_6
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1269
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v6, :cond_10

    .line 1271
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 1272
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "DialtactsActivity_last_manually_selected_tab"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1274
    iget v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    const/4 v9, 0x4

    if-lt v6, v9, :cond_f

    .line 1276
    iput v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1279
    :cond_f
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 1282
    :cond_10
    const-string v6, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    if-nez p1, :cond_11

    .line 1284
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 1288
    :cond_11
    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1289
    sput-boolean v7, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    .line 1290
    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1291
    sput-boolean v7, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorSKT:Z

    goto/16 :goto_1

    .line 1166
    .end local v3    # "isKioskPersonalMode":Z
    :cond_12
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1168
    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1169
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v9, 0x7f02069f

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1172
    :cond_13
    const-string v6, "feature_chn"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1173
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v9, 0x7f030001

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_2

    :cond_14
    move v3, v8

    .line 1178
    goto/16 :goto_3

    .line 1187
    .restart local v3    # "isKioskPersonalMode":Z
    :cond_15
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupCallLog()V

    goto/16 :goto_4

    .line 1193
    :cond_16
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v6, :cond_b

    .line 1194
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupCallLog()V

    goto/16 :goto_5

    .line 1221
    :cond_17
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1222
    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v6, p0, v12}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1223
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v6, v9, v10}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto/16 :goto_6

    .line 1226
    :cond_18
    const-string v6, "alwasy_tab_mode_tablet"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1227
    :cond_19
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    .line 1228
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto/16 :goto_6

    .line 1231
    :cond_1a
    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$CustomArrayAdapter;

    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    const v10, 0x1090009

    invoke-direct {v6, p0, v9, v10}, Lcom/android/contacts/activities/DialtactsActivity$CustomArrayAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 1233
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e008f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1234
    if-nez v3, :cond_1b

    .line 1235
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0127

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1236
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e008e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1237
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0210

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1239
    :cond_1b
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_1c

    .line 1240
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1241
    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v6, p0, v12}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1242
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v6, v9, v10}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto/16 :goto_6

    .line 1244
    :cond_1c
    sget-boolean v6, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v6, :cond_1e

    .line 1245
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v6

    if-ne v6, v7, :cond_1d

    .line 1246
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1247
    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v6, p0, v12}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1248
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v6, v9, v10}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto/16 :goto_6

    .line 1250
    :cond_1d
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1251
    iput-object v12, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    goto/16 :goto_6

    .line 1254
    :cond_1e
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1255
    iput-object v12, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    goto/16 :goto_6

    .line 1261
    :cond_1f
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto/16 :goto_6

    .line 1292
    :cond_20
    const-string v6, "feature_kt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1293
    sput-boolean v7, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorKTT:Z

    goto/16 :goto_1

    .line 1294
    :cond_21
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1295
    sput-boolean v7, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2865
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2866
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2867
    .local v0, "inflater":Landroid/view/MenuInflater;
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_1

    .line 2868
    :cond_0
    const v1, 0x7f12000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2871
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2870
    :cond_1
    const v1, 0x7f12000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1550
    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1558
    :cond_0
    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    if-eqz v0, :cond_1

    .line 1559
    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->unregisterReceiver(Landroid/content/Context;)V

    .line 1561
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v0, :cond_2

    .line 1562
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 1564
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1565
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2660
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2661
    .local v1, "buildcarrier":Ljava/lang/String;
    const-string v3, "feature_folder_type"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ks023gktt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ks023gskt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ks02lteskt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ks02ltektt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2662
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 2736
    :goto_0
    return v3

    .line 2663
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v2

    .line 2664
    .local v2, "currentPage":I
    const/4 v0, 0x0

    .line 2666
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2668
    if-nez v0, :cond_1

    .line 2669
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 2671
    :cond_1
    const-string v3, "feature_folder_type"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ks023gktt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ks023gskt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ks02lteskt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ks02ltektt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2672
    :cond_2
    const/16 v3, 0x15

    if-eq p1, v3, :cond_3

    const/16 v3, 0x16

    if-ne p1, v3, :cond_4

    .line 2673
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 2676
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 2736
    :cond_5
    :goto_1
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 2678
    :pswitch_1
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 2682
    :pswitch_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2685
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2688
    :pswitch_4
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2694
    :pswitch_5
    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 2696
    :pswitch_6
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2697
    :cond_6
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2700
    :pswitch_7
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2703
    :pswitch_8
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2724
    :pswitch_9
    if-nez v2, :cond_5

    .line 2725
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2726
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput-boolean v4, v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isKeyTonePlay:Z

    .line 2727
    sput-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->noNeedToClear:Z

    .line 2728
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2676
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 2678
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2694
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3792
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuOpen:Z

    .line 3793
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 1570
    const-string v0, "DialtactsActivity"

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

    .line 1571
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->onWindowStatusChanged()V

    .line 1573
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 2380
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2382
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 2383
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 2384
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v2, :cond_0

    .line 2385
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 2387
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2412
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2413
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 2419
    :cond_1
    const-string v2, "feature_support_call_log_search"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v2, :cond_2

    .line 2420
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->clearCustomSearchResult()V

    .line 2423
    :cond_2
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v2, :cond_8

    .line 2424
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_6

    .line 2425
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v2, :cond_5

    .line 2426
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 2447
    :cond_3
    :goto_0
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2448
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2449
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupDialUri(Landroid/content/Intent;)V

    .line 2452
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 2453
    return-void

    .line 2428
    :cond_5
    const-string v2, "DialtactsActivity"

    const-string v3, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2430
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2431
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v2, :cond_7

    .line 2432
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2434
    :cond_7
    const-string v2, "DialtactsActivity"

    const-string v3, "CallLogFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2438
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 2439
    .local v1, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    if-nez v2, :cond_3

    .line 2440
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v2, :cond_9

    .line 2441
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2443
    :cond_9
    const-string v2, "DialtactsActivity"

    const-string v3, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3798
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuOpen:Z

    .line 3799
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 1826
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1827
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 1831
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DialtactsActivity_last_manually_selected_tab"

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1833
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->unregisterProviderStatusObserver()V

    .line 1836
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isFonblet:Z

    if-eqz v0, :cond_2

    .line 1837
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    if-eqz v0, :cond_2

    .line 1838
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->unregisterMotionCallManager()V

    .line 1841
    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2879
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2881
    const v10, 0x7f090506

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2882
    .local v5, "filterOptionMenuItem":Landroid/view/MenuItem;
    const v10, 0x7f090507

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2883
    .local v0, "addContactOptionMenuItem":Landroid/view/MenuItem;
    const v10, 0x7f090505

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2884
    .local v3, "callSettingsMenuItem":Landroid/view/MenuItem;
    const v10, 0x7f090504

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2885
    .local v2, "callSettingsIconMenuItem":Landroid/view/MenuItem;
    const v10, 0x7f0904bf

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2886
    .local v1, "addFavoriteItem":Landroid/view/MenuItem;
    const v10, 0x7f090508

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2888
    .local v7, "swipeToMenuItem":Landroid/view/MenuItem;
    const v10, 0x7f0904c0

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    .line 2889
    const v10, 0x7f0904c1

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    .line 2891
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v9

    .line 2893
    .local v9, "tab":Landroid/app/ActionBar$Tab;
    iget-boolean v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v10, :cond_2

    .line 2894
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2895
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2896
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2897
    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2898
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.INSERT"

    sget-object v12, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2905
    :goto_0
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2994
    :cond_0
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 2902
    :cond_1
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2903
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2910
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v10

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v10, :cond_7

    .line 2915
    :cond_3
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v10

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v10, :cond_6

    :cond_4
    const/4 v6, 0x1

    .line 2916
    .local v6, "showCallSettingsMenu":Z
    :goto_2
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2917
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2918
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2960
    :goto_3
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2961
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2963
    if-eqz v6, :cond_11

    .line 2964
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v10

    if-nez v10, :cond_10

    iget-boolean v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v10, :cond_10

    .line 2965
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2966
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2967
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2979
    :goto_4
    if-eqz v7, :cond_0

    .line 2981
    const-string v10, "feature_scroll_fragment"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 2982
    const/4 v10, 0x1

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2983
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "swipe_to_call_message"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2984
    .local v8, "swipetocallmessgae":Z
    :goto_5
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2985
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v10, :cond_5

    .line 2986
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v10, v8}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollFragment(Z)V

    .line 2988
    :cond_5
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSwipeToMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2915
    .end local v6    # "showCallSettingsMenu":Z
    .end local v8    # "swipetocallmessgae":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 2919
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    .line 2920
    const/4 v4, 0x0

    .line 2921
    .local v4, "favCount":I
    iget-boolean v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->isFonblet:Z

    if-eqz v10, :cond_9

    .line 2922
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    if-eqz v10, :cond_8

    .line 2923
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->getItemCount()I

    move-result v4

    .line 2931
    :cond_8
    :goto_6
    const/4 v6, 0x1

    .line 2932
    .restart local v6    # "showCallSettingsMenu":Z
    const/4 v10, 0x1

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2933
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mAddFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2934
    iget-object v11, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    if-lez v4, :cond_a

    const/4 v10, 0x1

    :goto_7
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2935
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    iget-object v11, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2937
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2938
    iget-object v11, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    if-lez v4, :cond_b

    const/4 v10, 0x1

    :goto_8
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2939
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "favorite_strquent_listview_state"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2940
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e03dc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2941
    if-lez v4, :cond_c

    .line 2942
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0208df

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2952
    :goto_9
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    iget-object v11, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2926
    .end local v6    # "showCallSettingsMenu":Z
    :cond_9
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v10, :cond_8

    .line 2927
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v10}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v4

    goto :goto_6

    .line 2934
    .restart local v6    # "showCallSettingsMenu":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_7

    .line 2938
    :cond_b
    const/4 v10, 0x0

    goto :goto_8

    .line 2944
    :cond_c
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0208de

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_9

    .line 2946
    :cond_d
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e03db

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2947
    if-lez v4, :cond_e

    .line 2948
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0208af

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_9

    .line 2950
    :cond_e
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0208ae

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_9

    .line 2954
    .end local v4    # "favCount":I
    .end local v6    # "showCallSettingsMenu":Z
    :cond_f
    const/4 v6, 0x1

    .line 2955
    .restart local v6    # "showCallSettingsMenu":Z
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2956
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2957
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2969
    :cond_10
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2970
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2972
    iget-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallSettingMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 2975
    :cond_11
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2976
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 2983
    :cond_12
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 2990
    :cond_13
    const/4 v10, 0x0

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 12

    .prologue
    .line 1360
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG_ENG:Z

    if-eqz v1, :cond_0

    .line 1361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mbFirstWindowFocusChanged:Z

    .line 1362
    sget-object v1, Lcom/android/contacts/activities/DialtactsActivity;->VERIFICATION_LOG_TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1366
    const/4 v11, 0x0

    .line 1368
    .local v11, "supportFolderType":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_VoiceCall_UseEccDialerInCaseOfNoInternalMemory"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1369
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getAvailableInternalMemorySize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1370
    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1373
    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1374
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 1377
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "DialtactsActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 1379
    const/4 v6, 0x0

    .line 1382
    .local v6, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 1401
    const-string v1, "clipboardEx"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    sput-object v1, Lcom/android/contacts/activities/DialtactsActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 1403
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->mTalkbackCheck:Z

    .line 1404
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume  mTalkbackCheck is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mTalkbackCheck:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v1, :cond_2

    .line 1406
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setLogsListActionListener(Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;)V

    .line 1408
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_3

    .line 1409
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    .line 1415
    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_f

    .line 1416
    const-string v1, "feature_tablet_selection_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1417
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSelectionMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1418
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1453
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1454
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1459
    .local v9, "cursor_ContactsStatus":Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 1460
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1461
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    .line 1463
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1465
    :cond_6
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_7

    .line 1466
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->checkCallLogFavoriteList()V

    .line 1469
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->registerProviderStatusObserver()V

    .line 1471
    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v1, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 1472
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    sput v1, Lcom/android/contacts/activities/DialtactsActivity;->mDisplayNameOrder:I

    .line 1474
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_9

    .line 1477
    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1478
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1481
    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    .line 1482
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1483
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1527
    :cond_9
    :goto_1
    const-string v1, "instant_lettering"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "oneline_message"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1529
    :cond_a
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->showHelpDialog(Landroid/content/Context;)V

    .line 1532
    :cond_b
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isFonblet:Z

    if-eqz v1, :cond_c

    .line 1534
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    if-eqz v1, :cond_c

    .line 1535
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1536
    .local v7, "config":I
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->setMotionCallByOrientation(IZ)V

    .line 1539
    .end local v7    # "config":I
    :cond_c
    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    if-eqz v1, :cond_d

    .line 1540
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v1, :cond_d

    .line 1541
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setdialogResultShowing(Z)V

    .line 1543
    :cond_d
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 1544
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->registerEamReceiver()V

    .line 1545
    return-void

    .line 1421
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "cursor_ContactsStatus":Landroid/database/Cursor;
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 1424
    :cond_f
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {v6}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1427
    :cond_10
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v1, :cond_11

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    if-eqz v11, :cond_15

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 1429
    :cond_12
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1436
    :cond_13
    :goto_2
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_4

    .line 1438
    const/4 v8, -0x1

    .line 1439
    .local v8, "currentPosition":I
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v1, :cond_14

    .line 1440
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v8

    .line 1442
    :cond_14
    const/4 v1, 0x1

    if-ne v8, v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v1

    if-eq v8, v1, :cond_4

    .line 1445
    const/4 v1, 0x1

    invoke-direct {p0, v8, v1}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1446
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    goto/16 :goto_0

    .line 1431
    .end local v8    # "currentPosition":I
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1432
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_13

    .line 1433
    const/4 v1, 0x0

    sput v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    goto :goto_2

    .line 1486
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "cursor_ContactsStatus":Landroid/database/Cursor;
    :cond_16
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1487
    new-instance v1, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1488
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1489
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1490
    if-eqz v6, :cond_9

    .line 1491
    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_1

    .line 1494
    :cond_17
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1495
    :cond_18
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    .line 1496
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto/16 :goto_1

    .line 1499
    :cond_19
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 1500
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1501
    new-instance v1, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1502
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1503
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1504
    if-eqz v6, :cond_9

    .line 1505
    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_1

    .line 1507
    :cond_1a
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v1, :cond_1c

    .line 1508
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 1509
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1510
    new-instance v1, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1511
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1512
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1513
    if-eqz v6, :cond_9

    .line 1514
    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_1

    .line 1516
    :cond_1b
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1517
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    goto/16 :goto_1

    .line 1520
    :cond_1c
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    goto/16 :goto_1
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 1583
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->onWindowStatusChanged()V

    .line 1585
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1323
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1325
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->checkVoipState()V

    .line 1332
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 1333
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1336
    :cond_0
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v2, :cond_5

    .line 1337
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    if-eqz v2, :cond_2

    .line 1338
    :cond_1
    const-string v2, "DialtactsActivity"

    const-string v5, "reset buggy flag state.."

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 1340
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 1343
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v2}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v0

    .line 1345
    .local v0, "currentPosition":I
    const-string v2, "DialtactsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStart(). current position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v6}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Reset all menu visibility state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    .line 1349
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    .line 1350
    if-ne v1, v0, :cond_4

    move v2, v3

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_3
    move v2, v4

    .line 1348
    goto :goto_0

    .restart local v1    # "i":I
    :cond_4
    move v2, v4

    .line 1350
    goto :goto_2

    .line 1353
    .end local v0    # "currentPosition":I
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;

    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTw_color017:I

    .line 1354
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;

    const v3, 0x7f0b006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I

    .line 1355
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 3780
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 3782
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mbFirstWindowFocusChanged:Z

    if-nez v0, :cond_0

    .line 3783
    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->VERIFICATION_LOG_TAG:Ljava/lang/String;

    const-string v1, "Executed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mbFirstWindowFocusChanged:Z

    .line 3787
    :cond_0
    return-void
.end method

.method public onWindowStatusChanged()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 3724
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v3, :cond_3

    .line 3725
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3727
    .local v0, "isMaximized":Ljava/lang/Boolean;
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_9

    .line 3729
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->WindowStatusChanged(Z)V

    .line 3730
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    if-eqz v1, :cond_1

    .line 3731
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->WindowStatusChanged(Z)V

    .line 3733
    :cond_1
    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3734
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3737
    :cond_2
    iput-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 3738
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    .line 3739
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3740
    iput-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 3741
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 3776
    .end local v0    # "isMaximized":Ljava/lang/Boolean;
    :cond_3
    :goto_0
    return-void

    .line 3744
    .restart local v0    # "isMaximized":Ljava/lang/Boolean;
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3745
    new-instance v1, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 3746
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 3747
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 3749
    :cond_5
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3750
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3751
    iput-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 3752
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3753
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 3756
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_3

    .line 3757
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-ne v1, v2, :cond_8

    .line 3758
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3759
    new-instance v1, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 3760
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 3761
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 3763
    :cond_8
    iput-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 3764
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3765
    iput-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 3766
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget v2, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 3771
    :cond_9
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v1, :cond_3

    .line 3772
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->WindowStatusChanged(Z)V

    goto/16 :goto_0
.end method

.method public onZoneChanged(I)V
    .locals 3
    .param p1, "zoneInfo"    # I

    .prologue
    .line 1577
    const-string v0, "DialtactsActivity"

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

    .line 1578
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->onWindowStatusChanged()V

    .line 1579
    return-void
.end method

.method public registerEamReceiver()V
    .locals 4

    .prologue
    .line 3930
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getMenuList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 3931
    return-void
.end method

.method public safe_moveTaskback()V
    .locals 15

    .prologue
    .line 3454
    const-string v12, "DialtactsActivity"

    const-string v13, "finish"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    const/4 v11, 0x1

    .line 3457
    .local v11, "successBack":Z
    const/4 v1, 0x0

    .line 3459
    .local v1, "count":I
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v7, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3461
    .local v7, "mCheckHomeIntent":Landroid/content/Intent;
    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3462
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 3463
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    invoke-virtual {v9, v7, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 3465
    .local v6, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_1

    .line 3466
    :cond_0
    const-string v12, "DialtactsActivity"

    const-string v13, "Launcher App is nothing"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    :cond_1
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/DialtactsActivity;->moveTaskToBack(Z)Z

    move-result v11

    .line 3471
    const-string v12, "DialtactsActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "finish successBack="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    const-string v12, "activity"

    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3474
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 3475
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v11, 0x0

    .line 3476
    if-eqz v6, :cond_4

    .line 3478
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3479
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3480
    .local v10, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v12, "DialtactsActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "runningTaskInfo.topActivity.getClassName()="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "homecheckiterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3483
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 3484
    .local v5, "launcherinfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v10, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3485
    const/4 v11, 0x1

    goto :goto_1

    .line 3488
    .end local v5    # "launcherinfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 3489
    goto :goto_0

    .line 3491
    .end local v2    # "homecheckiterator":Ljava/util/Iterator;
    .end local v4    # "iterator":Ljava/util/Iterator;
    .end local v10    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    const-string v12, "DialtactsActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "successBack after scan tasks = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    const-string v12, "DialtactsActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "count = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    const/4 v12, 0x1

    if-ne v1, v12, :cond_5

    .line 3495
    const/4 v11, 0x0

    .line 3497
    :cond_5
    if-nez v11, :cond_6

    .line 3498
    const-string v12, "DialtactsActivity"

    const-string v13, "finish successBack is false so start Launcher "

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3500
    .local v8, "mHomeIntent":Landroid/content/Intent;
    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3501
    const/high16 v12, 0x10200000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3503
    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 3505
    .end local v8    # "mHomeIntent":Landroid/content/Intent;
    :cond_6
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 3001
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_1

    .line 3002
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3003
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    .line 3013
    :goto_0
    return-void

    .line 3005
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    .line 3008
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    .line 3011
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
