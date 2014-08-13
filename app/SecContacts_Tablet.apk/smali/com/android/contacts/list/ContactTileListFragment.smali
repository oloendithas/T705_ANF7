.class public Lcom/android/contacts/list/ContactTileListFragment;
.super Landroid/app/Fragment;
.source "ContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileListFragment$11;,
        Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;,
        Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;,
        Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;,
        Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;,
        Lcom/android/contacts/list/ContactTileListFragment$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final EXTRA_KEY_SELECTED_FAVORITE:Ljava/lang/String; = "selectedfavorite"

.field private static final KEY_ACTION_MODE:Ljava/lang/String; = "actionMode"

.field private static final KEY_DELETE_ONLY_MODE:Ljava/lang/String; = "isDeleteOnlyMode"

.field private static final KEY_IS_PROGRESS_SHOWING:Ljava/lang/String; = "isShowing"

.field private static final KEY_SCREEN_ORIENTATION:Ljava/lang/String; = "screenorientation"

.field private static final KEY_SELECTED_CONTACTS:Ljava/lang/String; = "selectedContacts"

.field private static LOADER_CONTACTS:I = 0x0

.field private static final MODE_PRINT_NAMECARD:I = 0x2

.field private static final MODE_SEND_CONTACT_INFO:I = 0x1

.field private static final SHARE_VIA_INDIVIDUAL_MAX_COUNT:I = 0xfa

.field private static final SHARE_VIA_MULTIPLE_MAX_COUNT:I = 0xbb8

.field private static final TAG:Ljava/lang/String;

.field private static final VCARD:Ljava/lang/String; = "vcard"

.field public static callPressed:Z

.field private static mActionMode:Landroid/view/ActionMode;

.field private static mContactUri:Landroid/net/Uri;

.field private static mProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static oldDataCount:I


# instance fields
.field private empty_layout:Landroid/widget/LinearLayout;

.field private hasPermanentMenuKey:Z

.field private mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

.field private mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

.field private mChagingSplitRatioMode:Z

.field private mCheckStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnCount:I

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mContactTileView:Lcom/android/contacts/list/ContactTileView;

.field private mContext:Landroid/content/Context;

.field private mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

.field private mDeleteOnlyMode:Z

.field private mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

.field private mEmptyViewContainer:Landroid/widget/LinearLayout;

.field private mFirstFavoriteUri:Landroid/net/Uri;

.field mHandler:Landroid/os/Handler;

.field private mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

.field private mIsProgressShowing:Z

.field private mIsSelectionMode:Z

.field private mIsVoLTEEnabled:Z

.field private mListLayout:Landroid/view/View;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mPositionChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

.field private mRejectNumber:Ljava/lang/String;

.field private mRestoreActionMode:Z

.field private mScreenOrientation:I

.field private mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

.field private mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedFavoriteUri:Landroid/net/Uri;

.field mSelectionVisible:Z

.field private mSharePopupMenu:Landroid/widget/ListPopupWindow;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

.field private mTWJoinListView:Z

.field private mTopIndex:I

.field private mTopOffset:I

.field private mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

.field private mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const-class v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    sput v0, Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I

    .line 226
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/ContactTileListFragment;->callPressed:Z

    .line 244
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/list/ContactTileListFragment;->oldDataCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 169
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mChagingSplitRatioMode:Z

    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mHandler:Landroid/os/Handler;

    .line 280
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsVoLTEEnabled:Z

    .line 640
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$4;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 788
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$5;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    .line 2077
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/list/ContactTileListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/ContactTileListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/contacts/list/ContactTileListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactTileListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTopIndex:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->createLauncherShortcutWithContact(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/contacts/list/ContactTileListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/contacts/list/ContactTileListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/contacts/list/ContactTileListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2700()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2802(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 155
    sput-object p0, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/android/contacts/list/ContactTileListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTopOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mPositionChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 155
    sget v0, Lcom/android/contacts/list/ContactTileListFragment;->oldDataCount:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 155
    sput p0, Lcom/android/contacts/list/ContactTileListFragment;->oldDataCount:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addActionBarMargin(Z)V
    .locals 4
    .param p1, "addMargin"    # Z

    .prologue
    .line 972
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 973
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v3, 0x7f0901c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 974
    .local v0, "mainLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 976
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    .line 977
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 984
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    .end local v0    # "mainLayout":Landroid/widget/FrameLayout;
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void

    .line 981
    .restart local v0    # "mainLayout":Landroid/widget/FrameLayout;
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private cleanupResouces()V
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 1199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    .line 1200
    return-void
.end method

.method private configureCustomActionBarAtBottom()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 943
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 944
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v5, 0x7f0901ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 945
    .local v1, "divider":Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v5, 0x7f0901cb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 946
    .local v0, "bottomActionBar":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 947
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v5, 0x7f0901cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 950
    .local v3, "searchButton":Landroid/view/View;
    new-instance v4, Lcom/android/contacts/list/ContactTileListFragment$7;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactTileListFragment$7;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    const v4, 0x7f0901cd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 959
    .local v2, "menuButton":Landroid/view/View;
    new-instance v4, Lcom/android/contacts/list/ContactTileListFragment$8;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactTileListFragment$8;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    .end local v0    # "bottomActionBar":Landroid/view/View;
    .end local v1    # "divider":Landroid/view/View;
    .end local v2    # "menuButton":Landroid/view/View;
    .end local v3    # "searchButton":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 891
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 892
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 893
    .local v0, "menu":Landroid/view/Menu;
    const/high16 v2, 0x7f120000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 894
    new-instance v2, Lcom/android/contacts/list/ContactTileListFragment$6;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/list/ContactTileListFragment$6;-><init>(Lcom/android/contacts/list/ContactTileListFragment;Landroid/widget/PopupMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 901
    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 902
    return-object v1
.end method

.method private copyToDialingScreen(Landroid/net/Uri;)V
    .locals 8
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1686
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v4

    .line 1687
    .local v4, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1689
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 1690
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0e0234

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    .line 1698
    :goto_0
    return-void

    .line 1694
    :cond_0
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    const-string v3, "tel"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1695
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v0, "withSpecialChar"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1696
    invoke-virtual {p0, v6}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private createLauncherShortcutWithContact(Landroid/net/Uri;)V
    .locals 5
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1738
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1740
    .local v1, "parentActivity":Landroid/app/Activity;
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    new-instance v2, Lcom/android/contacts/list/ContactTileListFragment$9;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/list/ContactTileListFragment$9;-><init>(Lcom/android/contacts/list/ContactTileListFragment;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 1753
    .local v0, "builder":Lcom/android/contacts/list/ShortcutIntentBuilder;
    sget-object v2, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===> ShortcutWithContact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    .line 1755
    return-void
.end method

.method private deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x0

    .line 2188
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2189
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2190
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2191
    .local v0, "contactFrequentDeleteUri":Landroid/net/Uri;
    invoke-virtual {p1, v0, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2193
    .end local v0    # "contactFrequentDeleteUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2202
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 2203
    .local v0, "dialog":Landroid/app/ProgressDialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 2205
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    :cond_0
    :goto_1
    sput-object v2, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    .line 2212
    return-void

    .line 2202
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_1
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_0

    .line 2207
    .restart local v0    # "dialog":Landroid/app/ProgressDialog;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getCurrentScreenOrientation()I
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getEmptyStateText()Ljava/lang/String;
    .locals 7

    .prologue
    .line 740
    sget-object v4, Lcom/android/contacts/list/ContactTileListFragment$11;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 760
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized DisplayType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 744
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .local v2, "noFavoriteString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "noFavorite":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v3, "optionMenuHelp":Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 749
    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    .end local v1    # "noFavorite":Ljava/lang/CharSequence;
    .end local v2    # "noFavoriteString":Ljava/lang/StringBuilder;
    .end local v3    # "optionMenuHelp":Ljava/lang/CharSequence;
    .local v0, "emptyText":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 757
    .end local v0    # "emptyText":Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f0e0075

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactTileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 758
    .restart local v0    # "emptyText":Ljava/lang/String;
    goto :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    .line 2195
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "usagefeedback_delete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 11
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 1702
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    .local v8, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    const-string v0, "data2"

    aput-object v0, v2, v1

    .line 1706
    .local v2, "projection":[Ljava/lang/String;
    const-string v9, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1708
    .local v9, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 1712
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1715
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1716
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1719
    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1721
    .local v7, "phoneNum":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    .end local v7    # "phoneNum":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 1725
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1728
    :cond_2
    return-object v8
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 13

    .prologue
    const/4 v10, 0x1

    .line 1806
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1807
    .local v7, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, -0x1

    .line 1808
    .local v2, "pos":I
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v8, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 1809
    .local v0, "contactsPreferences":Lcom/android/contacts/preference/ContactsPreferences;
    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v3

    .line 1812
    .local v3, "sendType":I
    if-ne v3, v10, :cond_2

    .line 1813
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1814
    const/16 v8, 0xfa

    if-le v1, v8, :cond_1

    .line 1822
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v4, "shareIntent":Landroid/content/Intent;
    const-string v8, "text/x-vcard"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    const-string v8, "vcard"

    const-string v9, "vcard"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1848
    :goto_1
    const-string v8, "android.intent.extra.TITLE"

    const v9, 0x7f0e0229

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1849
    return-object v4

    .line 1817
    .end local v4    # "shareIntent":Landroid/content/Intent;
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v8, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v9, v8}, Lcom/android/contacts/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v2

    .line 1818
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v9, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getLookupKey(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1827
    .end local v1    # "i":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1829
    .local v6, "uriListBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 1830
    const/16 v8, 0xbb8

    if-le v1, v8, :cond_4

    .line 1838
    :cond_3
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1840
    .local v5, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1841
    .restart local v4    # "shareIntent":Landroid/content/Intent;
    const-string v8, "text/x-vcard"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1842
    new-instance v8, Landroid/content/ClipData;

    const-string v9, "dummy"

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "text/x-vcard"

    aput-object v12, v10, v11

    new-instance v11, Landroid/content/ClipData$Item;

    const-string v12, "dummy"

    invoke-direct {v11, v12}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v8, v9, v10, v11}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1845
    const-string v8, "vcard"

    const-string v9, "vcard"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1846
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1833
    .end local v4    # "shareIntent":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v8, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v9, v8}, Lcom/android/contacts/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v2

    .line 1834
    iget-object v8, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v8, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getLookupKey(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1829
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 2199
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getXpositionOfDisplayNameTextView()F
    .locals 5

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1114
    .local v1, "photowidth":F
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0197

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1116
    .local v0, "leftMargin":F
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0198

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 1118
    .local v2, "textGap":F
    add-float v3, v1, v0

    const/high16 v4, 0x40000000

    div-float v4, v2, v4

    add-float/2addr v3, v4

    return v3
.end method

.method private isBlackListContact(J)Z
    .locals 7
    .param p1, "contactId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1611
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->queryBlackList()Ljava/util/HashMap;

    move-result-object v3

    .line 1612
    .local v3, "rejectCallHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v2

    .line 1614
    .local v2, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1615
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1616
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1617
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_2

    :cond_0
    move v4, v5

    .line 1626
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :goto_1
    return v4

    :cond_1
    move v4, v5

    .line 1623
    goto :goto_1

    .line 1614
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 1626
    goto :goto_1
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1173
    if-eqz p1, :cond_0

    .line 1174
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    :cond_0
    :goto_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 1184
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 1185
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1192
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    :goto_1
    return-void

    .line 1177
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1189
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1148
    if-eqz p1, :cond_1

    .line 1152
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 1154
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1155
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1157
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1158
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1161
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "index":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :catch_0
    move-exception v5

    .line 1165
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->nullViewDrawable(Landroid/view/View;)V

    .line 1167
    :cond_1
    return-void
.end method

.method private queryBlackList()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1630
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1631
    .local v7, "rejectCallHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 1632
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    const-string v0, "reject_checked"

    aput-object v0, v2, v11

    .line 1635
    .local v2, "projection":[Ljava/lang/String;
    const-string v10, "reject_match = 0"

    .line 1637
    .local v10, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reject_match = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1639
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1640
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_1

    .line 1641
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1655
    :cond_0
    :goto_0
    return-object v7

    .line 1645
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1647
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1648
    .local v9, "rejectNum":Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1649
    .local v8, "rejectCheck":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1652
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private screenOrientationChanged()Z
    .locals 2

    .prologue
    .line 475
    iget v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getCurrentScreenOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getCurrentScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    .line 477
    const/4 v0, 0x1

    .line 479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 907
    const v1, 0x7f0904a2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 908
    const v1, 0x7f0904a0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 909
    const v1, 0x7f0904a1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 910
    const v1, 0x7f0904c6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 911
    const v1, 0x7f0904ad

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 914
    const v1, 0x7f0904ae

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 916
    const v1, 0x7f0904c7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 917
    const v1, 0x7f0904b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 918
    const v1, 0x7f0904b3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 919
    const v1, 0x7f0904b4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 920
    const v1, 0x7f0904c8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 921
    const v1, 0x7f0904b9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 922
    const v1, 0x7f0904b1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 923
    const v1, 0x7f0904bb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 924
    const v1, 0x7f0904bc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 925
    const v1, 0x7f0904bd

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 926
    const v1, 0x7f0904be

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 927
    const v1, 0x7f0904a4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 928
    const v1, 0x7f0904a6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 929
    const v1, 0x7f0904b7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 930
    const v1, 0x7f0904b8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 932
    const v1, 0x7f0904b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 933
    .local v0, "contactCounterMenu":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 934
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 936
    :cond_0
    const v1, 0x7f0904bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 937
    const v1, 0x7f0904c0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 938
    const v1, 0x7f0904b6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 939
    return-void
.end method

.method private updateSweepActionFeasibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1079
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v1, :cond_1

    .line 1106
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->isSweepActionEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1084
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 1085
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 1086
    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 1087
    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 1089
    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    .line 1090
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepRestrictionCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;)V

    .line 1091
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto :goto_0

    .line 1093
    :cond_2
    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 1094
    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 1096
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->configureSweepActionCallbackAndListener()V

    .line 1098
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 1099
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 1100
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldSweepAreaBeRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1102
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getXpositionOfDisplayNameTextView()F

    move-result v0

    .line 1103
    .local v0, "Xposition":F
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto :goto_0
.end method


# virtual methods
.method public IsSelectionMode()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    return v0
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    .prologue
    .line 1140
    new-instance v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V

    .line 1141
    new-instance v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;Lcom/android/contacts/list/DefaultContactListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 1143
    return-void
.end method

.method public enableQuickContact(Z)V
    .locals 1
    .param p1, "enableQuickContact"    # Z

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->enableQuickContact(Z)V

    .line 638
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 847
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 848
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 850
    :cond_0
    return-void
.end method

.method public getFirstFavoriteUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    if-nez v0, :cond_0

    .line 779
    const/4 v0, -0x1

    .line 781
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectFavoriteUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    return-object v0
.end method

.method protected inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "layoutResourceId"    # I

    .prologue
    const v8, 0x7f090091

    const v7, 0x7f09008d

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 348
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    if-nez v2, :cond_0

    .line 349
    invoke-virtual {p1, p4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v3, 0x7f0901c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    .line 353
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v3, 0x7f0901c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 354
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 362
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 373
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsCanFocus(Z)V

    .line 376
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    if-eqz p3, :cond_4

    .line 379
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v2, :cond_4

    .line 380
    const-string v2, "selectedfavorite"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 381
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectedUri(Landroid/net/Uri;)V

    .line 382
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 386
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->hasPermanentMenuKey:Z

    if-nez v2, :cond_6

    .line 387
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 389
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->configureCustomActionBarAtBottom()V

    .line 392
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v2, :cond_b

    .line 393
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v2

    if-nez v2, :cond_a

    .line 394
    invoke-direct {p0, v6}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    .line 405
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 406
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 407
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0126

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 410
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 411
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 412
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 414
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 415
    .local v0, "margin":I
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 416
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    if-eqz v2, :cond_c

    .line 417
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 427
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .end local v0    # "margin":I
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 430
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    return-object v2

    .line 367
    :cond_8
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    .line 368
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    :cond_9
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 397
    :cond_a
    invoke-direct {p0, v5}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    goto/16 :goto_1

    .line 400
    :cond_b
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 401
    invoke-direct {p0, v6}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    goto/16 :goto_1

    .line 422
    .restart local v0    # "margin":I
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_c
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v0, v2, v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public initStreListView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 998
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-boolean v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactTileAdapter;->setViewType(Z)V

    .line 999
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled()V

    .line 1001
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 1003
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 1004
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 1006
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1007
    .local v0, "margin":I
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1008
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    if-eqz v2, :cond_1

    .line 1009
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1016
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    .end local v0    # "margin":I
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 1021
    return-void

    .line 1011
    .restart local v0    # "margin":I
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v0, v2, v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public isContactWritable(Ljava/lang/String;)Z
    .locals 10
    .param p1, "contactLink"    # Ljava/lang/String;

    .prologue
    .line 1494
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 1495
    .local v1, "accountTypeManager":Lcom/android/contacts/model/AccountTypeManager;
    move-object v6, p1

    .line 1496
    .local v6, "linkColumnString":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .local v2, "accountTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .local v4, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6, v2, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1500
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1501
    .local v7, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 1502
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1503
    .local v0, "accountType":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1504
    .local v3, "dataSet":Ljava/lang/String;
    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v8

    .line 1505
    .local v8, "type":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v8}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1506
    const/4 v9, 0x1

    .line 1509
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v8    # "type":Lcom/android/contacts/model/AccountType;
    :goto_1
    return v9

    .line 1501
    .restart local v0    # "accountType":Ljava/lang/String;
    .restart local v3    # "dataSet":Ljava/lang/String;
    .restart local v8    # "type":Lcom/android/contacts/model/AccountType;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1509
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v8    # "type":Lcom/android/contacts/model/AccountType;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    .prologue
    .line 1074
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 256
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    .line 261
    new-instance v1, Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    iget v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/contacts/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 263
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 264
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->hasPermanentMenuKey:Z

    .line 266
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    new-instance v2, Lcom/android/contacts/list/ContactTileListFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/ContactTileListFragment$1;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setOnItemCheckedStateChangedListener(Lcom/android/contacts/list/ContactTileAdapter$onItemCheckedStateChangedListener;)V

    .line 277
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 568
    sget-object v7, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConfigurationChanged getActivity() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mAdapter : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", this = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mPositionChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

    if-eqz v7, :cond_2

    .line 575
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    .line 576
    .local v1, "index":I
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 577
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_5

    const/4 v4, 0x0

    .line 578
    .local v4, "offset":I
    :goto_1
    iput v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTopIndex:I

    .line 579
    iput v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTopOffset:I

    .line 580
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 581
    .local v0, "config":I
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/contacts/list/ContactTileListFragment$3;

    invoke-direct {v8, p0, v0}, Lcom/android/contacts/list/ContactTileListFragment$3;-><init>(Lcom/android/contacts/list/ContactTileListFragment;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    .end local v0    # "config":I
    .end local v1    # "index":I
    .end local v4    # "offset":I
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 590
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v7, :cond_3

    .line 591
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getOrientation()I

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->hasPermanentMenuKey:Z

    if-nez v7, :cond_6

    .line 592
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    .line 597
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 598
    .local v5, "res":Landroid/content/res/Resources;
    const v7, 0x7f0d0007

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    .line 599
    iget v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->setColumnCount(I)V

    .line 607
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v7, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 610
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v8, 0x7f090091

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v8, 0x7f09008d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 613
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v8, 0x7f0901c7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 614
    .local v3, "mNoLogs":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 615
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 616
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "mNoLogs":Landroid/widget/TextView;
    :goto_4
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 577
    .restart local v1    # "index":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    goto/16 :goto_1

    .line 595
    .end local v1    # "index":I
    .end local v6    # "v":Landroid/view/View;
    :cond_6
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->addActionBarMargin(Z)V

    goto :goto_2

    .line 602
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 603
    .restart local v5    # "res":Landroid/content/res/Resources;
    const v7, 0x7f0d0007

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    .line 604
    iget v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->setColumnCount(I)V

    goto/16 :goto_3

    .line 619
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_8
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v8, 0x7f09008d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListLayout:Landroid/view/View;

    const v8, 0x7f090091

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    goto :goto_4
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    move v8, v9

    .line 1607
    :cond_0
    :goto_0
    return v8

    .line 1518
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1521
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1522
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->copyToDialingScreen(Landroid/net/Uri;)V

    goto :goto_0

    .line 1525
    .end local v0    # "contactUri":Landroid/net/Uri;
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1529
    :sswitch_3
    const-string v7, "PHONE_WHITE"

    const-string v10, "DEFAULT"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1531
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v10, "theme"

    const/4 v11, 0x2

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1534
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1535
    :catch_0
    move-exception v1

    .line 1536
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f0e010f

    invoke-static {v7, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1538
    sget-object v7, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No activity found for intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1543
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1544
    .restart local v0    # "contactUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "CONTACT_URI"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1546
    const-string v7, "mode"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1547
    const-string v7, "direct_launch"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1548
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1551
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1554
    .restart local v0    # "contactUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1556
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/contacts/list/ContactTileListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 1557
    .local v6, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->getInstance()Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v7, v9, v6}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1559
    .end local v6    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v10, "isBlackListContact"

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1561
    .local v4, "isBlackListContact":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-nez v4, :cond_4

    move v7, v8

    :goto_1
    invoke-static {v10, v0, v7}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .line 1563
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->shouldShowAddToRejectListTips(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1564
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-nez v4, :cond_3

    move v9, v8

    :cond_3
    invoke-static {v7, v10, v0, v9}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    :cond_4
    move v7, v9

    .line 1561
    goto :goto_1

    .line 1570
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v4    # "isBlackListContact":Z
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1574
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1577
    :sswitch_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1581
    :sswitch_9
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1582
    :catch_1
    move-exception v2

    .line 1583
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f0e0229

    invoke-static {v7, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1596
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    :sswitch_a
    sget-object v7, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mContactTileView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    sget-object v7, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "===> mContactUri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/contacts/list/ContactTileListFragment;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    sget-object v7, Lcom/android/contacts/list/ContactTileListFragment;->mContactUri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 1599
    sget-object v7, Lcom/android/contacts/list/ContactTileListFragment;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0, v7}, Lcom/android/contacts/list/ContactTileListFragment;->createLauncherShortcutWithContact(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1603
    :sswitch_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v10, "phone_number"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1604
    .local v5, "number":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v9}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1516
    :sswitch_data_0
    .sparse-switch
        0x7f0904e7 -> :sswitch_4
        0x7f0904f3 -> :sswitch_b
        0x7f09050e -> :sswitch_0
        0x7f09050f -> :sswitch_2
        0x7f090510 -> :sswitch_6
        0x7f090511 -> :sswitch_7
        0x7f090512 -> :sswitch_9
        0x7f090513 -> :sswitch_a
        0x7f090514 -> :sswitch_3
        0x7f090515 -> :sswitch_1
        0x7f090516 -> :sswitch_5
        0x7f090517 -> :sswitch_8
        0x7f090518 -> :sswitch_6
        0x7f090519 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 286
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    const-string v1, "<<<<<<<<<<<<<<<<<<onCreate>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-nez p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getCurrentScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    .line 292
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->cleanupResouces()V

    .line 296
    return-void

    .line 290
    :cond_0
    const-string v0, "screenorientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 38
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1204
    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1205
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v13, p3

    .line 1207
    check-cast v13, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1208
    .local v13, "info":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    if-eqz v13, :cond_0

    .line 1210
    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v26, v0

    .line 1211
    .local v26, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/list/ContactTileAdapter;->getStaredCount()I

    move-result v32

    .line 1212
    .local v32, "starredCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6

    move/from16 v28, v32

    .line 1213
    .local v28, "rowStarredCount":I
    :goto_1
    const/16 v17, 0x0

    .line 1215
    .local v17, "isFreqContact":Z
    if-lez v26, :cond_0

    if-eqz v32, :cond_2

    add-int/lit8 v34, v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v34

    if-eq v0, v1, :cond_0

    .line 1218
    :cond_2
    if-eqz v32, :cond_3

    if-eqz v32, :cond_4

    add-int/lit8 v34, v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v34

    if-le v0, v1, :cond_4

    .line 1219
    :cond_3
    const/16 v17, 0x1

    .line 1221
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/list/ContactTileView;->getVisibility()I

    move-result v34

    if-eqz v34, :cond_8

    .line 1222
    :cond_5
    sget-object v34, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    const-string v35, "Cannot find the selected item"

    invoke-static/range {v34 .. v35}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1212
    .end local v17    # "isFreqContact":Z
    .end local v28    # "rowStarredCount":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    move/from16 v34, v0

    div-int v35, v32, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    move/from16 v34, v0

    rem-int v34, v32, v34

    if-nez v34, :cond_7

    const/16 v34, 0x0

    :goto_2
    add-int v28, v35, v34

    goto :goto_1

    :cond_7
    const/16 v34, 0x1

    goto :goto_2

    .line 1226
    .restart local v17    # "isFreqContact":Z
    .restart local v28    # "rowStarredCount":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v12

    .line 1227
    .local v12, "inflater":Landroid/view/MenuInflater;
    const v34, 0x7f120014

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v9

    .line 1230
    .local v9, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/list/ContactTileView;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 1231
    .local v10, "displayName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lcom/android/contacts/list/ContactTileView;->getPhoneNumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v24

    .line 1232
    .local v24, "phoneNumber":Ljava/lang/String;
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1233
    .local v7, "contactId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v19

    .line 1234
    .local v19, "isPhone":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v20

    .line 1236
    .local v20, "isSMSAvailable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v7, v8}, Lcom/android/contacts/list/ContactTileAdapter;->getAccountName(J)Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, "accountName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v18

    .line 1239
    .local v18, "isKnoxMode":Z
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1240
    sput-object v9, Lcom/android/contacts/list/ContactTileListFragment;->mContactUri:Landroid/net/Uri;

    .line 1245
    if-eqz v24, :cond_11

    if-eqz v19, :cond_11

    .line 1246
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    const v35, 0x7f0e0038

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v10, v36, v37

    invoke-virtual/range {v34 .. v36}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1247
    .local v5, "callName":Ljava/lang/String;
    const v34, 0x7f09050e

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1249
    new-instance v4, Landroid/content/Intent;

    const-string v34, "android.intent.action.CALL_PRIVILEGED"

    const-string v35, "tel"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1251
    .local v4, "callIntent":Landroid/content/Intent;
    const/high16 v34, 0x10000000

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1252
    const-string v34, "feature_skt"

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 1253
    const-string v34, "call_from_sec"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1255
    :cond_9
    const v34, 0x7f09050e

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1256
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_Common_EnableVIPMode"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 1259
    const v34, 0x7f090516

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1260
    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.VIEW"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1261
    .local v33, "viewContactIntent":Landroid/content/Intent;
    const v34, 0x7f090517

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x1

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1300
    .end local v4    # "callIntent":Landroid/content/Intent;
    .end local v5    # "callName":Ljava/lang/String;
    .end local v33    # "viewContactIntent":Landroid/content/Intent;
    :goto_3
    if-eqz v20, :cond_12

    if-eqz v24, :cond_12

    .line 1301
    new-instance v23, Landroid/content/Intent;

    const-string v34, "android.intent.action.SENDTO"

    const-string v35, "smsto"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1304
    .local v23, "messageIntent":Landroid/content/Intent;
    if-nez v18, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 1306
    const-string v34, "com.android.mms"

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    :cond_a
    const v34, 0x7f09050f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1311
    new-instance v30, Landroid/content/Intent;

    const-string v34, "android.intent.action.SEND"

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v30, "sendNumberIntent":Landroid/content/Intent;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1314
    .local v14, "infoBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1315
    const/16 v34, 0xa

    move/from16 v0, v34

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1316
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1319
    const-string v34, "android.intent.action.VIEW"

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    const-string v34, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    const-string v34, "sms_body"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    .end local v14    # "infoBuffer":Ljava/lang/StringBuffer;
    .end local v23    # "messageIntent":Landroid/content/Intent;
    .end local v30    # "sendNumberIntent":Landroid/content/Intent;
    :goto_4
    if-eqz v24, :cond_14

    if-eqz v19, :cond_14

    const-string v34, "instant_lettering"

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 1356
    const-string v34, "feature_skt"

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 1357
    const v34, 0x7f0904f3

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x1

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1359
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 1360
    .local v15, "instanceLetteringIntent":Landroid/content/Intent;
    const-string v34, "phone_number"

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    const v34, 0x7f0904f3

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-interface {v0, v15}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1381
    .end local v15    # "instanceLetteringIntent":Landroid/content/Intent;
    :goto_5
    const-string v34, "primary.sim.account_name"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_16

    const-string v34, "primary.sim2.account_name"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_16

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v11

    .line 1386
    .local v11, "favoriteIntent":Landroid/content/Intent;
    if-nez v17, :cond_15

    .line 1395
    const v34, 0x7f090510

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1396
    const v34, 0x7f090511

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1397
    const v34, 0x7f090518

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1398
    const v34, 0x7f090519

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1422
    .end local v11    # "favoriteIntent":Landroid/content/Intent;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/list/ContactTileView;->getContactLink()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->isContactWritable(Ljava/lang/String;)Z

    move-result v22

    .line 1423
    .local v22, "isWritable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/list/ContactTileView;->isUserProfile()Z

    move-result v21

    .line 1438
    .local v21, "isUserProfile":Z
    if-eqz v22, :cond_17

    if-nez v21, :cond_17

    .line 1439
    sget-object v34, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/list/ContactTileView;->getLookupKey()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1441
    .local v31, "shareUri":Landroid/net/Uri;
    new-instance v29, Landroid/content/Intent;

    const-string v34, "android.intent.action.SEND"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1442
    .local v29, "sendNamecardintent":Landroid/content/Intent;
    const-string v34, "text/x-vcard"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    const-string v34, "android.intent.extra.STREAM"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1445
    const-string v34, "useLookupUri"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1446
    const-string v34, "contactUri"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const v35, 0x7f0e0229

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v6

    .line 1450
    .local v6, "choosesendNamecardIntent":Landroid/content/Intent;
    const v34, 0x7f090512

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1470
    .end local v6    # "choosesendNamecardIntent":Landroid/content/Intent;
    .end local v29    # "sendNamecardintent":Landroid/content/Intent;
    .end local v31    # "shareUri":Landroid/net/Uri;
    :goto_7
    const v34, 0x7f090513

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 1471
    .local v25, "placeToHome":Landroid/view/MenuItem;
    if-eqz v25, :cond_b

    .line 1472
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 1474
    const v34, 0x7f0e0237

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1477
    :cond_b
    if-nez v18, :cond_18

    .line 1478
    const v34, 0x7f090513

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x1

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1263
    .end local v21    # "isUserProfile":Z
    .end local v22    # "isWritable":Z
    .end local v25    # "placeToHome":Landroid/view/MenuItem;
    .restart local v4    # "callIntent":Landroid/content/Intent;
    .restart local v5    # "callName":Ljava/lang/String;
    :cond_c
    const-string v34, "feature_chn_duos"

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 1264
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v34

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->isBlackListContact(J)Z

    move-result v16

    .line 1265
    .local v16, "isBlackListContact":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_e

    .line 1267
    const v34, 0x7f090516

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const v35, 0x7f0e03a6

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1271
    :cond_d
    :goto_8
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 1272
    .local v27, "rejectIntent":Landroid/content/Intent;
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1273
    const-string v34, "isBlackListContact"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1274
    const v34, 0x7f090516

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v35

    if-eqz v19, :cond_f

    const-string v34, "primary.sim.account_name"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_f

    const/16 v34, 0x1

    :goto_9
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1276
    const v34, 0x7f090517

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1268
    .end local v27    # "rejectIntent":Landroid/content/Intent;
    :cond_e
    if-eqz v16, :cond_d

    .line 1269
    const v34, 0x7f090516

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const v35, 0x7f0e0302

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_8

    .line 1274
    .restart local v27    # "rejectIntent":Landroid/content/Intent;
    :cond_f
    const/16 v34, 0x0

    goto :goto_9

    .line 1290
    .end local v16    # "isBlackListContact":Z
    .end local v27    # "rejectIntent":Landroid/content/Intent;
    :cond_10
    const v34, 0x7f090516

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1291
    const v34, 0x7f090517

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1294
    .end local v4    # "callIntent":Landroid/content/Intent;
    .end local v5    # "callName":Ljava/lang/String;
    :cond_11
    const v34, 0x7f09050e

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1295
    const v34, 0x7f090516

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1296
    const v34, 0x7f090517

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1323
    :cond_12
    const v34, 0x7f09050f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1363
    :cond_13
    const v34, 0x7f0904f3

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 1366
    :cond_14
    const v34, 0x7f0904f3

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 1407
    .restart local v11    # "favoriteIntent":Landroid/content/Intent;
    :cond_15
    const v34, 0x7f090511

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1408
    const v34, 0x7f090510

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1409
    const v34, 0x7f090518

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1410
    const v34, 0x7f090519

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1414
    .end local v11    # "favoriteIntent":Landroid/content/Intent;
    :cond_16
    const v34, 0x7f090510

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1415
    const v34, 0x7f090511

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1416
    const v34, 0x7f090518

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1417
    const v34, 0x7f090519

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1452
    .restart local v21    # "isUserProfile":Z
    .restart local v22    # "isWritable":Z
    :cond_17
    const v34, 0x7f090512

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1480
    .restart local v25    # "placeToHome":Landroid/view/MenuItem;
    :cond_18
    const v34, 0x7f090513

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->startActionMode()V

    .line 309
    :cond_0
    const v0, 0x7f040076

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/contacts/list/ContactTileListFragment;->inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 343
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->cleanupResouces()V

    .line 344
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 319
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 322
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 323
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_1

    .line 327
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    if-eqz v0, :cond_2

    .line 330
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 333
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 336
    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 338
    :cond_4
    return-void
.end method

.method public onItemChosen(IILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "which"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 1660
    const/4 v0, 0x0

    .line 1662
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1677
    :goto_0
    return-void

    .line 1666
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1669
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1670
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "withSpecialChar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1671
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelectorCancelled()V
    .locals 0

    .prologue
    .line 1682
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 545
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 562
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 500
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 525
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/ContactTileListFragment;->callPressed:Z

    .line 526
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 541
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 436
    const-string v0, "screenorientation"

    iget v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mScreenOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v0, :cond_0

    .line 438
    const-string v0, "selectedfavorite"

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 439
    :cond_0
    const-string v0, "actionMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_1

    .line 441
    const-string v0, "selectedContacts"

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 443
    const-string v0, "isDeleteOnlyMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->getCheckStates()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    .line 445
    const-string v0, "checkStates"

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 447
    :cond_1
    return-void
.end method

.method public onSecretModeChanged()V
    .locals 4

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1803
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 483
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 485
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->screenOrientationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget v2, Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 491
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 492
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    .line 493
    iget v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setColumnCount(I)V

    .line 494
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "favorite_strquent_listview_state"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    .line 495
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 496
    return-void

    .line 488
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget v2, Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1767
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========= onVisibilityChanged =========, visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    if-eqz v0, :cond_0

    .line 1769
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSweepActionBarCallBack.setListStatus() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setListDrawStop(Z)V

    .line 1772
    :cond_0
    return-void

    .line 1770
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFavorites()V
    .locals 23

    .prologue
    .line 2102
    const/16 v9, 0xfa

    .line 2105
    .local v9, "MAX_OPERATION_COUNT":I
    new-instance v20, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2106
    .local v20, "values":Landroid/content/ContentValues;
    const-string v4, "starred"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2108
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 2109
    .local v19, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v4

    const/4 v4, 0x1

    const-string v7, "contact_id"

    aput-object v7, v5, v4

    .line 2112
    .local v5, "ID_PROJECTION":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 2114
    .local v11, "context":Landroid/content/Context;
    if-nez v11, :cond_1

    .line 2184
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2119
    .local v3, "cr":Landroid/content/ContentResolver;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    .local v18, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v6, " _id in (Select data_id from view_data_usage_stat where times_used>0 )"

    .line 2128
    .local v6, "selection":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2129
    .local v13, "dataIdCount":I
    const-wide/16 v16, 0x0

    .line 2133
    .local v16, "iterator":J
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2136
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 2137
    :cond_2
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2139
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2140
    add-int/lit8 v13, v13, 0x1

    .line 2142
    :cond_3
    const/16 v4, 0xfa

    if-ne v13, v4, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 2143
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V

    .line 2144
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2145
    const/4 v13, 0x0

    goto :goto_1

    .line 2148
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2152
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 2153
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V

    .line 2156
    :cond_6
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_8

    .line 2157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/list/ContactTileListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2159
    .local v10, "contactfavoriteUri":Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2161
    const-wide/16 v7, 0x1

    add-long v16, v16, v7

    .line 2162
    const-wide/16 v7, 0x3c

    rem-long v7, v16, v7

    const-wide/16 v21, 0x0

    cmp-long v4, v7, v21

    if-nez v4, :cond_7

    .line 2164
    :try_start_0
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2170
    :goto_3
    const-wide/16 v16, 0x0

    .line 2171
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 2156
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2165
    :catch_0
    move-exception v14

    .line 2166
    .local v14, "e":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 2167
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 2168
    .local v14, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_3

    .line 2175
    .end local v10    # "contactfavoriteUri":Landroid/net/Uri;
    .end local v14    # "e":Landroid/content/OperationApplicationException;
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2177
    :try_start_1
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 2178
    :catch_2
    move-exception v14

    .line 2179
    .local v14, "e":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2180
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v14

    .line 2181
    .local v14, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 450
    if-nez p1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string v1, "actionMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    .line 454
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    if-eqz v1, :cond_0

    .line 455
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 456
    .local v0, "dialog":Landroid/app/ProgressDialog;
    :goto_1
    const-string v1, "isShowing"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z

    .line 457
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 458
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    .line 459
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z

    goto :goto_0

    .line 455
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_2
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_1

    .line 461
    .restart local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_3
    const-string v1, "selectedContacts"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    .line 463
    const-string v1, "checkStates"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    .line 464
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setCheckStates(Ljava/util/ArrayList;)V

    .line 465
    const-string v1, "isDeleteOnlyMode"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    .line 466
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z

    goto :goto_0
.end method

.method public selectFirstUri()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 874
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectedUri(Landroid/net/Uri;)V

    .line 875
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 877
    :cond_0
    return-void
.end method

.method public setChangingSplitRatioMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mChagingSplitRatioMode:Z

    if-eq v0, p1, :cond_1

    .line 1027
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mChagingSplitRatioMode:Z

    .line 1028
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mChagingSplitRatioMode:Z

    if-eqz v0, :cond_0

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->setChangingSplitRatioMode(Z)V

    .line 1034
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 1036
    :cond_1
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "columnCount"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->setColumnCount(I)V

    .line 629
    return-void
.end method

.method public setDataChangeListener(Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    .line 775
    return-void
.end method

.method public setDeleteOnlyMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 2214
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    .line 2215
    return-void
.end method

.method public setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V
    .locals 2
    .param p1, "displayType"    # Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .line 633
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 634
    return-void
.end method

.method public setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 767
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 1759
    iput p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTopIndex:I

    .line 1760
    iput p2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTopOffset:I

    .line 1761
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    check-cast v0, Lcom/android/contacts/widget/AutoScrollListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/contacts/widget/AutoScrollListView;->requestPositionToScreen(IIZ)V

    .line 1763
    :cond_0
    return-void
.end method

.method public setPositionChangeListener(Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mPositionChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

    .line 771
    return-void
.end method

.method public setSelectedFavoriteUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 880
    if-eqz p1, :cond_0

    .line 881
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 882
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 883
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectedUri(Landroid/net/Uri;)V

    .line 884
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 886
    :cond_0
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 853
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    .line 854
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectionVisible(Z)V

    .line 857
    :cond_0
    return-void
.end method

.method public setStreListViewState(Z)V
    .locals 1
    .param p1, "bListViewState"    # Z

    .prologue
    .line 989
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    .line 990
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 991
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->selectFirstUri()V

    .line 995
    :cond_0
    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V
    .locals 0
    .param p1, "sweepActionBarCallBack"    # Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 1125
    return-void
.end method

.method public setSweepActionEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1055
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    if-eqz v0, :cond_3

    .line 1056
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    .line 1070
    :goto_0
    return-void

    .line 1061
    :cond_1
    const-string v0, "feature_scroll_fragment"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "swipe_to_call_message"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    goto :goto_0

    .line 1064
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    goto :goto_0

    .line 1068
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    goto :goto_0
.end method

.method public setSweepActionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1041
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionEnabled:Z

    .line 1042
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->updateSweepActionFeasibility()V

    .line 1052
    return-void
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .param p1, "sweepActionListener"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 1130
    return-void
.end method

.method public showShareViaList()V
    .locals 6

    .prologue
    .line 1853
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09051a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1854
    .local v2, "shareMenuView":Landroid/view/View;
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    .line 1855
    new-instance v3, Lcom/android/contacts/list/SelectShareMenuAdapter;

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0401ef

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/list/SelectShareMenuAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    .line 1857
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1858
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1861
    .local v1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v4, Lcom/android/contacts/list/ContactTileListFragment$10;

    invoke-direct {v4, p0, v1}, Lcom/android/contacts/list/ContactTileListFragment$10;-><init>(Lcom/android/contacts/list/ContactTileListFragment;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1877
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/list/SelectShareMenuAdapter;->setAppList(Ljava/util/List;)V

    .line 1878
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/SelectShareMenuAdapter;->setShareIntent(Landroid/content/Intent;)V

    .line 1879
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/SelectShareMenuAdapter;->setIsSelectionMode(Z)V

    .line 1880
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1882
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1883
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1884
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1885
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1886
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 1887
    return-void
.end method

.method public startActionMode()V
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;-><init>(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    .line 840
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 841
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->setActionContextBarVisibility(ZLandroid/view/ActionMode;)V

    .line 844
    :cond_1
    return-void
.end method
