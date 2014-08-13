.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
.super Landroid/app/Fragment;
.source "ContactHistoryListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$Prefs;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$ContextMenuIds;
    }
.end annotation


# static fields
.field private static final DELETE_TOKEN:I = 0x28

.field private static final HISTORY_LIST_SIZE:I = 0x9c4

.field private static final KEY_CONTEXTUAL_DELETE_ID:Ljava/lang/String; = "contextualDeleteIds"

.field private static final KEY_HEADER_CHECK_STATE:Ljava/lang/String; = "headerCheckState"

.field private static final KEY_LOADER_LOOKUP_URI:Ljava/lang/String; = "contactUri"

.field public static final KEY_OPTIONS:Ljava/lang/String; = "options"

.field private static final KEY_SELECT_IDS:Ljava/lang/String; = "selectedIds"

.field private static final KEY_SHOW_DIALOG:Ljava/lang/String; = "showDialog"

.field static final LOGS_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_TOKEN_LOG:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ContactHistoryListFragment"

.field private static final UPDATE_LAST_TOKEN:I = 0x1e

.field private static final UPDATE_TOKEN:I = 0x14

.field private static final VIEW_BY_CNT:I = 0x4

.field private static mContactId:J

.field private static mContext:Landroid/content/Context;

.field private static mDeleteId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeleteStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cursorCount:I

.field private mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

.field private mAllitem:Landroid/widget/LinearLayout;

.field private mCheckedCount:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContextInfoLogType:I

.field private mContextInfoMessageId:Ljava/lang/String;

.field private mContextInfoName:Ljava/lang/String;

.field private mContextualDeleteId:I

.field private mEmptyView:Landroid/view/View;

.field public mEveryBodyIsOff:Z

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeaderCheckState:Z

.field private mHeaderContainer:Landroid/widget/FrameLayout;

.field private mIsCallType:Z

.field private mIsDeleteMode:Z

.field private mIsKnoxMode:Z

.field public mIsLoadingProgress:Z

.field private mIsLogsUpdatedByTask:Z

.field private mIsPhone:Z

.field private mListView:Landroid/widget/ListView;

.field mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mLookupUri:Landroid/net/Uri;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

.field private mSelectedLogsHashMap:Ljava/util/HashMap;
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

.field private mShouldQuery:Z

.field private mSortOptions:[Z

.field private mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

.field public mToastHandler:Landroid/os/Handler;

.field private mUpdateDeletemode:Z

.field private mView:Landroid/view/View;

.field rawContactIdsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 164
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->LOGS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    .line 114
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    .line 116
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    .line 132
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    .line 134
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    .line 136
    iput v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->cursorCount:I

    .line 140
    iput v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mCheckedCount:I

    .line 142
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    .line 203
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    .line 1277
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$3;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mToastHandler:Landroid/os/Handler;

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->startQuery()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->considerBindDate(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->cursorCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->cursorCount:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 75
    sput-object p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    return-object p1
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 75
    sget-wide v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateContactId()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 372
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    .line 373
    const v0, 0x7f040064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f040090

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 391
    return-void
.end method

.method private addLogsToDelete()Z
    .locals 6

    .prologue
    .line 1162
    const/4 v3, 0x0

    .line 1163
    .local v3, "logType":I
    const/4 v0, 0x0

    .line 1165
    .local v0, "bHasCallLog":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    .line 1166
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1167
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1168
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1169
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 1170
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1171
    const-string v4, "logtype"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1172
    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    const/16 v4, 0x1f4

    if-eq v3, v4, :cond_0

    const/16 v4, 0x320

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    .line 1174
    :cond_0
    const/4 v0, 0x1

    .line 1176
    :cond_1
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1180
    :cond_3
    return v0
.end method

.method private considerBindDate(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1035
    if-nez p1, :cond_0

    .line 1036
    const-string v0, "ContactHistoryListFragment"

    const-string v1, "considerBindDate cursor is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_0
    return-void

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    if-nez v0, :cond_1

    .line 1041
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f040063

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setFragment(Landroid/app/Fragment;)V

    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->forceLayout()V

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method private getTypeSelection()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 626
    const-string v2, ""

    .line 627
    .local v2, "logType":Ljava/lang/String;
    const-string v3, ""

    .line 628
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x0

    .line 629
    .local v1, "isPhone":Z
    const/4 v0, 0x0

    .line 631
    .local v0, "isMMS":Z
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 632
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 633
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 640
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_0

    .line 641
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 642
    const-string v2, "100, 500, 800, 900, 1000"

    .line 652
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 654
    if-eqz v1, :cond_6

    .line 655
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_1

    .line 656
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 657
    const-string v2, "400"

    .line 710
    :cond_1
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 711
    const-string v2, "logtype = 0"

    .line 716
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " and ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 720
    :cond_2
    return-object v3

    .line 635
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 636
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 646
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 100, 500, 800, 900, 1000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 659
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 400"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 663
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_1

    .line 664
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 665
    const-string v2, "400"

    goto :goto_2

    .line 667
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 400"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 673
    :cond_8
    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-nez v4, :cond_a

    :cond_9
    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_b

    .line 682
    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 683
    const-string v2, "300, 200"

    .line 690
    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v8

    if-nez v4, :cond_e

    :cond_c
    if-nez v1, :cond_d

    if-eqz v0, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-nez v4, :cond_e

    :cond_d
    if-nez v1, :cond_f

    if-nez v0, :cond_f

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_f

    .line 692
    :cond_e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 693
    const-string v2, "400"

    .line 700
    :cond_f
    :goto_5
    if-eqz v1, :cond_10

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    if-nez v4, :cond_12

    :cond_10
    if-nez v1, :cond_11

    if-eqz v0, :cond_11

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v8

    if-nez v4, :cond_12

    :cond_11
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_1

    .line 702
    :cond_12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 703
    const-string v2, "700"

    goto/16 :goto_2

    .line 685
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 300, 200"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 695
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 400"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 705
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 700"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 713
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logtype in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3
.end method

.method public static queryForAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    const/4 v6, 0x0

    .line 756
    .local v6, "rawContactIdCursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v7, "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 761
    if-eqz v6, :cond_1

    .line 762
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 767
    :cond_1
    if-eqz v6, :cond_2

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_2
    return-object v7
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setLoading(Z)V

    .line 596
    :cond_0
    const-string v5, ""

    .line 597
    .local v5, "selection":Ljava/lang/String;
    const-string v7, ""

    .line 599
    .local v7, "sortOrder":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( contactid  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v3, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getrawcontactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getTypeSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 604
    const-string v7, "date DESC LIMIT 2500"

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->cancelOperation(I)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    sget-object v3, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->LOGS_PROJECTION:[Ljava/lang/String;

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method private updateContactId()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 724
    const/4 v1, 0x0

    .line 727
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 731
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 736
    :cond_2
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    .line 737
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 738
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 740
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    sput-wide v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    .line 741
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 742
    sget-wide v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "contactidString":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->queryForAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    goto :goto_0

    .line 747
    .end local v0    # "contactidString":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 748
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public doDeleteAction()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1147
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->addLogsToDelete()Z

    move-result v0

    .line 1148
    .local v0, "bHasCallLog":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 1150
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "showDialog"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1151
    .local v1, "showNeverAgain":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 1158
    :goto_0
    return-void

    .line 1155
    :cond_0
    new-instance v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 1156
    .local v2, "task":Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/ArrayList;

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getAdapter()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 581
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIsDeleteMode()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public getSortOptions()[Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    return-object v0
.end method

.method getrawcontactSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 612
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 613
    .local v1, "rawcontactselection":Ljava/lang/String;
    const-string v1, ""

    .line 615
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 617
    const-string v1, " or raw_contact_id = "

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_1
    return-object v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 301
    sput-object p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    .line 302
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsPhone:Z

    .line 304
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsKnoxMode:Z

    .line 310
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnDeletedItemCheckedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f090181

    const v2, 0x7f09017f

    .line 263
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    const-string v0, "ContactHistoryListFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 17
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 472
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 548
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 474
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "showDialog"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 477
    .local v15, "showNeverAgain":Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    if-eqz v1, :cond_1

    if-nez v15, :cond_1

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 499
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 481
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteId:Ljava/util/ArrayList;

    .line 482
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 484
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteId:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v16, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;

    invoke-direct/range {v16 .. v17}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 496
    .local v16, "task":Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteId:Ljava/util/ArrayList;

    aput-object v4, v1, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 502
    .end local v15    # "showNeverAgain":Z
    .end local v16    # "task":Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    :pswitch_1
    const-wide/16 v13, 0x0

    .line 503
    .local v13, "messageLongId2":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 507
    :cond_2
    const-wide/16 v7, 0x0

    .line 508
    .local v7, "accountKey":J
    const-string v1, "content://com.android.email.provider/message"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 509
    .local v2, "mUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 511
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v11, "_id"

    .line 512
    .local v11, "id":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "accountKey"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 516
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 517
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 527
    if-eqz v9, :cond_3

    .line 528
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 532
    .end local v11    # "id":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v12, 0x0

    .line 533
    .local v12, "intent":Landroid/content/Intent;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 534
    new-instance v12, Landroid/content/Intent;

    .end local v12    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.email.intent.action.REPLY"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_4
    if-eqz v12, :cond_0

    .line 540
    const-string v1, "message_id"

    invoke-virtual {v12, v1, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 541
    const-string v1, "account_id"

    invoke-virtual {v12, v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 542
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 519
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v11    # "id":Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    if-eqz v9, :cond_0

    .line 528
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 524
    .end local v11    # "id":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 525
    .local v10, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    if-eqz v9, :cond_3

    .line 528
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 527
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 528
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 535
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 536
    new-instance v12, Landroid/content/Intent;

    .end local v12    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.email.intent.action.FORWARD"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v12    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    .line 217
    if-eqz p1, :cond_1

    .line 218
    const-string v0, "KEY_DELETE_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    .line 219
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "DeleteStringArrayList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    .line 222
    :cond_0
    const-string v0, "selectedIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    .line 224
    const-string v0, "headerCheckState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    .line 226
    const-string v0, "contextualDeleteIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contactUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    .line 233
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 249
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 435
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoName:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    .line 450
    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 454
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    .line 459
    :goto_0
    const v0, 0x7f0e02f4

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 462
    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 463
    const v0, 0x7f0e02b1

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 465
    const/4 v0, 0x2

    const v1, 0x7f0e02b0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 468
    :cond_1
    return-void

    .line 456
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f090181

    const v4, 0x7f09017f

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 315
    new-instance v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/app/Fragment;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 317
    const v1, 0x7f040062

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 324
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 325
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    const v2, 0x7f09017d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_2

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 353
    new-instance v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    .line 354
    new-instance v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040063

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setFragment(Landroid/app/Fragment;)V

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0121

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVerticalScrollBarPadding(Z)V

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateSharedPrefs()V

    .line 366
    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setHasOptionsMenu(Z)V

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    return-object v1

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onDeleteItem()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1260
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    .line 1261
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    .line 1262
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->addLogsToDelete()Z

    .line 1267
    :cond_0
    new-instance v6, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 1268
    .local v6, "task":Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    new-array v0, v5, [Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    aput-object v1, v0, v8

    invoke-virtual {v6, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1275
    .end local v6    # "task":Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    :goto_0
    return-void

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    const/16 v1, 0x28

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 283
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 284
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 289
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    .line 290
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setDateFormat()V

    .line 294
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    new-array v1, v3, [Ljava/lang/Long;

    sget-wide v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    const-string v0, "KEY_DELETE_MODE"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    const-string v0, "DeleteStringArrayList"

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 256
    const-string v0, "headerCheckState"

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    const-string v0, "selectedIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 258
    const-string v0, "contextualDeleteIds"

    iget v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    return-void
.end method

.method public restoreCheckState()V
    .locals 7

    .prologue
    .line 1136
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1137
    .local v0, "dataCount":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 1138
    .local v1, "headerCnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1139
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    add-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1140
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    add-int v5, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    add-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1143
    :cond_1
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 4
    .param p1, "bCheckStatus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1122
    const/4 v0, 0x0

    .line 1123
    .local v0, "dataCount":I
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 1124
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1127
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1129
    :cond_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, v0, v2

    :goto_1
    iput v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mCheckedCount:I

    .line 1130
    if-nez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    .line 1131
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onExistsDeletedItems(Z)V

    .line 1133
    .end local v1    # "i":I
    :cond_2
    return-void

    .restart local v1    # "i":I
    :cond_3
    move v2, v3

    .line 1129
    goto :goto_1
.end method

.method public setCheckPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 1059
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int v0, p1, v1

    .line 1060
    .local v0, "realPosition":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1061
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    :goto_1
    iput v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mCheckedCount:I

    .line 1063
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1066
    :cond_0
    return-void

    .line 1060
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1062
    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mCheckedCount:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .param p1, "isDeleteMode"    # Z

    .prologue
    .line 578
    return-void
.end method

.method public setMode(Z)V
    .locals 3
    .param p1, "isDeleteMode"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 552
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    .line 553
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_2

    .line 554
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setAllItemChecked(Z)V

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 566
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setMode(Z)V

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->notifyDataSetChanged()V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 570
    :cond_1
    return-void

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    goto :goto_0
.end method

.method public updateAllCheckState()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1069
    const/4 v3, 0x1

    .line 1070
    .local v3, "everyBodyIsOn":Z
    const/4 v2, 0x1

    .line 1071
    .local v2, "everyBodyIsOff":Z
    const/4 v1, 0x0

    .line 1072
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 1074
    .local v4, "headerCount":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_0

    .line 1075
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 1076
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 1078
    :cond_0
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    if-eqz v6, :cond_2

    .line 1079
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setMode(Z)V

    .line 1080
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    if-eqz v6, :cond_5

    .line 1081
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1082
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setAllItemChecked(Z)V

    .line 1083
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    .line 1089
    :cond_1
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    .line 1092
    :cond_2
    if-eqz v1, :cond_3

    iget v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mCheckedCount:I

    if-nez v6, :cond_6

    .line 1093
    :cond_3
    const/4 v3, 0x0

    .line 1094
    const/4 v2, 0x1

    .line 1116
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    .line 1117
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1118
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    invoke-interface {v6, v7}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onExistsDeletedItems(Z)V

    .line 1119
    return-void

    .line 1085
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_1

    .line 1086
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->restoreCheckState()V

    goto :goto_0

    .line 1095
    :cond_6
    sub-int v6, v1, v4

    iget v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mCheckedCount:I

    if-le v6, v7, :cond_7

    .line 1096
    const/4 v3, 0x0

    .line 1097
    const/4 v2, 0x0

    goto :goto_1

    .line 1099
    :cond_7
    const/4 v0, 0x0

    .line 1100
    .local v0, "checked":Z
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1101
    move v5, v4

    .line 1102
    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_4

    or-int v6, v3, v2

    if-eqz v6, :cond_4

    .line 1103
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 1104
    if-nez v0, :cond_8

    .line 1105
    const/4 v3, 0x0

    .line 1102
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1107
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 1111
    .end local v5    # "i":I
    :cond_9
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setAllItemChecked(Z)V

    .line 1112
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public updateSharedPrefs()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 394
    const-string v2, "ContactHistoryListFragment"

    const-string v3, "updateSharedPrefs()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 396
    .local v1, "isPhone":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 397
    .local v0, "isMMS":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 399
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    if-eqz v1, :cond_0

    .line 402
    new-array v2, v7, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_call"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 404
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 427
    :goto_0
    return-void

    .line 406
    :cond_0
    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 407
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    goto :goto_0

    .line 410
    :cond_1
    if-eqz v1, :cond_2

    .line 411
    const/4 v2, 0x4

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_call"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 413
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_message"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 414
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v7

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_im"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v8

    goto :goto_0

    .line 416
    :cond_2
    if-eqz v0, :cond_3

    .line 417
    new-array v2, v8, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 418
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_message"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 419
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 420
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_im"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v7

    goto :goto_0

    .line 422
    :cond_3
    new-array v2, v7, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 423
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 424
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_im"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto/16 :goto_0
.end method
