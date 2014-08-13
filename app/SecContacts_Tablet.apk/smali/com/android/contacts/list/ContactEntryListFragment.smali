.class public abstract Lcom/android/contacts/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactEntryListFragment$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;",
        "Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_CODE_PICKER:I = 0x1

.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field protected static final DIRECTORY_ID_ARG_KEY:Ljava/lang/String; = "directoryId"

.field protected static final DIRECTORY_LOADER_ID:I = -0x1

.field protected static final DIRECTORY_PHONE_ID:I = 0x0

.field private static final DIRECTORY_REQUERY_MESSAGE:I = 0x2

.field private static final DIRECTORY_SEARCH_DELAY_MILLIS:I = 0x12c

.field protected static final DIRECTORY_SEARCH_DELAY_MILLIS_NAMECARD:I = 0x258

.field private static final DIRECTORY_SEARCH_MESSAGE:I = 0x1

.field public static final FAKE_FULL_LOADED:I = 0x4

.field public static final FAKE_FULL_LOADING:I = 0x3

.field public static final FAKE_LOADED:I = 0x2

.field public static final FAKE_LOADING:I = 0x1

.field public static final FAKE_NOT_LOADED:I = 0x0

.field protected static final FAKE_QUERY_LIMIT:Ljava/lang/String; = " LIMIT 20"

.field private static final INVALID_INDEX:I = -0x1

.field private static final KEY_DARK_THEME:Ljava/lang/String; = "darkTheme"

.field private static final KEY_DIRECTORY_RESULT_LIMIT:Ljava/lang/String; = "directoryResultLimit"

.field private static final KEY_DIRECTORY_SEARCH_MODE:Ljava/lang/String; = "directorySearchMode"

.field private static final KEY_FAKE_QUERY_STATUS:Ljava/lang/String; = "fakeQueryStatus"

.field private static final KEY_INCLUDE_PROFILE:Ljava/lang/String; = "includeProfile"

.field private static final KEY_LEGACY_COMPATIBILITY:Ljava/lang/String; = "legacyCompatibility"

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "liststate"

.field private static final KEY_MULTISELECTION_ENABLED:Ljava/lang/String; = "multiselectionEnabled"

.field private static final KEY_PHOTO_LOADER_ENABLED:Ljava/lang/String; = "photoLoaderEnabled"

.field private static final KEY_QUERY_STRING:Ljava/lang/String; = "queryString"

.field private static final KEY_QUICK_CONTACT_ENABLED:Ljava/lang/String; = "quickContactEnabled"

.field private static final KEY_REQUEST:Ljava/lang/String; = "request"

.field private static final KEY_SCREEN_ORIENTATION:Ljava/lang/String; = "screenorientation"

.field private static final KEY_SCROLLBAR_POSITION:Ljava/lang/String; = "scrollbarPosition"

.field private static final KEY_SEARCH_MODE:Ljava/lang/String; = "searchMode"

.field private static final KEY_SECTION_HEADER_DISPLAY_ENABLED:Ljava/lang/String; = "sectionHeaderDisplayEnabled"

.field private static final KEY_SELECTION_VISIBLE:Ljava/lang/String; = "selectionVisible"

.field private static final KEY_TW_INDEX_SCROLLBAR_POSITION:Ljava/lang/String; = "twIndexScrollbarPosition"

.field private static final KEY_VISIBLE_SCROLLBAR_ENABLED:Ljava/lang/String; = "visibleScrollbarEnabled"

.field private static final KEY_VISIBLE_TW_INDEX_SCROLLBAR_ENABLED:Ljava/lang/String; = "visibleTwIndexScrollbarEnabled"

.field private static final SECRET_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_OFF"

.field private static final SECRET_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_ON"

.field protected static final STATUS_LOADED:I = 0x2

.field protected static final STATUS_LOADING:I = 0x1

.field protected static final STATUS_NOT_LOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactEntryListFragment"

.field private static sIsDoubleTapEnabled:Z

.field protected static sIsMMSAvailable:Z

.field protected static sIsPhone:Z

.field protected static sIsTwoPaneMode:Z

.field private static sProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field protected isSearchCustomDirectory:Z

.field private isSearchFromRelationship:Z

.field protected mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mAddPrivateMode:Z

.field protected mChagingSplitRatioMode:Z

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field protected mContext:Landroid/content/Context;

.field private mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field protected mDeleteMode:Z

.field private mDetailsLoaded:Z

.field protected mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEmptyView:Lcom/android/contacts/ContactListEmptyView;

.field protected mEnabled:Z

.field protected mFakeQueryModeEnabled:Z

.field protected mFakeQueryStatus:I

.field private mForceLoad:Z

.field private mForceReverseFastScrollBarPosition:Z

.field private mFromDelete:Z

.field private mH:Landroid/os/Handler;

.field private mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

.field private mIncludeProfile:Z

.field private mIsEasyMode:Z

.field private mIsLoadCanceledOnStop:Z

.field private mIsNamecardMode:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mMultiSelectEnabled:Z

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mOnlyPhoneNumbers:Z

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mReadyForFakeQuery:Z

.field protected mRemovePrivateMode:Z

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field mScreenOrientation:I

.field private mSearchMode:Z

.field private mSecretMode:Z

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

.field private mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

.field private mTwIndexLayout:Landroid/widget/LinearLayout;

.field private mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mVerticalTwIndexScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z

.field private mVisibleTwIndexScrollbarEnabled:Z

.field private mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 224
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 232
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 237
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    .line 240
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    .line 242
    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 247
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    .line 253
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mChagingSplitRatioMode:Z

    .line 257
    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 259
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFromDelete:Z

    .line 270
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 286
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    .line 296
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    .line 298
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAddPrivateMode:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRemovePrivateMode:Z

    .line 309
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceReverseFastScrollBarPosition:Z

    .line 324
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIsNamecardMode:Z

    .line 339
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 365
    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 384
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 397
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment$H;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;Lcom/android/contacts/list/ContactEntryListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mH:Landroid/os/Handler;

    .line 413
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchFromRelationship:Z

    .line 415
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchCustomDirectory:Z

    .line 458
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1722
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$6;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 1999
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$7;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactEntryListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactEntryListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactEntryListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactEntryListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->scheduleSecretModeChanged(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactEntryListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactEntryListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIsLoadCanceledOnStop:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactEntryListFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactEntryListFragment;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactEntryListFragment;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactEntryListFragment;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactEntryListFragment;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method private configureVerticalScrollbar()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const v6, 0x7f0c00b3

    const/4 v3, 0x1

    .line 1268
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 1270
    .local v0, "hasScrollbar":Z
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v4, :cond_0

    .line 1271
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    .line 1272
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollAlwaysVisible(Z)V

    .line 1273
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalScrollbarPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollbarPosition(I)V

    .line 1275
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 1276
    const/4 v1, 0x0

    .line 1277
    .local v1, "leftPadding":I
    const/4 v2, 0x0

    .line 1278
    .local v2, "rightPadding":I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalScrollbarPosition()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 1279
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1285
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 1288
    .end local v1    # "leftPadding":I
    .end local v2    # "rightPadding":I
    :cond_0
    return-void

    .line 1268
    .end local v0    # "hasScrollbar":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1282
    .restart local v0    # "hasScrollbar":Z
    .restart local v1    # "leftPadding":I
    .restart local v2    # "rightPadding":I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1
.end method

.method protected static dismissProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2542
    sget-object v1, Lcom/android/contacts/list/ContactEntryListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 2543
    .local v0, "dialog":Landroid/app/ProgressDialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 2544
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2546
    :cond_0
    sput-object v2, Lcom/android/contacts/list/ContactEntryListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    .line 2547
    return-void

    .line 2542
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_1
    sget-object v1, Lcom/android/contacts/list/ContactEntryListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_0
.end method

.method private getCurrentScreenOrientation()I
    .locals 1

    .prologue
    .line 643
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getXpositionOfDisplayNameTextView()F
    .locals 6

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v5, 0x0

    .line 2517
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2518
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 2520
    .local v1, "xPos":F
    const/16 v2, 0x12

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    add-float/2addr v3, v2

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIsEasyMode:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    :goto_0
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/high16 v4, 0x40000000

    div-float/2addr v2, v4

    add-float v1, v3, v2

    .line 2526
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2527
    return v1

    .line 2520
    :cond_0
    const/16 v2, 0xb

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 1834
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v1, :cond_0

    .line 1836
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1838
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1841
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->clearFocusOnSoftKeyboard()V

    .line 1843
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/list/DirectoryPartition;

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    .line 963
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 964
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 966
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 967
    return-void
.end method

.method private registerSecretModeReceiver()V
    .locals 3

    .prologue
    .line 437
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 438
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 444
    return-void
.end method

.method private reloadDataDirectoryPartition(I)V
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 1153
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReloadDirectoryPartition(I)V

    .line 1154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 1155
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 1156
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    .line 1157
    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .prologue
    .line 1006
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1007
    return-void
.end method

.method private scheduleSecretModeChanged(Z)V
    .locals 5
    .param p1, "secretMode"    # Z

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 455
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mH:Landroid/os/Handler;

    const/16 v4, 0x64

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 456
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 457
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 455
    goto :goto_0
.end method

.method private screenOrientationChanged()Z
    .locals 2

    .prologue
    .line 647
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getCurrentScreenOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getCurrentScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    .line 649
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startFullQuery(Z)V
    .locals 12
    .param p1, "forceLoad"    # Z

    .prologue
    .line 2400
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const-string v9, "ContactEntryListFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startFullQuery() : forceLoad is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    iget-boolean v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    iget-boolean v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    if-nez v9, :cond_1

    sget-boolean v9, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v9, :cond_1

    :cond_0
    iget-boolean v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    if-nez v9, :cond_1

    if-nez p1, :cond_1

    iget-boolean v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAddPrivateMode:Z

    if-eqz v9, :cond_2

    .line 2408
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2409
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 2410
    iget-object v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v7

    .line 2413
    .local v7, "partitionCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 2414
    iget-object v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v9, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v9

    if-nez v9, :cond_3

    .line 2446
    .end local v4    # "i":I
    .end local v7    # "partitionCount":I
    :cond_2
    :goto_1
    return-void

    .line 2416
    .restart local v4    # "i":I
    .restart local v7    # "partitionCount":I
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v9, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    .line 2417
    .local v6, "partition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 2419
    .local v2, "directoryId":J
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-nez v9, :cond_4

    .line 2420
    const-string v9, "ContactEntryListFragment"

    const-string v10, "startFullQuery(), set full query"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v5

    .local v5, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    move-object v1, v5

    .line 2423
    check-cast v1, Landroid/content/CursorLoader;

    .line 2425
    .local v1, "cursorLoader":Landroid/content/CursorLoader;
    if-eqz v1, :cond_2

    .line 2426
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    .line 2427
    .local v8, "queryParameter":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 2429
    const-string v9, "&limit"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v8, v9, v10

    .line 2430
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2431
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2432
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 2438
    invoke-virtual {v1}, Landroid/content/CursorLoader;->onContentChanged()V

    goto :goto_1

    .line 2413
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "cursorLoader":Landroid/content/CursorLoader;
    .end local v5    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    .end local v8    # "queryParameter":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 8
    .param p1, "partitionIndex"    # I

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 936
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 937
    .local v3, "partition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v3, v5}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 938
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 939
    .local v1, "directoryId":J
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_2

    .line 940
    cmp-long v4, v1, v6

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchFromRelationship:Z

    if-nez v4, :cond_1

    .line 941
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V

    .line 951
    :goto_0
    cmp-long v4, v1, v6

    if-eqz v4, :cond_0

    .line 952
    iput-boolean v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchCustomDirectory:Z

    .line 954
    :cond_0
    return-void

    .line 943
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchFromRelationship:Z

    .line 944
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V

    goto :goto_0

    .line 947
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 948
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "directoryId"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 949
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private takeIsLoadCanceledOnStop()Z
    .locals 2

    .prologue
    .line 2581
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIsLoadCanceledOnStop:Z

    .line 2582
    .local v0, "isLoadCanceledOnStop":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIsLoadCanceledOnStop:Z

    .line 2583
    return v0
.end method

.method private unregisterSecretModeReceiver()V
    .locals 2

    .prologue
    .line 447
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    :cond_0
    return-void
.end method

.method private updateSweepActionFeasibility()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 2274
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v1, :cond_1

    .line 2321
    :cond_0
    :goto_0
    return-void

    .line 2278
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSweepActionEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2279
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 2280
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 2281
    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 2282
    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 2284
    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    .line 2285
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepRestrictionCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;)V

    .line 2286
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto :goto_0

    .line 2288
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v1, :cond_4

    .line 2289
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureSweepActionCallbackAndListener()V

    .line 2291
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 2292
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 2296
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldSweepAreaBeRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2298
    new-instance v1, Lcom/android/contacts/list/ContactEntryListFragment$10;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactEntryListFragment$10;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    .line 2314
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepRestrictionCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;)V

    .line 2316
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getXpositionOfDisplayNameTextView()F

    move-result v0

    .line 2317
    .local v0, "Xposition":F
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto :goto_0
.end method


# virtual methods
.method protected addTwIndexScroll(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v7, 0x1

    .line 2083
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v5, :cond_4

    if-eqz p1, :cond_4

    .line 2084
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v4

    .line 2085
    .local v4, "sortOrder":I
    const/4 v2, -0x1

    .line 2086
    .local v2, "index":I
    packed-switch v4, :pswitch_data_0

    .line 2094
    const-string v5, "sort_key"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2100
    :goto_0
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 2101
    const-string v5, "display_name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2104
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2105
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v5, :cond_1

    .line 2107
    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 2115
    :cond_1
    const/4 v0, 0x0

    .line 2116
    .local v0, "LangIndex":I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2118
    .local v3, "indexCharacters":[Ljava/lang/String;
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-direct {v5, p1, v2, v3, v0}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2123
    .end local v3    # "indexCharacters":[Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v5, :cond_2

    .line 2124
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 2126
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    .line 2128
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_FastScrollDepth"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 2131
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSubscrollLimit(I)V

    .line 2137
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 2138
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 2143
    :goto_4
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v5, :cond_3

    .line 2144
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2146
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setmIsFavoriteContactMode(Z)V

    .line 2147
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    new-instance v6, Lcom/android/contacts/list/ContactEntryListFragment$8;

    invoke-direct {v6, p0}, Lcom/android/contacts/list/ContactEntryListFragment$8;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;)V

    .line 2159
    .end local v0    # "LangIndex":I
    .end local v2    # "index":I
    .end local v4    # "sortOrder":I
    :cond_4
    return-void

    .line 2088
    .restart local v2    # "index":I
    .restart local v4    # "sortOrder":I
    :pswitch_0
    const-string v5, "sort_key"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2089
    goto :goto_0

    .line 2091
    :pswitch_1
    const-string v5, "sort_key_alt"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2092
    goto/16 :goto_0

    .line 2108
    :catch_0
    move-exception v1

    .line 2109
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v5, "ContactEntryListFragment"

    const-string v6, "Observer TwCursorIndexer was not registered."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2120
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "LangIndex":I
    :catch_1
    move-exception v1

    .line 2121
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    const-string v5, "ContactEntryListFragment"

    const-string v6, "IllegalStateException."

    invoke-static {v5, v6, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2134
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSubscrollLimit(I)V

    goto :goto_3

    .line 2140
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    goto :goto_4

    .line 2086
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected addTwIndexScroll_HK()V
    .locals 13

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2163
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v8, :cond_6

    .line 2164
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v8, :cond_0

    .line 2165
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 2169
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080052

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexHandleCharForContact_HK([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2173
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    .line 2174
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v8, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSubscrollLimit(I)V

    .line 2176
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 2177
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v8, v12}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 2182
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080053

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2183
    .local v3, "handleChar":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->getHeaderTitles()[Ljava/lang/String;

    move-result-object v7

    .line 2184
    .local v7, "sec":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexCounts()[I

    move-result-object v0

    .line 2185
    .local v0, "cnt":[I
    array-length v8, v3

    new-array v6, v8, [I

    .line 2187
    .local v6, "new_cnt":[I
    const/4 v2, 0x0

    .line 2189
    .local v2, "flag":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v8, v3

    if-ge v4, v8, :cond_5

    .line 2190
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v8, v7

    if-ge v5, v8, :cond_1

    .line 2191
    aget-object v8, v3, v4

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2192
    const/4 v2, 0x1

    .line 2193
    aget v8, v0, v5

    aput v8, v6, v4

    .line 2198
    :cond_1
    if-eqz v2, :cond_4

    .line 2199
    const/4 v2, 0x0

    .line 2189
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2170
    .end local v0    # "cnt":[I
    .end local v2    # "flag":Z
    .end local v3    # "handleChar":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "new_cnt":[I
    .end local v7    # "sec":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2171
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v8, "ContactEntryListFragment"

    const-string v9, "IllegalStateException."

    invoke-static {v8, v9, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2179
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v8, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    goto :goto_1

    .line 2190
    .restart local v0    # "cnt":[I
    .restart local v2    # "flag":Z
    .restart local v3    # "handleChar":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "new_cnt":[I
    .restart local v7    # "sec":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2201
    :cond_4
    aput v12, v6, v4

    goto :goto_4

    .line 2205
    .end local v5    # "j":I
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v8, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHandleCounts([I)V

    .line 2206
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v8, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setmIsFavoriteContactMode(Z)V

    .line 2207
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    new-instance v9, Lcom/android/contacts/list/ContactEntryListFragment$9;

    invoke-direct {v9, p0}, Lcom/android/contacts/list/ContactEntryListFragment$9;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;)V

    .line 2246
    .end local v0    # "cnt":[I
    .end local v2    # "flag":Z
    .end local v3    # "handleChar":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "new_cnt":[I
    .end local v7    # "sec":[Ljava/lang/String;
    :cond_6
    return-void
.end method

.method protected clearFocusOnSoftKeyboard()V
    .locals 0

    .prologue
    .line 434
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected completeRestoreInstanceState()V
    .locals 2

    .prologue
    .line 1943
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 1947
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 3

    .prologue
    .line 1751
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    .line 1773
    :goto_0
    return-void

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 1756
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 1757
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 1758
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 1759
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 1760
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 1761
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 1762
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 1763
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 1764
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    .line 1765
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 1767
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setMultiSelectEnabled(Z)V

    .line 1769
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    sget-boolean v1, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setTwoPaneModeEnabled(Z)V

    .line 1771
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setCheckBoxDirection(Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    goto :goto_1
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .prologue
    .line 1737
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 1738
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_1

    .line 1742
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 1744
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 1745
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 1748
    :cond_2
    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 0

    .prologue
    .line 680
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected configureVerticalTwIndexScrollbar()V
    .locals 11

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const v10, 0x7f0c00b3

    const/high16 v9, 0x3000000

    const/high16 v8, 0x2000000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1292
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    move v1, v4

    .line 1294
    .local v1, "hasTwIndexScrollbar":Z
    :goto_0
    const/4 v0, 0x0

    .line 1296
    .local v0, "adapterCount":I
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v6, :cond_6

    .line 1297
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    .line 1298
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollAlwaysVisible(Z)V

    .line 1300
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 1301
    sget-boolean v6, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v6, :cond_0

    instance-of v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v6, :cond_0

    .line 1302
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 1304
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v1, :cond_8

    move v6, v4

    :goto_1
    invoke-virtual {v7, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1305
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v6, :cond_1

    .line 1306
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 1308
    :cond_1
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 1316
    :goto_2
    const/4 v2, 0x0

    .line 1317
    .local v2, "leftPadding":I
    const/4 v3, 0x0

    .line 1318
    .local v3, "rightPadding":I
    if-eq v1, v4, :cond_2

    sget-boolean v6, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v6, :cond_4

    .line 1319
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v6

    if-ne v6, v4, :cond_b

    .line 1320
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v6, :cond_3

    .line 1321
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 1322
    iput v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 1326
    :cond_3
    sget-boolean v5, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1327
    const/4 v2, 0x0

    .line 1354
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v5, v2, v6, v3, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 1357
    instance-of v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v5, :cond_5

    instance-of v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v5, :cond_e

    .line 1359
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 1363
    :goto_4
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 1364
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    div-int/lit8 v5, v3, 0x3

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 1365
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->setCheckBoxDirection()V

    .line 1367
    .end local v2    # "leftPadding":I
    .end local v3    # "rightPadding":I
    :cond_6
    return-void

    .end local v0    # "adapterCount":I
    .end local v1    # "hasTwIndexScrollbar":Z
    :cond_7
    move v1, v5

    .line 1292
    goto/16 :goto_0

    .restart local v0    # "adapterCount":I
    .restart local v1    # "hasTwIndexScrollbar":Z
    :cond_8
    move v6, v5

    .line 1304
    goto :goto_1

    .line 1313
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideTwIndexScrollbar()V

    .line 1314
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->unRegisterTwindexDataSetObserver()V

    goto :goto_2

    .line 1329
    .restart local v2    # "leftPadding":I
    .restart local v3    # "rightPadding":I
    :cond_a
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1331
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_3

    .line 1335
    :cond_b
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v5, :cond_c

    .line 1336
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 1337
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 1340
    :cond_c
    sget-boolean v5, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1345
    const/4 v3, 0x0

    goto :goto_3

    .line 1347
    :cond_d
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1349
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto/16 :goto_3

    .line 1361
    :cond_e
    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    goto :goto_4
.end method

.method public createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 843
    new-instance v0, Lcom/sec/android/app/contacts/ContactCursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/ContactCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 8

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x0

    .line 850
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v0

    .line 854
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$5;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/list/ContactEntryListFragment$5;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected finish()V
    .locals 0

    .prologue
    .line 1186
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 1518
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContactsRequest()Lcom/android/contacts/list/ContactsRequest;
    .locals 1

    .prologue
    .line 735
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 566
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;
    .locals 1

    .prologue
    .line 1559
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    return-object v0
.end method

.method public getDelete()Z
    .locals 1

    .prologue
    .line 1502
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFromDelete:Z

    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 1494
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getEmptyView()Lcom/android/contacts/ContactListEmptyView;
    .locals 1

    .prologue
    .line 609
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEmptyView:Lcom/android/contacts/ContactListEmptyView;

    return-object v0
.end method

.method public getFakeQueryStatus()I
    .locals 1

    .prologue
    .line 2378
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    return v0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    .prologue
    .line 605
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 591
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public getOnlyPhones()Z
    .locals 1

    .prologue
    .line 1540
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mOnlyPhoneNumbers:Z

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1456
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 1529
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;
    .locals 1

    .prologue
    .line 695
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    return-object v0
.end method

.method public getTwIndexLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 2576
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getVerticalScrollbarPosition()I
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 1225
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceReverseFastScrollBarPosition:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_2

    .line 1227
    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 1230
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getVerticalTwIndexScrollbarPosition()I
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 1258
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1259
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    .line 1262
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 600
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected hasIccCard()Z
    .locals 2

    .prologue
    .line 1974
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v0

    :goto_0
    return v0

    .line 1975
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1978
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1980
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideTwIndexScrollbar()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v4, 0x0

    .line 2009
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v1, :cond_2

    .line 2010
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 2011
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2014
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2015
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 2019
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2021
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 2024
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v1, :cond_2

    .line 2025
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v2, 0x7f0901e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2026
    .local v0, "searchView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2027
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2032
    .end local v0    # "searchView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isEasyMode()Z
    .locals 1

    .prologue
    .line 2512
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIsEasyMode:Z

    return v0
.end method

.method public isFakeQueryModeEnabled()Z
    .locals 1

    .prologue
    .line 2373
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 1510
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 1117
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return v0

    .line 1121
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 1129
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiSelectEnabled()Z
    .locals 1

    .prologue
    .line 1461
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    return v0
.end method

.method protected isOnlineSearchModeChanged()Z
    .locals 2

    .prologue
    .line 1601
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1602
    instance-of v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    .line 1603
    instance-of v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectorySearchMode(I)V

    .line 1605
    const/4 v0, 0x1

    .line 1609
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .prologue
    .line 1382
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public isSearchFromRelationship(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1470
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchFromRelationship:Z

    .line 1471
    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 1452
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 1201
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 1390
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    .prologue
    .line 2269
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method protected isSyncActive()Z
    .locals 9

    .prologue
    .line 1957
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 1958
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 1959
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v3

    .line 1960
    .local v3, "contentService":Landroid/content/IContentService;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 1962
    .local v0, "account":Landroid/accounts/Account;
    :try_start_0
    const-string v7, "com.android.contacts"

    invoke-interface {v3, v0, v7}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 1963
    const/4 v7, 0x1

    .line 1970
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v3    # "contentService":Landroid/content/IContentService;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :goto_1
    return v7

    .line 1965
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v2    # "arr$":[Landroid/accounts/Account;
    .restart local v3    # "contentService":Landroid/content/IContentService;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :catch_0
    move-exception v4

    .line 1966
    .local v4, "e":Landroid/os/RemoteException;
    const-string v7, "ContactEntryListFragment"

    const-string v8, "Could not get the sync status"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1970
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v3    # "contentService":Landroid/content/IContentService;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 1212
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method public isVisibleTwIndexScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 1245
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 5
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/list/DirectoryPartition;

    .prologue
    .line 987
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 988
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 989
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v1

    .line 996
    .local v1, "cursorLoader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v1}, Landroid/content/Loader;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 997
    const-string v2, "ContactEntryListFragment"

    const-string v3, "the query is canceled, we request query again after delay"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/16 v2, 0x12c

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->reLoadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;I)V

    .line 1000
    :cond_0
    return-void
.end method

.method protected loadPreferences()Z
    .locals 3

    .prologue
    .line 1563
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 1565
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isOnlineSearchModeChanged()Z

    move-result v0

    .line 1567
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    .line 1569
    const/4 v0, 0x1

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1573
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSortOrder(I)V

    .line 1574
    const/4 v0, 0x1

    .line 1577
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDelete()Z

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1578
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setDelete(Z)V

    .line 1579
    const/4 v0, 0x1

    .line 1582
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getOnlyPhones()Z

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlyPhones()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1583
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlyPhones()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setOnlyPhones(Z)V

    .line 1584
    const/4 v0, 0x1

    .line 1597
    :cond_3
    return v0
.end method

.method public loadSimInfo()V
    .locals 8

    .prologue
    .line 2466
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 2467
    .local v3, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    .line 2468
    .local v6, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIconChanged()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2469
    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimInfo()[Z

    .line 2487
    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v4

    .line 2488
    .local v4, "iconRes":I
    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getSim1AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 2489
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v0, :cond_0

    .line 2490
    invoke-virtual {v3, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 2491
    .local v2, "accountType":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v2, v4}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    .line 2494
    .end local v2    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_0
    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v5

    .line 2495
    .local v5, "iconRes2":I
    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getSim2AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    .line 2496
    .local v1, "account2":Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v1, :cond_1

    .line 2497
    invoke-virtual {v3, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 2498
    .restart local v2    # "accountType":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v2, v5}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    .line 2501
    .end local v2    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2502
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimIconChanged(Z)V

    .line 2505
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1    # "account2":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v4    # "iconRes":I
    .end local v5    # "iconRes2":I
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 472
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 474
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 477
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    .line 478
    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-nez v0, :cond_2

    :goto_1
    sput-boolean v2, Lcom/android/contacts/list/ContactEntryListFragment;->sIsDoubleTapEnabled:Z

    .line 480
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsPhone:Z

    .line 481
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsMMSAvailable:Z

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 484
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 485
    return-void

    :cond_1
    move v0, v1

    .line 477
    goto :goto_0

    :cond_2
    move v2, v1

    .line 478
    goto :goto_1
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 1935
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 1936
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->finish()V

    .line 1937
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 656
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 657
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 659
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFromDelete:Z

    .line 674
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const-string v4, "ContactEntryListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateLoader(id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 791
    new-instance v3, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 792
    .local v3, "loader":Lcom/android/contacts/list/DirectoryListLoader;
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    .line 838
    .end local v3    # "loader":Lcom/android/contacts/list/DirectoryListLoader;
    :cond_0
    :goto_0
    return-object v3

    .line 798
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 799
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v3

    .line 804
    .local v3, "loader":Lcom/sec/android/app/contacts/ContactCursorLoader;
    :goto_1
    new-instance v4, Lcom/android/contacts/list/ContactEntryListFragment$4;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactEntryListFragment$4;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/ContactCursorLoader;->registerOnLoadCanceledListener(Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;)V

    .line 813
    if-eqz p2, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 815
    .local v1, "directoryId":J
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 818
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_0

    .line 819
    iget v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    if-nez v4, :cond_0

    .line 820
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 821
    const-string v4, "ContactEntryListFragment"

    const-string v5, "onCreateLoader(), set fake mode"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 825
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/ContactCursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 826
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/ContactCursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 827
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v4, "limit"

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 829
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/ContactCursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 801
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "directoryId":J
    .end local v3    # "loader":Lcom/sec/android/app/contacts/ContactCursorLoader;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v3

    .restart local v3    # "loader":Lcom/sec/android/app/contacts/ContactCursorLoader;
    goto :goto_1

    .line 813
    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v4, 0x1

    .line 1614
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 1616
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 1618
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    .line 1619
    .local v1, "searchMode":Z
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 1620
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 1621
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 1622
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1637
    instance-of v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_0

    .line 1638
    const-string v2, "feature_scroll_fragment"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1639
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1640
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "swipe_to_call_message"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSweepActionEnabled(Z)V

    .line 1646
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1647
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFocusableInTouchMode(Z)V

    .line 1648
    instance-of v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v2, :cond_1

    .line 1649
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestFocus()Z

    .line 1652
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v2

    .line 1642
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSweepActionEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSweepActionEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1656
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 1659
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v7, 0x102000a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 1660
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v4, :cond_0

    .line 1661
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1665
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v7, 0x1020004

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1666
    .local v2, "emptyView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1667
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    .line 1668
    instance-of v4, v2, Lcom/android/contacts/ContactListEmptyView;

    if-eqz v4, :cond_1

    .line 1669
    check-cast v2, Lcom/android/contacts/ContactListEmptyView;

    .end local v2    # "emptyView":Landroid/view/View;
    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEmptyView:Lcom/android/contacts/ContactListEmptyView;

    .line 1673
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 1674
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1675
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1676
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1678
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1679
    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    .line 1685
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setDividerHeight(I)V

    .line 1688
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSaveEnabled(Z)V

    .line 1690
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    if-eqz v4, :cond_3

    .line 1691
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1695
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v7, 0x7f0901ab

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    .line 1696
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v7, 0x7f0901ac

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iput-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 1698
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1699
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    .line 1704
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "KDDI"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1707
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1709
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1710
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1711
    .local v0, "ClassName":Ljava/lang/String;
    const-string v4, "com.sec.android.app.contacts.activities.SIMContactSelectionActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1713
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1714
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setVisibility(I)V

    .line 1715
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v5

    iget-object v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v6, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 1719
    .end local v0    # "ClassName":Ljava/lang/String;
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 1720
    return-void

    :cond_7
    move v4, v6

    .line 1679
    goto/16 :goto_0

    .line 1700
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1701
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 1920
    const-string v0, "Contact"

    const-string v1, "SUJEONG_onDetach.(entrylistfragment)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 1924
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 1925
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 1927
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1928
    return-void
.end method

.method public onDetailsLoaded()V
    .locals 1

    .prologue
    .line 2382
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    .line 2383
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery()V

    .line 2384
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1850
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1851
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 1853
    :cond_0
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 423
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1804
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 1807
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    if-ge p3, v2, :cond_1

    .line 1808
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 1831
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1810
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, p3, v2

    .line 1814
    .local v0, "adjPosition":I
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isGalSearchShowMore(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1815
    const v2, 0x7f0e01a0

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->showProgress(I)V

    .line 1816
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 1817
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 1818
    .local v1, "partitionIndex":I
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadDataDirectoryPartition(I)V

    goto :goto_0

    .line 1819
    .end local v1    # "partitionIndex":I
    :cond_2
    if-ltz v0, :cond_0

    .line 1820
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(IJ)V

    .line 1821
    instance-of v2, p2, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListItemView;->isCheckBoxVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1822
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1823
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/list/DefaultContactListAdapter;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1825
    :cond_3
    check-cast p2, Lcom/android/contacts/list/ContactListItemView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactListItemView;->toogleCheckBoxAndSendAccessibilityEvent()V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 9
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1011
    const-string v2, "ContactEntryListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadFinished(id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-static {}, Lcom/android/contacts/list/ContactEntryListFragment;->dismissProgressDialog()V

    .line 1019
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 1020
    .local v1, "loaderId":I
    if-ne v1, v5, :cond_2

    .line 1021
    iput v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 1022
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 1025
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 1028
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAddPrivateMode:Z

    if-nez v2, :cond_4

    .line 1029
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    .line 1030
    .local v0, "directorySearchMode":I
    if-eqz v0, :cond_0

    .line 1031
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    .line 1032
    iput v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 1033
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1035
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 1039
    .end local v0    # "directorySearchMode":I
    :cond_4
    iput v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 1040
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1043
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mReadyForFakeQuery:Z

    if-eqz v2, :cond_5

    .line 1044
    iput-boolean v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mReadyForFakeQuery:Z

    .line 1045
    invoke-virtual {p1}, Landroid/content/Loader;->onContentChanged()V

    goto :goto_0

    .line 1047
    :cond_5
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_0

    .line 1048
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    if-ne v2, v7, :cond_0

    .line 1049
    iput v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 1050
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 128
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1060
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    instance-of v0, p1, Lcom/sec/android/app/contacts/ContactCursorLoader;

    if-eqz v0, :cond_0

    .line 1061
    check-cast p1, Lcom/sec/android/app/contacts/ContactCursorLoader;

    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/ContactCursorLoader;->unregisterOnLoadCanceledListener()V

    .line 1063
    :cond_0
    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 1067
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->setProfileHeader()V

    .line 1079
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->showCount(ILandroid/database/Cursor;)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    .line 1086
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_4

    .line 1109
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadSimInfo()V

    goto :goto_0

    .line 1092
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1095
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1098
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->addTwIndexScroll_HK()V

    .line 1102
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->showTwIndexScrollbar()V

    goto :goto_1

    .line 1100
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->addTwIndexScroll(Landroid/database/Cursor;)V

    goto :goto_2

    .line 1104
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideTwIndexScrollbar()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1872
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1873
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 1875
    sget-boolean v1, Lcom/android/contacts/list/ContactEntryListFragment;->sIsDoubleTapEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v1, :cond_0

    .line 1876
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->unregisterDoubleTapMotion()V

    .line 1879
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v1, :cond_1

    .line 1881
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1885
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1912
    :cond_1
    instance-of v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v1, :cond_2

    .line 1913
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 1915
    :cond_2
    return-void

    .line 1882
    :catch_0
    move-exception v0

    .line 1883
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "ContactEntryListFragment"

    const-string v2, "Observer TwCursorIndexer was not registered."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 1996
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v4, 0x1

    .line 489
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 492
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 494
    .local v1, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v2, "huge_font"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHugeFontEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    sget-boolean v2, Lcom/android/contacts/list/ContactEntryListFragment;->sIsDoubleTapEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v2, :cond_0

    .line 506
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_double_tap"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->unregisterDoubleTapMotion()V

    .line 509
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->registerDoubleTapMotion()V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 555
    :cond_0
    :goto_1
    return-void

    .line 497
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHugeFontEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "ContactEntryListFragment"

    const-string v3, "ClassCastException occurs."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 512
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ContactEntryListFragment"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 614
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 615
    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 616
    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 617
    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 618
    const-string v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 619
    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 620
    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 621
    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    const-string v0, "multiselectionEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 624
    const-string v0, "visibleTwIndexScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    const-string v0, "twIndexScrollbarPosition"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 628
    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 629
    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    const-string v0, "request"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 632
    const-string v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 634
    const-string v0, "fakeQueryStatus"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    const-string v0, "screenorientation"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 638
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 640
    :cond_0
    return-void
.end method

.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 2
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1781
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1784
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 2
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1789
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIsNamecardMode:Z

    if-nez v0, :cond_2

    .line 1790
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 1796
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_1

    .line 1797
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 1799
    :cond_1
    return-void

    .line 1791
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 747
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 749
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 751
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->screenOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->takeIsLoadCanceledOnStop()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 753
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 754
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 756
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 757
    return-void

    :cond_2
    move v0, v1

    .line 751
    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1136
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1137
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 1138
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 1139
    invoke-static {}, Lcom/android/contacts/list/ContactEntryListFragment;->dismissProgressDialog()V

    .line 1140
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1860
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-ne p1, v0, :cond_0

    .line 1861
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1867
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1863
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    goto :goto_0

    .line 1861
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected prepareEmptyView()V
    .locals 0

    .prologue
    .line 1164
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected reLoadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;I)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/list/DirectoryPartition;
    .param p3, "delayTime"    # I

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x2

    .line 977
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 978
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 980
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 981
    return-void
.end method

.method protected reloadData()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 1143
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 1144
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReload()V

    .line 1146
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 1147
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 1148
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 1149
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 699
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    if-nez p1, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getCurrentScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    .line 728
    :goto_0
    return-void

    .line 704
    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 705
    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 706
    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 707
    const-string v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 708
    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 709
    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 710
    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 711
    const-string v0, "multiselectionEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    .line 713
    const-string v0, "visibleTwIndexScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    .line 715
    const-string v0, "twIndexScrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    .line 716
    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 717
    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 718
    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 719
    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 720
    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 721
    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 722
    const-string v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 724
    const-string v0, "fakeQueryStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 725
    const-string v0, "screenorientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    .line 727
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    goto/16 :goto_0
.end method

.method public setChangingSplitRatioMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 2450
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mChagingSplitRatioMode:Z

    .line 2451
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setChangingSplitRatioMode(Z)V

    .line 2452
    return-void
.end method

.method public setCheckBoxDirection()V
    .locals 3

    .prologue
    .line 1370
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v1, :cond_0

    .line 1371
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalScrollbarPosition()I

    move-result v0

    .line 1372
    .local v0, "lPosition":I
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setCheckBoxDirection(Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;)V

    .line 1375
    .end local v0    # "lPosition":I
    :cond_0
    return-void

    .line 1372
    .restart local v0    # "lPosition":I
    :cond_1
    sget-object v1, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    goto :goto_0
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .param p1, "displayOrder"    # I

    .prologue
    .line 1522
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 1523
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 1526
    :cond_0
    return-void
.end method

.method public setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/list/ContactsRequest;

    .prologue
    .line 742
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 743
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 561
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 562
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 563
    return-void
.end method

.method public setContextMenuAdapter(Lcom/android/contacts/widget/ContextMenuAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/contacts/widget/ContextMenuAdapter;

    .prologue
    .line 1552
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    .line 1553
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1556
    :cond_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1987
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 1988
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 1990
    :cond_0
    return-void
.end method

.method public setDelete(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 1506
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFromDelete:Z

    .line 1507
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 1548
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 1549
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1498
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 1499
    return-void
.end method

.method public setEasyMode(Z)V
    .locals 0
    .param p1, "IsEasyMode"    # Z

    .prologue
    .line 2508
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIsEasyMode:Z

    .line 2509
    return-void
.end method

.method protected setEmptyText(I)V
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 1950
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getEmptyView()Lcom/android/contacts/ContactListEmptyView;

    move-result-object v1

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Lcom/android/contacts/ContactListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1951
    .local v0, "empty":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1952
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1953
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 570
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 571
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 572
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 573
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setFakeQueryModeEnabled(Z)V
    .locals 14
    .param p1, "enabled"    # Z

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v13, 0x0

    .line 2325
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    .line 2326
    iget-boolean v11, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v11, :cond_4

    .line 2327
    iput v13, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 2331
    iget-object v11, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v11

    if-nez v11, :cond_4

    .line 2332
    iget-object v11, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v9

    .line 2335
    .local v9, "partitionCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_4

    .line 2336
    iget-object v11, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v11, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/list/DirectoryPartition;

    .line 2337
    .local v8, "partition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v8}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 2339
    .local v2, "directoryId":J
    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-nez v11, :cond_3

    .line 2340
    iget-object v11, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    check-cast v11, Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v11}, Lcom/android/contacts/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v11

    add-int/lit8 v4, v11, 0x14

    .line 2342
    .local v4, "firstVisible":I
    iget-object v11, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v11

    add-int/lit8 v10, v11, 0x14

    .line 2343
    .local v10, "selectedItem":I
    const/16 v7, 0x14

    .line 2344
    .local v7, "max":I
    if-le v4, v7, :cond_0

    .line 2345
    move v7, v4

    .line 2346
    :cond_0
    if-le v10, v7, :cond_1

    .line 2347
    move v7, v10

    .line 2349
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v6

    .local v6, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    move-object v1, v6

    .line 2350
    check-cast v1, Landroid/content/CursorLoader;

    .line 2352
    .local v1, "cursorLoader":Landroid/content/CursorLoader;
    if-eqz v1, :cond_2

    .line 2353
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2354
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v11, "limit"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2356
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 2363
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 2364
    iput-boolean v13, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    .line 2335
    .end local v1    # "cursorLoader":Landroid/content/CursorLoader;
    .end local v4    # "firstVisible":I
    .end local v6    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    .end local v7    # "max":I
    .end local v10    # "selectedItem":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2369
    .end local v2    # "directoryId":J
    .end local v5    # "i":I
    .end local v8    # "partition":Lcom/android/contacts/list/DirectoryPartition;
    .end local v9    # "partitionCount":I
    :cond_4
    return-void
.end method

.method protected setForceReverseFastScrollBarPositionEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2456
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceReverseFastScrollBarPosition:Z

    .line 2457
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1402
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 1403
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 1406
    :cond_0
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1514
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 1515
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;

    .prologue
    .line 586
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 587
    return-void
.end method

.method public setMultiSelectEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1465
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    .line 1466
    return-void
.end method

.method public setNamecardMode(Z)V
    .locals 0
    .param p1, "isNamecardMode"    # Z

    .prologue
    .line 2587
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIsNamecardMode:Z

    .line 2588
    return-void
.end method

.method public setOnlyPhones(Z)V
    .locals 0
    .param p1, "onlyPhones"    # Z

    .prologue
    .line 1544
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mOnlyPhoneNumbers:Z

    .line 1545
    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1377
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 1378
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 1379
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 1178
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 1179
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .line 1475
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    const/4 p1, 0x0

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1479
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 1481
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 1484
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 1486
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 1491
    :cond_1
    return-void

    .line 1481
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1398
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 1399
    return-void
.end method

.method public setReadyForFakeQuery(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2461
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setFakeQueryModeEnabled(Z)V

    .line 2462
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mReadyForFakeQuery:Z

    .line 2463
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1409
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v1, p1, :cond_3

    .line 1412
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 1413
    .local v0, "mPrevSearchMode":Z
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 1414
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 1416
    if-nez p1, :cond_0

    .line 1417
    iput v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 1418
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1421
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v1, :cond_2

    .line 1422
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 1423
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 1425
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 1426
    if-nez p1, :cond_1

    .line 1430
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->removeDirectoriesAfterDefault()V

    .line 1432
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v3, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 1442
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v1, :cond_3

    .line 1444
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1445
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    .line 1449
    .end local v0    # "mPrevSearchMode":Z
    :cond_3
    return-void

    .restart local v0    # "mPrevSearchMode":Z
    :cond_4
    move v1, v3

    .line 1414
    goto :goto_0

    :cond_5
    move v2, v3

    .line 1445
    goto :goto_1
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1189
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1190
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 1191
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 1194
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 1196
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    .line 1198
    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1394
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 1395
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .param p1, "sortOrder"    # I

    .prologue
    .line 1533
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    .line 1534
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 1537
    :cond_0
    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V
    .locals 0
    .param p1, "sweepActionBarCallBack"    # Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .prologue
    .line 685
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 686
    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2250
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsPhone:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsMMSAvailable:Z

    if-eqz v0, :cond_1

    .line 2251
    :cond_0
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    .line 2255
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->updateSweepActionFeasibility()V

    .line 2265
    return-void

    .line 2253
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    goto :goto_0
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .param p1, "sweepActionListener"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .prologue
    .line 690
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 691
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1216
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 1217
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 1218
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 1219
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->setCheckBoxDirection()V

    .line 1221
    :cond_0
    return-void
.end method

.method public setVerticalTwIndexScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1250
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 1251
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    .line 1252
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    .line 1254
    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1205
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1206
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 1207
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 1209
    :cond_0
    return-void
.end method

.method public setVisibleTwIndexScrollbarEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1237
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1238
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    .line 1239
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    .line 1241
    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 1171
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public showProgress(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 2534
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/contacts/list/ContactEntryListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    .line 2536
    return-void
.end method

.method public showTwIndexScrollbar()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v5, 0x0

    .line 2050
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v2, :cond_3

    .line 2051
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 2052
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2054
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    instance-of v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_1

    .line 2057
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setVisibility(I)V

    .line 2060
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 2062
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2064
    const/4 v0, 0x0

    .line 2065
    .local v0, "leftPadding":I
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2067
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 2070
    .end local v0    # "leftPadding":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v2, :cond_3

    .line 2071
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2072
    .local v1, "searchView":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 2073
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0109

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2079
    .end local v1    # "searchView":Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected startFullQuery()V
    .locals 1

    .prologue
    .line 2388
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    instance-of v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_1

    .line 2391
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery(Z)V

    .line 2396
    :goto_0
    return-void

    .line 2394
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery(Z)V

    goto :goto_0
.end method

.method protected startLoading()V
    .locals 6

    .prologue
    .line 760
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v4, :cond_0

    .line 784
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 766
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    .line 767
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 768
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 769
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 770
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .line 771
    .local v0, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 772
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v4, :cond_2

    .line 773
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    .line 767
    .end local v0    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 777
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    .line 783
    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    goto :goto_0
.end method

.method public unRegisterTwindexDataSetObserver()V
    .locals 3

    .prologue
    .line 2036
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v1, :cond_0

    .line 2037
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v1, :cond_0

    .line 2039
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 2046
    :cond_0
    return-void

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "ContactEntryListFragment"

    const-string v2, "Observer TwCursorIndexer was not registered."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
