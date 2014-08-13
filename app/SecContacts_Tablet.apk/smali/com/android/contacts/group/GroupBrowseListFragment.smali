.class public Lcom/android/contacts/group/GroupBrowseListFragment;
.super Landroid/app/Fragment;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;,
        Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;,
        Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;,
        Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;,
        Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;,
        Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_COMPLETED:Ljava/lang/String; = "deleteCompleted"

.field private static final DELETE_GROUP_AND_MEMBER_DIALOG_ID:I = 0x1

.field private static final DELETE_GROUP_ONLY_DIALOG_ID:I = 0x0

.field private static final EXTRA_KEY_GROUP_INFO:Ljava/lang/String; = "groupInfo"

.field private static final EXTRA_KEY_GROUP_INFO_INTERNAL:Ljava/lang/String; = "groupInfoInternal"

.field private static final EXTRA_KEY_HAS_MEMBER:Ljava/lang/String; = "hasMember"

.field private static final EXTRA_KEY_IS_AUTO_ADD:Ljava/lang/String; = "isAutoAdd"

.field private static final EXTRA_KEY_IS_DELETE_GROUP_AND_MEMBER_DIALOG_SHOWING:Ljava/lang/String; = "isShowingDeleteGroupAndMemberOnly"

.field private static final EXTRA_KEY_IS_DELETE_GROUP_ONLY_DIALOG_SHOWING:Ljava/lang/String; = "isShowingDeleteGroupOnly"

.field private static final EXTRA_KEY_IS_PROGRESS_SHOWING:Ljava/lang/String; = "isShowing"

.field private static final GOOGLE_ACCOUNT_DUMMY_DATA:Ljava/lang/String; = "xxx"

.field private static final GOOGLE_PLUS_DATA_SET:Ljava/lang/String; = "plus"

.field static final GROUP_ACCOUNT_NAME_COLUMN_INDEX:I = 0x3

.field static final GROUP_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x4

.field static final GROUP_AGG_PROJECTION:[Ljava/lang/String;

.field static final GROUP_AUTO_ADD_COLUMN_INDEX:I = 0x7

.field static final GROUP_COUNT_COLUMN_INDEX:I = 0x2

.field static final GROUP_DATA_SET_COLUMN_INDEX:I = 0x5

.field static final GROUP_ID_COLUMN_INDEX:I = 0x0

.field static final GROUP_LIST_PROJECTION:[Ljava/lang/String;

.field static final GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

.field static final GROUP_SYSTEM_ID_COLUMN_INDEX:I = 0x6

.field static final GROUP_TITLE_COLUMN_INDEX:I = 0x1

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_ACTION_MODE:Ljava/lang/String; = "actionMode"

.field private static final KEY_DELETE_ONLY_MODE:Ljava/lang/String; = "isDeleteOnlyMode"

.field private static final KEY_SELECTED_CONTACTS:Ljava/lang/String; = "selectedContacts"

.field private static final NOT_ASSIGNED_GROUP_ID:I = 0x0

.field private static final NOT_ASSIGNED_GROUP_TITLE:Ljava/lang/String; = "Not Assigned"

.field private static final QUERY_TOKEN_ACCOUNTS:I = 0x2c

.field private static final QUERY_TOKEN_GOOGLE_PLUS:I = 0x2b

.field private static final QUERY_TOKEN_ICE_COUNT:I = 0x2d

.field private static final QUERY_TOKEN_INTEGRATED_GROUPS:I = 0x2e

.field private static final QUERY_TOKEN_NOT_ASSIGNED_GROUPS:I = 0x2a

.field private static final SUBACTIVITY_EDIT_GROUP:I = 0x7

.field private static final SUBACTIVITY_RCS_CHAT:I = 0x8

.field private static final SUBACTIVITY_SEND_EMAIL:I = 0x6

.field private static final SUBACTIVITY_SEND_MESSAGE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GroupBrowseListFragment"

.field private static mActionMode:Landroid/view/ActionMode;

.field private static mProgress:Ljava/lang/ref/WeakReference;
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
.field private final EXPANDED_CHILD_POSITION:Ljava/lang/String;

.field private final EXPANDED_GROUP_POSITION:Ljava/lang/String;

.field private alert:Landroid/app/AlertDialog;

.field private childpos:I

.field cursor:Landroid/database/Cursor;

.field private groupPos:I

.field isBlackTheme:Z

.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

.field private mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

.field private mAddAccountsView:Landroid/view/View;

.field private mChagingSplitRatioMode:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mCheckStatesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeleteGroupDialogTitle:Ljava/lang/String;

.field private mDeleteOnlyMode:Z

.field private mGroupCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHugeFontSize:I

.field private mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mIsGroupDeleteAndMemberDialogShowing:Z

.field private mIsGroupDeleteOnlyDialogShowing:Z

.field private mIsHugeFontMode:Z

.field private mIsProgressShowing:Z

.field private mIsSelectionMode:Z

.field private mIsTwoPaneMode:Z

.field private mList:Landroid/widget/ExpandableListView;

.field private mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

.field private mRestoreActionMode:Z

.field private mRootView:Landroid/view/View;

.field private mSelectedGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mSelectionToScreenRequested:Z

.field private mSelectionVisible:Z

.field private mShouldRefreshData:Z

.field private mSyncStatusObserver:Landroid/database/ContentObserver;

.field private mTotalGroups:I

.field private mVideoCallExistFlag:Z

.field private popupMenu:Landroid/widget/PopupMenu;

.field private savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "groups_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    .line 267
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

    .line 271
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_AGG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 217
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$1;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHandler:Landroid/os/Handler;

    .line 309
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    .line 321
    const-string v0, "expanded_group_position"

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->EXPANDED_GROUP_POSITION:Ljava/lang/String;

    .line 323
    const-string v0, "expanded_child_position"

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->EXPANDED_CHILD_POSITION:Ljava/lang/String;

    .line 335
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    .line 337
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    .line 361
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->isBlackTheme:Z

    .line 363
    iput v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupCount:I

    .line 365
    iput v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mTotalGroups:I

    .line 373
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$2;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->cursor:Landroid/database/Cursor;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;)Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/group/GroupBrowseListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/group/GroupBrowseListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->isExpanedListItem(Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->isSelectModeGroup(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/group/GroupBrowseListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mVideoCallExistFlag:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/group/GroupBrowseListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mTotalGroups:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/contacts/group/GroupBrowseListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mTotalGroups:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->performGroupQuery()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/group/GroupBrowseListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/contacts/group/GroupBrowseListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->invalidateSeltectedGroupInfo()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->constructPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showProgress()V

    return-void
.end method

.method static synthetic access$4802(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/group/GroupBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    return p1
.end method

.method static synthetic access$700()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$702(Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Landroid/view/ActionMode;

    .prologue
    .line 139
    sput-object p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRestoreActionMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRestoreActionMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteOnlyMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteOnlyMode:Z

    return p1
.end method

.method private configureCustomActionBarAtBottom()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3014
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0901ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3015
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0901cb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3016
    .local v0, "bottomActionBar":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3018
    const v4, 0x7f0901cc

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3019
    .local v3, "searchButton":Landroid/view/View;
    new-instance v4, Lcom/android/contacts/group/GroupBrowseListFragment$4;

    invoke-direct {v4, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$4;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3027
    const v4, 0x7f090314

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3028
    .local v1, "createButton":Landroid/view/View;
    new-instance v4, Lcom/android/contacts/group/GroupBrowseListFragment$5;

    invoke-direct {v4, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$5;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3036
    const v4, 0x7f0901cd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3037
    .local v2, "menuButton":Landroid/view/View;
    new-instance v4, Lcom/android/contacts/group/GroupBrowseListFragment$6;

    invoke-direct {v4, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$6;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3044
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 2966
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    .line 2967
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 2968
    .local v0, "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    const/high16 v2, 0x7f120000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 2969
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$3;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$3;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2976
    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 2977
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 2978
    return-void
.end method

.method private createIntentForContextMenu(Landroid/view/Menu;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 3629
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupInfo;

    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 3634
    .local v2, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v15

    .line 3637
    .local v15, "groupType":I
    const v3, 0x7f090521

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 3638
    .local v12, "deleteMenuItem":Landroid/view/MenuItem;
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 3639
    .local v16, "memberCount":I
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 3640
    .local v11, "deleteIntent":Landroid/content/Intent;
    const-string v3, "GroupInfo"

    invoke-virtual {v11, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3641
    const-string v4, "hasMember"

    if-lez v16, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v11, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3642
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3645
    const v3, 0x7f090522

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 3646
    .local v10, "SendMessageMenuItem":Landroid/view/MenuItem;
    new-instance v19, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3647
    .local v19, "sendMessageIntent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3648
    const-string v3, "GroupInfo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3649
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_DisableMMS"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3651
    const-string v3, "actionCode"

    const/16 v4, 0xaa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3657
    :goto_1
    const-string v3, "SelectMode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3658
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3661
    const v3, 0x7f090523

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 3662
    .local v18, "sendEmailItem":Landroid/view/MenuItem;
    new-instance v17, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3663
    .local v17, "sendEmailIntent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3664
    const-string v3, "GroupInfo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3665
    const-string v3, "actionCode"

    const/16 v4, 0xa0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3666
    const-string v3, "SelectMode"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3667
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3670
    const v3, 0x7f090524

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 3671
    .local v14, "editGroupMenuItem":Landroid/view/MenuItem;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3672
    .local v13, "editGroupIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3673
    const-string v3, "GroupInfo"

    invoke-virtual {v13, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3676
    const-string v3, "com.google"

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KDDI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.kddi.ast.auoneid"

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "com.android.nttdocomo"

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3685
    :cond_1
    const-string v3, "EditMode"

    const/16 v4, 0xf

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3689
    :goto_2
    invoke-interface {v14, v13}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3690
    return-void

    .line 3641
    .end local v10    # "SendMessageMenuItem":Landroid/view/MenuItem;
    .end local v13    # "editGroupIntent":Landroid/content/Intent;
    .end local v14    # "editGroupMenuItem":Landroid/view/MenuItem;
    .end local v17    # "sendEmailIntent":Landroid/content/Intent;
    .end local v18    # "sendEmailItem":Landroid/view/MenuItem;
    .end local v19    # "sendMessageIntent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3654
    .restart local v10    # "SendMessageMenuItem":Landroid/view/MenuItem;
    .restart local v19    # "sendMessageIntent":Landroid/content/Intent;
    :cond_3
    const-string v3, "actionCode"

    const/16 v4, 0x96

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 3687
    .restart local v13    # "editGroupIntent":Landroid/content/Intent;
    .restart local v14    # "editGroupMenuItem":Landroid/view/MenuItem;
    .restart local v17    # "sendEmailIntent":Landroid/content/Intent;
    .restart local v18    # "sendEmailItem":Landroid/view/MenuItem;
    :cond_4
    const-string v3, "EditMode"

    const/16 v4, 0xe

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method private dismissProgress()V
    .locals 3

    .prologue
    .line 2922
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 2923
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    :goto_0
    return-void

    .line 2925
    :cond_0
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2926
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2929
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2930
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 2931
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsProgressShowing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2932
    :catch_0
    move-exception v0

    .line 2933
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getQueryDelay()I
    .locals 1

    .prologue
    .line 3730
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x190

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 3344
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_0

    .line 3346
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3348
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3350
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private invalidateSeltectedGroupInfo()V
    .locals 3

    .prologue
    .line 3291
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroupPosition()I

    move-result v0

    .line 3292
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3293
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 3294
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setAutoAdd(Z)V

    .line 3296
    :cond_0
    return-void
.end method

.method private isEditableGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 2941
    const-string v1, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2942
    const/4 v0, 0x1

    .line 2960
    .local v0, "isEditable":Z
    :goto_0
    return v0

    .line 2943
    .end local v0    # "isEditable":Z
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.nttdocomo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.kddi.ast.auoneid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    if-nez p2, :cond_4

    .line 2956
    const/4 v0, 0x1

    .restart local v0    # "isEditable":Z
    goto :goto_0

    .line 2958
    .end local v0    # "isEditable":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isEditable":Z
    goto :goto_0
.end method

.method private isExpanedListItem(Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    .locals 2
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 3772
    const-string v0, "com.google"

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFromGroupListContextMenu(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 911
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 912
    .local v0, "itemId":I
    const v3, 0x7f090522

    if-eq v3, v0, :cond_0

    const v3, 0x7f090523

    if-eq v3, v0, :cond_0

    const v3, 0x7f090524

    if-eq v3, v0, :cond_0

    const v3, 0x7f090521

    if-ne v3, v0, :cond_1

    .line 927
    :cond_0
    :goto_0
    return v1

    .line 917
    :cond_1
    const v3, 0x7f090525

    if-ne v3, v0, :cond_2

    .line 920
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 924
    goto :goto_0

    :cond_2
    move v1, v2

    .line 927
    goto :goto_0
.end method

.method private isSelectModeGroup(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3756
    if-eqz p1, :cond_1

    .line 3757
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3758
    .local v0, "accountType":Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3759
    .local v2, "title":Ljava/lang/String;
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3760
    .local v1, "systemId":Ljava/lang/String;
    const-string v5, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    const-string v5, "ICE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Starred in Android"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3764
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "systemId":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :goto_0
    return v3

    .restart local v0    # "accountType":Ljava/lang/String;
    .restart local v1    # "systemId":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 3760
    goto :goto_0

    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "systemId":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 3764
    goto :goto_0
.end method

.method private isSelectedGoogleAccountAvailable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "aGoogleAccName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2687
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 2688
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccountsWithDataSet()Ljava/util/List;

    move-result-object v1

    .line 2690
    .local v1, "googleAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 2700
    :cond_0
    :goto_0
    return v4

    .line 2693
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2694
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2695
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountWithDataSet;

    .line 2696
    .local v3, "lAccName":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v5, v3, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2697
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private performGroupQuery()V
    .locals 6

    .prologue
    .line 3709
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3710
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 3711
    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    .line 3712
    .local v1, "pa":Lcom/android/contacts/activities/PeopleActivity;
    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getActivityTabState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3713
    const-string v2, "GroupBrowseListFragment"

    const-string v3, "VR Start query with delay "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getQueryDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3723
    .end local v1    # "pa":Lcom/android/contacts/activities/PeopleActivity;
    :goto_0
    return-void

    .line 3716
    .restart local v1    # "pa":Lcom/android/contacts/activities/PeopleActivity;
    :cond_0
    const-string v2, "GroupBrowseListFragment"

    const-string v3, "VR Start query immediatelly 1"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    goto :goto_0

    .line 3720
    .end local v1    # "pa":Lcom/android/contacts/activities/PeopleActivity;
    :cond_1
    const-string v2, "GroupBrowseListFragment"

    const-string v3, "VR Start query immediatelly 2"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    goto :goto_0
.end method

.method private registerSyncStatusObserver()V
    .locals 4

    .prologue
    .line 408
    const-string v1, "content://com.android.contacts/check_photo_updates"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 409
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 410
    return-void
.end method

.method private setIsAutoAdd(Z)V
    .locals 1
    .param p1, "isAutoAdd"    # Z

    .prologue
    .line 3244
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 3245
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setAutoAdd(Z)V

    .line 3246
    :cond_0
    return-void
.end method

.method private setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 1
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 3249
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 3250
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3251
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 3253
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_1

    .line 3254
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 3255
    :cond_1
    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 2982
    const v1, 0x7f0904a2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2983
    const v1, 0x7f0904a0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2984
    const v1, 0x7f0904a1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2985
    const v1, 0x7f0904c6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2986
    const v1, 0x7f0904ad

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2989
    const v1, 0x7f0904ae

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2991
    const v1, 0x7f0904c7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2992
    const v1, 0x7f0904b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2993
    const v1, 0x7f0904b3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2994
    const v1, 0x7f0904b4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2995
    const v1, 0x7f0904c8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2996
    const v1, 0x7f0904b9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2997
    const v1, 0x7f0904b1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2998
    const v1, 0x7f0904bb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2999
    const v1, 0x7f0904bc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3000
    const v1, 0x7f0904bd

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3001
    const v1, 0x7f0904be

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3003
    const v1, 0x7f0904b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3004
    .local v0, "contactCounterMenu":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 3005
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3007
    :cond_0
    const v1, 0x7f0904bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3008
    const v1, 0x7f0904c0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3009
    const v1, 0x7f0904b6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3010
    return-void
.end method

.method private showDeleleDialog(I)V
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    const v5, 0x7f0e0347

    const v4, 0x7f0e02d4

    const/4 v3, 0x1

    .line 3353
    const/4 v0, 0x0

    .line 3354
    .local v0, "deleteDialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 3355
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    .line 3360
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 3465
    :goto_1
    return-void

    .line 3357
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    goto :goto_0

    .line 3362
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 3363
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3364
    .restart local v0    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    const v1, 0x7f0e01d0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$9;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$9;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$8;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$8;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$7;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$7;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    .line 3404
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3405
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3406
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    goto :goto_1

    .line 3364
    :cond_1
    const v1, 0x7f0e01d1

    goto :goto_2

    .line 3408
    :cond_2
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "case DELETE_GROUP_ONLY_DIALOG_ID: mSelectedGroupIds == null "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3412
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 3413
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3414
    .restart local v0    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    const v1, 0x7f0e01d2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$12;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$12;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$11;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$11;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$10;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$10;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3453
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    .line 3454
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3455
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3456
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    goto/16 :goto_1

    .line 3414
    :cond_3
    const v1, 0x7f0e01d3

    goto :goto_3

    .line 3458
    :cond_4
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "case DELETE_GROUP_AND_MEMBER_DIALOG_ID: mSelectedGroupIds == null "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 12
    .param p1, "dialogId"    # I
    .param p2, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    const v11, 0x7f0e0347

    const v10, 0x7f0e02d4

    const v9, 0x7f0e01cf

    const/4 v8, 0x1

    .line 3468
    invoke-virtual {p2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v4

    .line 3469
    .local v4, "groupId":J
    invoke-virtual {p2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 3470
    .local v2, "accountType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 3471
    .local v3, "title":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3472
    .local v6, "deleteDialog":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 3625
    :goto_0
    return-void

    .line 3474
    :pswitch_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    .end local v6    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3475
    .restart local v6    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0e01d0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/group/GroupBrowseListFragment$15;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v7, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment$14;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$14;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment$13;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$13;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3544
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    .line 3545
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 3546
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3547
    iput-boolean v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    goto :goto_0

    .line 3550
    :pswitch_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    .end local v6    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3551
    .restart local v6    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0e01d2

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$18;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/group/GroupBrowseListFragment$18;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v7, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment$17;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$17;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment$16;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$16;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3619
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    .line 3620
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 3621
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3622
    iput-boolean v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    goto :goto_0

    .line 3472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showProgress()V
    .locals 4

    .prologue
    .line 2908
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2909
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2910
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    const v3, 0x7f0e0221

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 2912
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsProgressShowing:Z

    .line 2916
    :goto_0
    return-void

    .line 2914
    :cond_0
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "showProgress() : context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterSyncStatusObserver()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 414
    return-void
.end method

.method private viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 1
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p2, "isAutoAdd"    # Z

    .prologue
    .line 3266
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 3267
    invoke-direct {p0, p2}, Lcom/android/contacts/group/GroupBrowseListFragment;->setIsAutoAdd(Z)V

    .line 3268
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    if-eqz v0, :cond_0

    .line 3269
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;->onViewGroupAction(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 3270
    :cond_0
    return-void
.end method


# virtual methods
.method public configureListPadding(Z)V
    .locals 6
    .param p1, "isTwoPane"    # Z

    .prologue
    .line 3160
    if-eqz p1, :cond_0

    .line 3161
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setScrollBarStyle(I)V

    .line 3162
    const/4 v0, 0x0

    .line 3163
    .local v0, "leftPadding":I
    const/4 v1, 0x0

    .line 3164
    .local v1, "rightPadding":I
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3165
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 3172
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3174
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4}, Landroid/widget/ExpandableListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/ExpandableListView;->setPadding(IIII)V

    .line 3180
    .end local v0    # "leftPadding":I
    .end local v1    # "rightPadding":I
    :cond_0
    :goto_1
    return-void

    .line 3168
    .restart local v0    # "leftPadding":I
    .restart local v1    # "rightPadding":I
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 3176
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4}, Landroid/widget/ExpandableListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/ExpandableListView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public dismissAlertDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2847
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2848
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2849
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    .line 2850
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    .line 2852
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2854
    :cond_1
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 471
    sget-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 472
    sget-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 473
    :cond_0
    return-void
.end method

.method public getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    .prologue
    .line 3752
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 2857
    if-nez p2, :cond_1

    .line 2858
    const/4 v1, 0x0

    .line 2891
    :cond_0
    :goto_0
    return-object v1

    .line 2861
    :cond_1
    const-string v2, "title"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2862
    .local v1, "title":Ljava/lang/String;
    const-string v2, "system_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2863
    .local v0, "systemId":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PersonalGroup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2868
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2870
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2871
    const v2, 0x7f0e009c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2887
    :cond_3
    :goto_1
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2888
    const v2, 0x7f0e012d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2872
    :cond_4
    const-string v2, "ICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2873
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2874
    const v2, 0x7f0e0262

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2877
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2881
    const v2, 0x7f0e0015

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2883
    :cond_6
    const v2, 0x7f0e0261

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method public getSelectedGroupPosition()I
    .locals 1

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition()I

    move-result v0

    return v0
.end method

.method public hideListCheckBox()V
    .locals 2

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 3746
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 3748
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 933
    packed-switch p1, :pswitch_data_0

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 935
    :pswitch_0
    if-ne p2, v7, :cond_0

    .line 936
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 943
    const-string v7, "com.android.mms"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    :cond_1
    const-string v7, "result"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 947
    .local v6, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 948
    .local v0, "dat":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 950
    .local v5, "phoneUri":Landroid/net/Uri;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 951
    const-string v7, "sms:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 953
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_2

    .line 956
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 960
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 961
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 962
    invoke-virtual {p0, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 967
    .end local v0    # "dat":Ljava/lang/StringBuilder;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "phoneUri":Landroid/net/Uri;
    .end local v6    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    if-ne p2, v7, :cond_0

    .line 968
    const-string v7, "result"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 970
    .restart local v6    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 971
    .local v4, "output":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 972
    const-string v7, ""

    aput-object v7, v4, v2

    .line 973
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 976
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, "mailto:"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 977
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    const-string v7, "PHONE_WHITE"

    const-string v8, "DEFAULT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 981
    const-string v7, "theme"

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    :cond_5
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 986
    :catch_0
    move-exception v1

    .line 987
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0e010f

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 989
    const-string v7, "GroupBrowseListFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found for intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 995
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "output":[Ljava/lang/String;
    .end local v6    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    if-ne p2, v7, :cond_0

    goto/16 :goto_0

    .line 933
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3184
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 3186
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 3187
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 3188
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .line 3189
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->registerSyncStatusObserver()V

    .line 3192
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z

    .line 3194
    return-void

    .line 3192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 11
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 2574
    iget-boolean v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v10, :cond_0

    .line 2575
    const/4 v10, 0x1

    .line 2596
    :goto_0
    return v10

    .line 2576
    :cond_0
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v10, p3, p4}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v8

    .line 2577
    .local v8, "c":Landroid/database/Cursor;
    iput p3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 2578
    iput p4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    .line 2579
    if-eqz v8, :cond_1

    .line 2580
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2581
    .local v4, "groupId":J
    const/4 v10, 0x4

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2582
    .local v1, "accountType":Ljava/lang/String;
    const/4 v10, 0x3

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2583
    .local v2, "accountName":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2584
    .local v3, "dataSet":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2585
    .local v6, "title":Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2588
    .local v7, "systemId":Ljava/lang/String;
    const/4 v10, 0x7

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    .line 2591
    .local v9, "isAutoAdd":Z
    :goto_1
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2593
    .local v0, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-direct {p0, v0, v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 2596
    .end local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "systemId":Ljava/lang/String;
    .end local v9    # "isAutoAdd":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 2588
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v2    # "accountName":Ljava/lang/String;
    .restart local v3    # "dataSet":Ljava/lang/String;
    .restart local v4    # "groupId":J
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v7    # "systemId":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 845
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->isFromGroupListContextMenu(Landroid/view/MenuItem;)Z

    move-result v3

    .line 847
    .local v3, "isFromGroupList":Z
    if-nez v3, :cond_0

    .line 900
    :goto_0
    return v5

    .line 850
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 851
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_1
    move v5, v6

    .line 900
    goto :goto_0

    .line 855
    :pswitch_0
    const-string v5, "FromMMS"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 856
    const/4 v5, 0x5

    invoke-virtual {p0, v2, v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 859
    :pswitch_1
    const/4 v5, 0x6

    invoke-virtual {p0, v2, v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 862
    :pswitch_2
    const/4 v5, 0x7

    invoke-virtual {p0, v2, v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 865
    :pswitch_3
    const-string v7, "hasMember"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 866
    .local v1, "hasMember":Z
    const-string v7, "GroupInfo"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 867
    .local v0, "groupinfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 868
    if-eqz v1, :cond_2

    .line 869
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v4, "selectedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    invoke-static {p0, v4}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->show(Landroid/app/Fragment;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 874
    .end local v4    # "selectedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0, v5, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    goto :goto_1

    .line 880
    .end local v0    # "groupinfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v1    # "hasMember":Z
    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x7f090521
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z

    .line 420
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isBlackTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->isBlackTheme:Z

    .line 424
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 667
    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 668
    iget-boolean v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->isBlackTheme:Z

    if-eqz v10, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .local v7, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    if-eqz v7, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 681
    .local v6, "inflater":Landroid/view/MenuInflater;
    const v10, 0x7f120018

    invoke-virtual {v6, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 683
    const/4 v3, 0x0

    .line 684
    .local v3, "cursor":Landroid/database/Cursor;
    iget-wide v10, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v9

    .line 687
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    .line 703
    :goto_1
    if-eqz v3, :cond_0

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isICEGroup(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 708
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->createIntentForContextMenu(Landroid/view/Menu;Landroid/database/Cursor;)V

    .line 711
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v8

    .line 714
    .local v8, "isSMSAvailable":Z
    const/4 v10, 0x6

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    const/4 v10, 0x6

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_9

    .line 717
    const-string v10, "PersonalGroup"

    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 718
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 723
    :goto_2
    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    .line 724
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "KDDI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 727
    const v10, 0x7f090522

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 728
    const v10, 0x7f090522

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 730
    :cond_2
    const v10, 0x7f090523

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 731
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 733
    const v10, 0x7f090525

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 739
    :cond_3
    :goto_3
    const/4 v10, 0x6

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "xxx"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "PersonalGroup"

    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 741
    const v10, 0x7f090524

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 746
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x4

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.nttdocomo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "KDDI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.kddi.ast.auoneid"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x6

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 755
    :cond_6
    const v10, 0x7f090521

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 673
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v6    # "inflater":Landroid/view/MenuInflater;
    .end local v7    # "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .end local v8    # "isSMSAvailable":Z
    .end local v9    # "type":I
    :catch_0
    move-exception v4

    .line 674
    .local v4, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 689
    .end local v4    # "e":Ljava/lang/ClassCastException;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "inflater":Landroid/view/MenuInflater;
    .restart local v7    # "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .restart local v9    # "type":I
    :pswitch_0
    iget-wide v10, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    .line 690
    .local v5, "groupPos":I
    iget-wide v10, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 691
    .local v2, "childPos":I
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v10, v5, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v3

    .line 692
    goto/16 :goto_1

    .line 695
    .end local v2    # "childPos":I
    .end local v5    # "groupPos":I
    :pswitch_1
    iget-wide v10, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    .line 696
    .restart local v5    # "groupPos":I
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v10, v5}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v3

    .line 697
    goto/16 :goto_1

    .line 720
    .end local v5    # "groupPos":I
    .restart local v8    # "isSMSAvailable":Z
    :cond_7
    const/4 v10, 0x6

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 735
    :cond_8
    const v10, 0x7f090525

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 759
    :cond_9
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_b

    .line 760
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    const/4 v11, 0x4

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 764
    .local v1, "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 766
    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 767
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "KDDI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 770
    const v10, 0x7f090522

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 772
    :cond_a
    const v10, 0x7f090523

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 776
    .end local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_b
    const-string v10, "com.google"

    const/4 v11, 0x4

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "plus"

    const/4 v11, 0x5

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 780
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 782
    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 783
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "KDDI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 786
    const v10, 0x7f090522

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 788
    :cond_c
    const v10, 0x7f090523

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 790
    :cond_d
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Starred in Android"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 792
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 794
    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_f

    .line 795
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "KDDI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 798
    const v10, 0x7f090522

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 800
    :cond_e
    const v10, 0x7f090523

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 803
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 805
    const v10, 0x7f090525

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 809
    :goto_4
    const v10, 0x7f090524

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 807
    :cond_10
    const v10, 0x7f090525

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 813
    :cond_11
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 814
    const v10, 0x7f090521

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 816
    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_13

    .line 817
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "KDDI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 820
    const v10, 0x7f090522

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 821
    const v10, 0x7f090522

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 823
    :cond_12
    const v10, 0x7f090523

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 824
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 826
    const v10, 0x7f090525

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 832
    :cond_13
    :goto_5
    const v10, 0x7f090524

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 828
    :cond_14
    const v10, 0x7f090525

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3065
    const-string v2, "GroupBrowseListFragment"

    const-string v5, "VR onCreateView GroupBrowseListFragment"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    if-eqz p3, :cond_8

    .line 3068
    const-string v2, "groupInfoInternal"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 3069
    const-string v2, "groupInfo"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 3070
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->isBlackTheme:Z

    if-eqz v2, :cond_0

    .line 3071
    const-string v2, "actionMode"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    .line 3072
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v2, :cond_0

    .line 3073
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRestoreActionMode:Z

    .line 3074
    const-string v2, "isDeleteOnlyMode"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteOnlyMode:Z

    .line 3075
    const-string v2, "selectedContacts"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    .line 3077
    const-string v2, "checkStates"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStatesArray:Ljava/util/ArrayList;

    .line 3079
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStatesArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setCheckStates(Ljava/util/ArrayList;)V

    .line 3082
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v2, :cond_1

    .line 3085
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 3086
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2, v5}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 3087
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "vnd.sec.contact.phone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3090
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 3091
    const-string v2, "expanded_group_position"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 3092
    const-string v2, "expanded_child_position"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    .line 3100
    :cond_1
    :goto_0
    const-string v2, "isAutoAdd"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3101
    .local v1, "isAutoAdd":Z
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setAutoAdd(Z)V

    .line 3102
    const-string v2, "isShowing"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsProgressShowing:Z

    .line 3105
    const-string v2, "isShowingDeleteGroupOnly"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    .line 3107
    const-string v2, "isShowingDeleteGroupAndMemberOnly"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    .line 3110
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v2, :cond_2

    .line 3111
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    if-eqz v2, :cond_7

    .line 3112
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v4, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 3122
    .end local v1    # "isAutoAdd":Z
    :cond_2
    :goto_1
    const v2, 0x7f04014c

    invoke-virtual {p1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    .line 3123
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    .line 3124
    .local v0, "hasPermanentMenuKey":Z
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 3126
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->configureCustomActionBarAtBottom()V

    .line 3129
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    .line 3130
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 3131
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 3132
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 3133
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v7}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 3134
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v4}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 3135
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3136
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 3138
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/high16 v5, 0x2000000

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setScrollBarStyle(I)V

    .line 3139
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setVerticalScrollBarPadding(Z)V

    .line 3140
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 3145
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 3146
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->isBlackTheme:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v2, :cond_4

    .line 3147
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActionMode()V

    .line 3148
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 3150
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsProgressShowing:Z

    if-eqz v2, :cond_5

    .line 3151
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showProgress()V

    .line 3153
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setSelector(I)V

    .line 3154
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->setSelectionAfterHeaderView()V

    .line 3156
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v2

    .line 3094
    .end local v0    # "hasPermanentMenuKey":Z
    :cond_6
    iput-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 3095
    iput v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 3096
    iput v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    goto/16 :goto_0

    .line 3113
    .restart local v1    # "isAutoAdd":Z
    :cond_7
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    if-eqz v2, :cond_2

    .line 3114
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v3, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    goto/16 :goto_1

    .line 3118
    .end local v1    # "isAutoAdd":Z
    :cond_8
    iput-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 3119
    iput v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 3120
    iput v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    goto/16 :goto_1

    .restart local v0    # "hasPermanentMenuKey":Z
    :cond_9
    move v2, v4

    .line 3148
    goto :goto_2
.end method

.method public onDeleteCompleted()V
    .locals 1

    .prologue
    .line 2899
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->dismissProgress()V

    .line 2900
    sget-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2901
    sget-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2902
    :cond_0
    return-void
.end method

.method public onDeleteGroupOnlyChosen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3694
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 3695
    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(I)V

    .line 3698
    :goto_0
    return-void

    .line 3697
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    goto :goto_0
.end method

.method public onDeleteGroupWithMemberChosen()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3702
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 3703
    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(I)V

    .line 3706
    :goto_0
    return-void

    .line 3705
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3198
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 3200
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->cancelQuery()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$4400(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 3201
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3202
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->closeAllCursor()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$4500(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 3203
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->unregisterSyncStatusObserver()V

    .line 3204
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .line 3205
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 3206
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->dismissAlertDialog()V

    .line 3207
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 3208
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    .line 3209
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 12
    .param p1, "l"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 2600
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v10

    invoke-interface {v10, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    .line 2602
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_c

    .line 2603
    iput p3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 2604
    const/4 v10, 0x4

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2605
    .local v1, "accountType":Ljava/lang/String;
    const/4 v10, 0x3

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2606
    .local v2, "accountName":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2607
    .local v4, "groupId":J
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2608
    .local v6, "title":Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2609
    .local v7, "systemId":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2610
    .local v3, "dataSet":Ljava/lang/String;
    const/4 v10, 0x7

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    .line 2612
    .local v9, "isAutoAdd":Z
    :goto_0
    const v10, 0x7f0902f5

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2613
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2616
    .local v0, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-boolean v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v10, :cond_4

    .line 2617
    invoke-direct {p0, v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->isSelectModeGroup(Landroid/database/Cursor;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2619
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2620
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2621
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/contacts/group/GroupBrowseListFragment;->setItemSelected(Z)V

    .line 2622
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2628
    :goto_1
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    if-eqz v10, :cond_0

    .line 2629
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    invoke-virtual {v10}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 2630
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    invoke-virtual {v10}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->refreshActionBarMode()V

    .line 2632
    :cond_0
    invoke-direct {p0, v0, v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 2634
    :cond_1
    const/4 v10, 0x0

    .line 2683
    .end local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "systemId":Ljava/lang/String;
    .end local v9    # "isAutoAdd":Z
    :goto_2
    return v10

    .line 2610
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v2    # "accountName":Ljava/lang/String;
    .restart local v3    # "dataSet":Ljava/lang/String;
    .restart local v4    # "groupId":J
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v7    # "systemId":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 2624
    .restart local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .restart local v9    # "isAutoAdd":Z
    :cond_3
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, p3, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2625
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/contacts/group/GroupBrowseListFragment;->setItemSelected(Z)V

    .line 2626
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2636
    :cond_4
    const-string v10, "com.google"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2637
    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->isSelectedGoogleAccountAvailable(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2638
    const/4 v10, 0x1

    goto :goto_2

    .line 2641
    :cond_5
    const-string v10, "xxx"

    const/4 v11, 0x6

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2642
    const/4 v10, 0x0

    goto :goto_2

    .line 2647
    :cond_6
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v10, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getChildrenCount(I)I

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "com.google"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "com.android.nttdocomo"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "KDDI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "com.kddi.ast.auoneid"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 2663
    :cond_8
    const-string v10, "VideoCalling"

    const/4 v11, 0x4

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2665
    const-string v10, "GroupBrowseListFragment"

    const-string v11, "onGroupClick - Video Calling"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    const-string v1, "VideoCalling"

    .line 2667
    const-string v2, "VideoCalling"

    .line 2668
    const/4 v3, 0x0

    .line 2669
    const-wide/16 v4, -0x1

    .line 2670
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0021

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2671
    const/4 v7, 0x0

    .line 2673
    :cond_9
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    .end local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2675
    .restart local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v10

    cmp-long v10, v4, v10

    if-eqz v10, :cond_a

    .line 2676
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    invoke-interface {v10}, Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;->onCurrentGroupChanged()V

    .line 2678
    :cond_a
    invoke-direct {p0, v0, v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 2683
    .end local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "systemId":Ljava/lang/String;
    .end local v9    # "isAutoAdd":Z
    :cond_b
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2681
    :cond_c
    const-string v10, "GroupBrowseListFragment"

    const-string v11, "onGroupClick: c == null "

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 428
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->isBlackTheme:Z

    if-eqz v0, :cond_2

    .line 429
    sget-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    invoke-static {p4, p5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    if-ne v0, v7, :cond_1

    :cond_0
    move v0, v1

    .line 442
    :goto_0
    return v0

    :cond_1
    move-object v0, p1

    .line 433
    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 435
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->isSelectModeGroup(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActionMode()V

    move-object v1, p1

    .line 437
    check-cast v1, Landroid/widget/ExpandableListView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    .line 438
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    move v0, v7

    .line 439
    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v0, v1

    .line 442
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 655
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dismissDialog()V

    .line 656
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 663
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 618
    const-string v4, "GroupBrowseListFragment"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 621
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 623
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "huge_font"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 624
    .local v0, "flagHugeFont":I
    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z

    .line 625
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I

    .line 628
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z

    if-eqz v2, :cond_1

    .line 629
    const-string v2, "GroupBrowseListFragment"

    const-string v3, "should refresh data"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->performGroupQuery()V

    .line 644
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 624
    goto :goto_0

    .line 632
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->notifyDataSetChanged()V

    .line 635
    :cond_2
    const-string v2, "GroupBrowseListFragment"

    const-string v3, "Nothing changed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 3300
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3301
    const-string v1, "groupInfo"

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3302
    const-string v1, "isAutoAdd"

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isAutoAdd()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3303
    const-string v1, "expanded_group_position"

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3304
    const-string v1, "expanded_child_position"

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3306
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3307
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    .line 3308
    .local v0, "isShowing":Z
    const-string v1, "isShowing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3310
    .end local v0    # "isShowing":Z
    :cond_0
    const-string v1, "groupInfoInternal"

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3311
    const-string v1, "isShowingDeleteGroupOnly"

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3313
    const-string v1, "isShowingDeleteGroupAndMemberOnly"

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3315
    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->isBlackTheme:Z

    if-eqz v1, :cond_1

    .line 3316
    const-string v1, "actionMode"

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3317
    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v1, :cond_1

    .line 3318
    const-string v1, "selectedContacts"

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3319
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getCheckStates()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStatesArray:Ljava/util/ArrayList;

    .line 3320
    const-string v1, "checkStates"

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStatesArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3321
    const-string v1, "isDeleteOnlyMode"

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteOnlyMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3324
    :cond_1
    return-void
.end method

.method public onSecretModeChanged()V
    .locals 1

    .prologue
    .line 3726
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 3727
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    if-ne p1, v0, :cond_0

    .line 3338
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->hideSoftKeyboard()V

    .line 3340
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected requestSelectionToScreen()V
    .locals 3

    .prologue
    .line 3279
    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    if-nez v1, :cond_1

    .line 3286
    :cond_0
    :goto_0
    return-void

    .line 3282
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition()I

    move-result v0

    .line 3283
    .local v0, "selectedPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3284
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public setAddAccountsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3328
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3330
    :cond_0
    return-void

    .line 3328
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setChangingSplitRatioMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 3048
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    if-eq v0, p1, :cond_1

    .line 3049
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    .line 3050
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    if-eqz v0, :cond_0

    .line 3055
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v0, :cond_1

    .line 3056
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->notifyDataSetChanged()V

    .line 3058
    :cond_1
    return-void
.end method

.method public setDeleteOnlyMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 3776
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteOnlyMode:Z

    .line 3777
    return-void
.end method

.method public setItemSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 3735
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 3736
    :cond_0
    return-void

    .line 3735
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    .prologue
    .line 3233
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    .line 3234
    return-void
.end method

.method public setSelectedUri(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 2
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 3273
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isAutoAdd()Z

    move-result v0

    .line 3274
    .local v0, "isAutoadd":Z
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 3276
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 3237
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    .line 3238
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 3239
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSelectionVisible(Z)V

    .line 3241
    :cond_0
    return-void
.end method

.method public showListCheckBox()V
    .locals 2

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3740
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 3742
    :cond_0
    return-void
.end method

.method public startActionMode()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    .line 451
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z

    .line 452
    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupCount:I

    if-nez v0, :cond_1

    .line 453
    const-string v0, "content://com.android.contacts/groups_list/aggregated"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 454
    .local v1, "groupUri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v0, "system_id"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ICE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Starred in Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_AGG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->cursor:Landroid/database/Cursor;

    .line 465
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupCount:I

    .line 467
    .end local v1    # "groupUri":Landroid/net/Uri;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 468
    return-void
.end method
