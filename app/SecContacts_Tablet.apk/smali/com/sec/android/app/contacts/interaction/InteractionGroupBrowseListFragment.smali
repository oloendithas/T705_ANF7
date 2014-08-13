.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
.super Landroid/app/Fragment;
.source "InteractionGroupBrowseListFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;,
        Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_KEY_GROUP_INFO:Ljava/lang/String; = "groupInfo"

.field private static final EXTRA_KEY_REQUEST:Ljava/lang/String; = "request"

.field private static final GOOGLE_ACCOUNT_DUMMY_DATA:Ljava/lang/String; = "xxx"

.field private static final GOOGLE_PLUS_DATA_SET:Ljava/lang/String; = "plus"

.field static final GROUP_ACCOUNT_NAME_COLUMN_INDEX:I = 0x2

.field static final GROUP_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x3

.field static final GROUP_DATA_SET_COLUMN_INDEX:I = 0x4

.field static final GROUP_ID_COLUMN_INDEX:I = 0x0

.field static final GROUP_LIST_PROJECTION:[Ljava/lang/String;

.field static final GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

.field static final GROUP_SYSTEM_ID_COLUMN_INDEX:I = 0x5

.field static final GROUP_TITLE_COLUMN_INDEX:I = 0x1

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_CURRENT_COUNT:Ljava/lang/String; = "existingRecipientCount"

.field private static final KEY_LIMITED_COUNT:Ljava/lang/String; = "maxRecipientCount"

.field private static final KEY_SEND_MESSAGE:Ljava/lang/String; = "FromMMS"

.field private static final QUERY_TOKEN_ACCOUNTS:I = 0x2c

.field private static final QUERY_TOKEN_GOOGLE_PLUS:I = 0x2b

.field private static final QUERY_TOKEN_INTEGRATED_GROUPS:I = 0x2e

.field private static final QUERY_TOKEN_NOT_ASSIGNED_GROUPS:I = 0x2a

.field private static final REQUEST_COMMTOOL_GROUP:I = 0x2

.field private static final REQUEST_GROUP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InteractionGroupBrowseListFragment"


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mActionCode:I

.field private mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

.field private mCallingPackage:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private mHugeFontSize:I

.field private mIsGroupConference:Z

.field private mIsHugeFontMode:Z

.field private mIsSendingMSG:Z

.field private mIsTwoPaneMode:Z

.field private mLimitedCount:I

.field private mList:Landroid/widget/ExpandableListView;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mRootView:Landroid/view/View;

.field private mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mSelectionToScreenRequested:Z

.field private mSyncStatusObserver:Landroid/database/ContentObserver;

.field private mVideoCallExistFlag:Z

.field private mfromActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    .line 131
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsGroupConference:Z

    .line 114
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsSendingMSG:Z

    .line 163
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectionToScreenRequested:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectionToScreenRequested:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsHugeFontMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mHugeFontSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mVideoCallExistFlag:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method private registerSyncStatusObserver()V
    .locals 4

    .prologue
    .line 193
    const-string v1, "content://com.android.contacts/check_photo_updates"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 194
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    return-void
.end method

.method private unregisterSyncStatusObserver()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 199
    return-void
.end method


# virtual methods
.method protected applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2
    .param p1, "builder"    # Landroid/net/Uri$Builder;

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    const-string v0, "requesting_package"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1233
    .end local p1    # "builder":Landroid/net/Uri$Builder;
    :cond_0
    return-object p1
.end method

.method public getContactsRequest()Lcom/android/contacts/list/ContactsRequest;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method public getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1496
    if-nez p2, :cond_1

    .line 1497
    const/4 v1, 0x0

    .line 1530
    :cond_0
    :goto_0
    return-object v1

    .line 1500
    :cond_1
    const-string v2, "title"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1501
    .local v1, "title":Ljava/lang/String;
    const-string v2, "system_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1502
    .local v0, "systemId":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PersonalGroup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1507
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1509
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1510
    const v2, 0x7f0e009c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1526
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

    .line 1527
    const v2, 0x7f0e012d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1511
    :cond_4
    const-string v2, "ICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1512
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1513
    const v2, 0x7f0e0262

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1516
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1520
    const v2, 0x7f0e0015

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1522
    :cond_6
    const v2, 0x7f0e0261

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 225
    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 227
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "[Interaction]onActivityResult REQUEST_GROUP"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz p3, :cond_1

    .line 230
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "[Interaction]onActivityResult setResult"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 233
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 237
    :pswitch_1
    if-ne p2, v2, :cond_0

    .line 238
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "[Interaction]onActivityResult REQUEST_COMMTOOL_GROUP"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-eqz p3, :cond_2

    .line 240
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "[Interaction]onActivityResult startActivity"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 243
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1576
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1577
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 1578
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 1579
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 1581
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->registerSyncStatusObserver()V

    .line 1583
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z

    .line 1584
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 16
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 1240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v13, v0, v1}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v10

    .line 1241
    .local v10, "c":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1242
    const-string v13, "InteractionGroupBrowseListFragment"

    const-string v14, "onChildClick : cursor is null"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/4 v13, 0x0

    .line 1281
    :goto_0
    return v13

    .line 1246
    :cond_0
    const/4 v13, 0x3

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1247
    .local v3, "accountType":Ljava/lang/String;
    const/4 v13, 0x2

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1248
    .local v4, "accountName":Ljava/lang/String;
    const/4 v13, 0x4

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1250
    .local v5, "dataSet":Ljava/lang/String;
    const-string v13, "xxx"

    const/4 v14, 0x5

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1251
    const/4 v13, 0x0

    goto :goto_0

    .line 1254
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCount(I)I

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "com.google"

    if-eq v13, v3, :cond_2

    .line 1257
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1258
    .local v6, "groupId":J
    const/4 v13, 0x1

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1259
    .local v8, "title":Ljava/lang/String;
    const/4 v13, 0x5

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1260
    .local v9, "systemId":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1261
    .local v12, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1263
    .local v2, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v11

    .line 1265
    .local v11, "groupType":I
    const-string v13, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    const-string v13, "GroupInfo"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1267
    const-string v13, "actionCode"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mActionCode:I

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1268
    const-string v13, "maxRecipientCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mLimitedCount:I

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1269
    const-string v13, "existingRecipientCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCurrentCount:I

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1270
    const-string v13, "SelectMode"

    invoke-virtual {v12, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1271
    const-string v13, "mIsRightAlignmentNeeded"

    const-string v14, "AddGlanceListActivity"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mfromActivity:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1272
    const-string v13, "toolitem"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v14}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v13}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v13

    const/16 v14, 0x21

    if-lt v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v13}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v13

    const/16 v14, 0x26

    if-gt v13, v14, :cond_3

    .line 1275
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1281
    .end local v2    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v6    # "groupId":J
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "systemId":Ljava/lang/String;
    .end local v11    # "groupType":I
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1277
    .restart local v2    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .restart local v6    # "groupId":J
    .restart local v8    # "title":Ljava/lang/String;
    .restart local v9    # "systemId":Ljava/lang/String;
    .restart local v11    # "groupType":I
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1538
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    if-eqz p3, :cond_1

    .line 1541
    const-string v0, "groupInfo"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1542
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 1546
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 1548
    :cond_0
    const-string v0, "request"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 1550
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCallingPackage:Ljava/lang/String;

    .line 1552
    const v0, 0x7f04014d

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRootView:Landroid/view/View;

    .line 1554
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    .line 1555
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1559
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1563
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1564
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mfromActivity:Ljava/lang/String;

    .line 1566
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1567
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 1571
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1588
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->cancelQuery()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$1600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->closeAllCursor()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$1700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 1592
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->unregisterSyncStatusObserver()V

    .line 1593
    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 1594
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 15
    .param p1, "l"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1286
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v12

    move/from16 v0, p3

    invoke-interface {v12, v0}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 1287
    .local v9, "c":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1288
    const-string v12, "InteractionGroupBrowseListFragment"

    const-string v13, "onGroupClick : cursor is null"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v12, 0x0

    .line 1350
    :goto_0
    return v12

    .line 1292
    :cond_0
    const/4 v12, 0x3

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1293
    .local v2, "accountType":Ljava/lang/String;
    const/4 v12, 0x2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1294
    .local v3, "accountName":Ljava/lang/String;
    const/4 v12, 0x4

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1296
    .local v4, "dataSet":Ljava/lang/String;
    const-string v12, "xxx"

    const/4 v13, 0x5

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1297
    const/4 v12, 0x0

    goto :goto_0

    .line 1302
    :cond_1
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCount(I)I

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "com.google"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "com.android.nttdocomo"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "KDDI"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "com.kddi.ast.auoneid"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1311
    :cond_3
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1312
    .local v5, "groupId":J
    const/4 v12, 0x1

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1313
    .local v7, "title":Ljava/lang/String;
    const/4 v12, 0x5

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1314
    .local v8, "systemId":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v11, "intent":Landroid/content/Intent;
    const-string v12, "VideoCalling"

    const/4 v13, 0x3

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1317
    const-string v12, "InteractionGroupBrowseListFragment"

    const-string v13, "onGroupClick - Video Calling"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const-string v12, "InteractionGroupBrowseListFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "groupId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const-string v2, "VideoCalling"

    .line 1320
    const-string v3, "VideoCalling"

    .line 1321
    const/4 v4, 0x0

    .line 1322
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0021

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1323
    const/4 v8, 0x0

    .line 1325
    :cond_4
    new-instance v1, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1327
    .local v1, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v10

    .line 1329
    .local v10, "groupType":I
    const-string v12, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    const-string v12, "GroupInfo"

    invoke-virtual {v11, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1331
    const-string v12, "actionCode"

    iget v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mActionCode:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1332
    const-string v12, "maxRecipientCount"

    iget v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mLimitedCount:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1333
    const-string v12, "existingRecipientCount"

    iget v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCurrentCount:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1334
    const-string v12, "SelectMode"

    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1335
    const-string v12, "isGroupConference"

    iget-boolean v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsGroupConference:Z

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1336
    const-string v12, "mIsRightAlignmentNeeded"

    const-string v13, "AddGlanceListActivity"

    iget-object v14, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mfromActivity:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1338
    const-string v12, "FromMMS"

    iget-boolean v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsSendingMSG:Z

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1339
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz v12, :cond_5

    .line 1340
    const-string v12, "toolitem"

    iget-object v13, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v13}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1342
    :cond_5
    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v12

    const/16 v13, 0x21

    if-lt v12, v13, :cond_7

    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v12

    const/16 v13, 0x26

    if-gt v12, v13, :cond_7

    .line 1344
    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1350
    .end local v1    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v5    # "groupId":J
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "systemId":Ljava/lang/String;
    .end local v10    # "groupType":I
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1346
    .restart local v1    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .restart local v5    # "groupId":J
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "systemId":Ljava/lang/String;
    .restart local v10    # "groupType":I
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_7
    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 210
    const-string v4, "InteractionGroupBrowseListFragment"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 214
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "huge_font"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, "flagHugeFont":I
    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsHugeFontMode:Z

    .line 216
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mHugeFontSize:I

    .line 217
    return-void

    :cond_0
    move v2, v3

    .line 215
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1606
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1607
    const-string v0, "groupInfo"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1608
    const-string v0, "request"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1609
    return-void
.end method

.method protected requestSelectionToScreen()V
    .locals 3

    .prologue
    .line 1598
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition()I

    move-result v0

    .line 1599
    .local v0, "selectedPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1600
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1602
    :cond_0
    return-void
.end method

.method public setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/list/ContactsRequest;

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 1641
    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0
    .param p1, "ActionCode"    # I
    .param p2, "LimitedCount"    # I
    .param p3, "CurrentCount"    # I

    .prologue
    .line 1613
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mActionCode:I

    .line 1614
    iput p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mLimitedCount:I

    .line 1615
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mCurrentCount:I

    .line 1616
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .param p1, "FromMMS"    # Z

    .prologue
    .line 1625
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsSendingMSG:Z

    .line 1626
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 1645
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1649
    :cond_0
    return-void
.end method

.method public setVTConferenceMode(Z)V
    .locals 0
    .param p1, "isConferenceMode"    # Z

    .prologue
    .line 1619
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsGroupConference:Z

    .line 1620
    return-void
.end method
