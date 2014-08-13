.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.super Landroid/app/Activity;
.source "LogsDeleteActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$ItemView;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final DONE_DELETE_LIST:I = 0x2

.field public static final MAKE_LIST_FINISH:I = 0x1

.field private static final QUERY_MAX_LEN:I = 0x64

.field public static final REJECTED_DELETE:Ljava/lang/String; = "VIP_Delete"

.field public static final REJECTED_RESTORE:Ljava/lang/String; = "VIP_Restore"

.field private static final TAG:Ljava/lang/String; = "LogsDeleteActivity"

.field private static final WHICH_OP_ALL_DELTE:I = 0x1

.field private static final WHICH_OP_MULTI_DELETE:I = 0x2

.field private static bDBChanged:Z

.field public static bVIP_Delete:Z

.field public static bVIP_Restore:Z

.field public static isSupportMultiWindow:Z

.field private static mDoneEable:Z


# instance fields
.field HEADER_VALUE:Ljava/lang/String;

.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field SIM_ID:Ljava/lang/String;

.field VIEW_BY:Ljava/lang/String;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

.field private customActionBarView:Landroid/view/View;

.field private deleteBtn:Landroid/view/View;

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field private empty_layout:Landroid/widget/LinearLayout;

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

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mBundle:Landroid/os/Bundle;

.field mCallHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteConfirmDlg:Landroid/app/AlertDialog;

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field private volatile mIsListDone:Z

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mNoLogs:Landroid/widget/TextView;

.field private mRemindTimeArray:[I

.field private mScrollState:I

.field private mShowDelProgressDlg:Z

.field private mSimId:I

.field private mViewBy:I

.field private tempCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DBG:Z

    .line 126
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    .line 128
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Delete:Z

    .line 135
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    .line 156
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    .line 165
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isSupportMultiWindow:Z

    return-void

    :cond_0
    move v0, v1

    .line 103
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    .line 139
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mShowDelProgressDlg:Z

    .line 586
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 588
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    .line 589
    const-string v0, "sim_id"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->SIM_ID:Ljava/lang/String;

    .line 591
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    .line 593
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    .line 595
    const-string v0, "header_value"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    .line 677
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHandler:Landroid/os/Handler;

    .line 1369
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1482
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCallHandler:Landroid/os/Handler;

    .line 1492
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mScrollState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mScrollState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mShowDelProgressDlg:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mShowDelProgressDlg:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 100
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->logsDBChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 4

    .prologue
    const v3, 0x7f0e02f4

    const/16 v2, 0x1e

    .line 497
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 499
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 500
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_1

    .line 501
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 502
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 508
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 509
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 510
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private logsDBChanged()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1507
    const/4 v6, 0x0

    .line 1509
    .local v6, "size":I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1512
    :cond_0
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->tempCursor:Landroid/database/Cursor;

    .line 1519
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->tempCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v6, v0, :cond_2

    .line 1520
    const/4 v0, 0x1

    .line 1522
    :goto_1
    return v0

    .line 1516
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->tempCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 1522
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onHomeSelected()V
    .locals 0

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    .line 584
    return-void
.end method

.method private setObserver()V
    .locals 4

    .prologue
    .line 1487
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1488
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 1489
    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1490
    return-void
.end method

.method private updateAllCheckState()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1407
    const/4 v3, 0x1

    .line 1408
    .local v3, "everyBodyIsOn":Z
    const/4 v2, 0x1

    .line 1409
    .local v2, "everyBodyIsOff":Z
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    if-nez v7, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1411
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 1413
    .local v1, "dataCount":I
    sget-boolean v7, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DBG:Z

    if-eqz v7, :cond_1

    .line 1414
    const-string v7, "LogsDeleteActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "headerviewsconut : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dataCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 1417
    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    or-int v7, v3, v2

    if-eqz v7, :cond_4

    .line 1418
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 1419
    .local v5, "id":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    .line 1420
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 1421
    .local v0, "checked":Z
    if-nez v0, :cond_3

    .line 1422
    const/4 v3, 0x0

    .line 1417
    .end local v0    # "checked":Z
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1424
    .restart local v0    # "checked":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1427
    .end local v0    # "checked":Z
    .end local v5    # "id":J
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v7, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1428
    if-eqz v2, :cond_6

    .line 1429
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v7, :cond_5

    .line 1430
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1432
    :cond_5
    sput-boolean v10, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    goto :goto_0

    .line 1435
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v7, :cond_7

    .line 1436
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1438
    :cond_7
    sput-boolean v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    goto :goto_0
.end method

.method private updateWindowLayout()V
    .locals 7

    .prologue
    const v6, 0x7f0c01d2

    const/16 v5, 0x35

    const/4 v4, -0x1

    const v3, 0x3ecccccd

    .line 1545
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1546
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 1547
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1548
    .local v0, "param":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1549
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1550
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1574
    :goto_0
    return-void

    .line 1553
    .end local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1554
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 1555
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1556
    .restart local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1557
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1559
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1561
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1572
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f040089

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 1564
    .end local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 1565
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1566
    .restart local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1568
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1570
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method public CancelIsClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v0, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    .line 1215
    return-void
.end method

.method public DeleteIsClicked(Landroid/view/View;)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1181
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v3, :cond_0

    .line 1182
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1183
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 1186
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1187
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1189
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1190
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1191
    .local v1, "viewid":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 1192
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    .end local v1    # "viewid":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1198
    const v3, 0x7f0e034d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    .line 1206
    :goto_1
    return-void

    .line 1200
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 1201
    const v3, 0x7f0e034b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_1

    .line 1203
    :cond_4
    const v3, 0x7f0e034c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public RestoreIsClicked(Landroid/view/View;)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1150
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v3, :cond_0

    .line 1151
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1152
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 1155
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1156
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1158
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1159
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1160
    .local v1, "viewid":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 1161
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    .end local v1    # "viewid":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1167
    const v3, 0x7f0e04cb

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showRestoreConfirmDlg(Ljava/lang/String;I)V

    .line 1175
    :goto_1
    return-void

    .line 1169
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 1170
    const v3, 0x7f0e04c9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showRestoreConfirmDlg(Ljava/lang/String;I)V

    goto :goto_1

    .line 1172
    :cond_4
    const v3, 0x7f0e04ca

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showRestoreConfirmDlg(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public clickHandler(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1338
    :goto_0
    return-void

    .line 1324
    :pswitch_0
    const-string v4, "LogsDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickhandler"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 1326
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1327
    .local v0, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1328
    .local v1, "position":I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1330
    .local v2, "sba":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1331
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 1332
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V

    goto :goto_0

    .line 1322
    nop

    :pswitch_data_0
    .packed-switch 0x7f09009e
        :pswitch_0
    .end packed-switch
.end method

.method public hasMultiWindwoFeature()Z
    .locals 4

    .prologue
    .line 1577
    const/4 v2, 0x0

    .line 1579
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1580
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 1581
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 1587
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 1583
    :catch_0
    move-exception v0

    .line 1584
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f090091

    const v3, 0x7f09008d

    const/16 v2, 0x8

    .line 433
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 435
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->invalidateOptionsMenu()V

    .line 437
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_2

    .line 438
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 439
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateWindowLayout()V

    .line 451
    :cond_1
    return-void

    .line 442
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0209c0

    const/16 v1, 0x400

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    .line 191
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->hasMultiWindwoFeature()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isSupportMultiWindow:Z

    .line 198
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isSupportMultiWindow:Z

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 203
    :cond_1
    iput-object p0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;

    .line 205
    const v0, 0x7f04018e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setContentView(I)V

    .line 207
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->configureActionBar()V

    .line 211
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIP_Restore"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIP_Delete"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Delete:Z

    .line 215
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Delete:Z

    if-ne v0, v2, :cond_6

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 217
    .local v6, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 218
    const v0, 0x7f0e02f4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setTitle(I)V

    .line 228
    .end local v6    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 229
    const-string v0, "LogsDeleteActivity"

    const-string v1, "mDeleteConfirmDlg cancel() at onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 231
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 234
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_7

    .line 235
    :cond_4
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    .line 241
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 244
    .local v9, "view":Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 246
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 248
    const v0, 0x7f040188

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    const v1, 0x7f090381

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 281
    .local v8, "i":Landroid/content/Intent;
    if-nez p1, :cond_8

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    .line 287
    :goto_2
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->SIM_ID:Ljava/lang/String;

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    iget v10, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    invoke-static {v3, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 311
    :goto_3
    const v0, 0x7f090381

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 313
    .local v7, "allChBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    sput-boolean v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 316
    invoke-virtual {v7, v11}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 318
    :cond_5
    return-void

    .line 220
    .end local v7    # "allChBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v9    # "view":Landroid/view/View;
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-ne v0, v2, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 222
    .restart local v6    # "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 223
    const v0, 0x7f0e04c5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setTitle(I)V

    goto/16 :goto_0

    .line 238
    .end local v6    # "actionBar":Landroid/app/ActionBar;
    :cond_7
    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    .line 284
    .restart local v8    # "i":Landroid/content/Intent;
    .restart local v9    # "view":Landroid/view/View;
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    goto :goto_2

    .line 295
    :cond_9
    const-string v5, ""

    .line 298
    .local v5, "sortOrder":Ljava/lang/String;
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 299
    const-string v5, "date DESC, _id DESC"

    .line 307
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 300
    :cond_a
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 302
    :cond_b
    const-string v5, "_id DESC"

    goto :goto_4

    .line 304
    :cond_c
    const-string v5, "date DESC"

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 523
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 524
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 525
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 526
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 527
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 529
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 402
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->tempCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->tempCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 412
    const-string v0, "LogsDeleteActivity"

    const-string v1, "mDeleteConfirmDlg cancel() at onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 414
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 416
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 418
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 422
    packed-switch p1, :pswitch_data_0

    .line 428
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 422
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 1528
    const-string v0, "LogsDeleteActivity"

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

    .line 1529
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 1530
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateWindowLayout()V

    .line 1532
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 546
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 567
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 548
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    goto :goto_0

    .line 551
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    goto :goto_0

    .line 554
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const-string v1, "LogsDeleteActivity"

    const-string v2, "mDeleteConfirmDlg is showing"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    :cond_0
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v1, :cond_1

    .line 559
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->RestoreIsClicked(Landroid/view/View;)V

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DeleteIsClicked(Landroid/view/View;)V

    goto :goto_0

    .line 546
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 173
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 182
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 536
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0e04c5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 541
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0e02f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 620
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 621
    if-nez p1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 626
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    if-eqz v4, :cond_0

    .line 630
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 631
    .local v3, "itemCnt":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 632
    .local v2, "isHeaderChecked":Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 633
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    .line 635
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 636
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->SIM_ID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    .line 638
    :cond_2
    if-lez v3, :cond_3

    .line 639
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 640
    .local v0, "checkedarray":[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 641
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    aget-boolean v5, v0, v1

    invoke-virtual {v4, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 645
    .end local v0    # "checkedarray":[Z
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V

    .line 646
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 322
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setObserver()V

    .line 323
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "currentCountryIso":Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIP_Restore"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIP_Delete"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Delete:Z

    .line 335
    :cond_0
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "voiceMailNumber":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-nez v0, :cond_1

    .line 344
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 351
    const-string v0, "LogsDeleteActivity"

    const-string v1, "on resume() checking allItemChecked....."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setAllItemChecked(Z)V

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->startCheckProcessing()V

    .line 357
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 391
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_4

    .line 392
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateWindowLayout()V

    .line 395
    :cond_4
    return-void

    .line 339
    .end local v3    # "voiceMailNumber":Ljava/lang/String;
    :cond_5
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "voiceMailNumber":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 599
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 601
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 602
    .local v3, "itemCnt":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    .line 604
    .local v2, "isHeaderChecked":Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 607
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->SIM_ID:Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    :cond_0
    new-array v0, v3, [Z

    .line 611
    .local v0, "checkedArray":[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 612
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    aput-boolean v4, v0, v1

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 615
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 616
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 1541
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 1537
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .param p1, "bCheckStatus"    # Z

    .prologue
    .line 1395
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1397
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1398
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1400
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    .line 1401
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1403
    :cond_1
    sput-boolean p1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    .line 1404
    return-void
.end method

.method public setCustomMenuText()V
    .locals 7

    .prologue
    const v6, 0x7f090117

    const v5, 0x7f09011a

    const v4, 0x7f090116

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 494
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 469
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x258

    if-gt v0, v1, :cond_2

    .line 470
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 482
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showDeleteConfirmDlg(Ljava/lang/String;I)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "iOpIndex"    # I

    .prologue
    .line 1273
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1275
    .local v0, "deleteLogsCount":I
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1276
    const v2, 0x7f0e0343

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1280
    .local v1, "title":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02f4

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$9;

    invoke-direct {v4, p0, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$9;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02d4

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 1318
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1319
    return-void

    .line 1278
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0e0344

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1343
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1348
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f0e04cc

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1355
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1367
    return-void

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f0e0221

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showRestoreConfirmDlg(Ljava/lang/String;I)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "iOpIndex"    # I

    .prologue
    .line 1220
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1223
    .local v0, "restoreLogsCount":I
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1224
    const v2, 0x7f0e04c7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, "title":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e04c5

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;

    invoke-direct {v4, p0, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02d4

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 1267
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1268
    return-void

    .line 1226
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0e04c8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public startCheckProcessing()V
    .locals 2

    .prologue
    .line 653
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    .line 654
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 669
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 670
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 671
    return-void
.end method
