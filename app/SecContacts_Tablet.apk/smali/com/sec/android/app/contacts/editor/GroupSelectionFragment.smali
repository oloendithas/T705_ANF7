.class public Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
.super Landroid/app/ListFragment;
.source "GroupSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_PHONE:Ljava/lang/String; = "vnd.sec.contact.phone"

.field private static final TAG:Ljava/lang/String; = "SelectGroupFragment"

.field public static mHasPhoneNumber:Z

.field private static mSystemTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOADER_COUNT:I

.field private final LOADER_META_DATA:I

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

.field private mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

.field mCheckedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedGroupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactId:J

.field private mContext:Landroid/content/Context;

.field private mCreateFieldButton:Landroid/widget/Button;

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private mICEMemberCount:I

.field private mIsContainGoogle:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private final mMemberCountLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mICEMemberCount:I

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->LOADER_COUNT:I

    .line 208
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->LOADER_META_DATA:I

    .line 480
    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 542
    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mMemberCountLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 900
    return-void
.end method

.method private UpdateItems(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "curGroupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 590
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v10, "defaultcheckedGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    .line 606
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "_id"

    aput-object v13, v2, v12

    const/4 v12, 0x1

    const-string v13, "auto_add"

    aput-object v13, v2, v12

    const-string v3, "auto_add = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 614
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 616
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 618
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 622
    .local v8, "defaultGroupId":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 600
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "defaultGroupId":J
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 626
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 633
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-nez p1, :cond_4

    .line 634
    const-string v0, "SelectGroupFragment"

    const-string v12, "UpdateItems, curGroupMetaData is null. mItems will be empty ArrayList"

    invoke-static {v0, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_3
    return-void

    .line 637
    :cond_4
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 641
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 647
    .local v1, "groupId":J
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 649
    .local v6, "realTitle":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 651
    .local v3, "title":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 653
    .local v11, "systemId":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 655
    .local v4, "checked":Z
    const/4 v5, 0x0

    .line 659
    .local v5, "enabled":Z
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 661
    const/4 v5, 0x0

    .line 670
    :goto_3
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "PersonalGroup"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 671
    :cond_6
    iget-object v12, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 665
    :cond_7
    const/4 v5, 0x1

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->UpdateItems(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->considerBindData()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateHeaderUnCheckState()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method private considerBindData()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    if-nez v0, :cond_2

    .line 387
    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f040156

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 405
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 407
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 439
    :goto_5
    return-void

    :cond_1
    move v0, v2

    .line 379
    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->notifyDataSetChanged()V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->forceLayout()V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 405
    goto :goto_2

    :cond_4
    move v0, v2

    .line 407
    goto :goto_3

    :cond_5
    move v1, v2

    .line 409
    goto :goto_4

    .line 413
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_7

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_5

    .line 425
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_5
.end method

.method public static covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 852
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 853
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 856
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    .line 860
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 862
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Friends"

    const v2, 0x7f0e028d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Family"

    const v2, 0x7f0e028e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Coworkers"

    const v2, 0x7f0e028f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "My Contacts"

    const v2, 0x7f0e0290

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    :cond_2
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 873
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "ICE"

    const v2, 0x7f0e0262

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_3
    :goto_0
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 890
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 896
    :goto_1
    return-object v0

    .line 877
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 878
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "ICE"

    const v2, 0x7f0e0015

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 880
    :cond_5
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "ICE"

    const v2, 0x7f0e0261

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    move-object v0, p1

    .line 896
    goto :goto_1
.end method

.method private getGoogleAccounts()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 342
    .local v0, "accountTypemanager":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private updateAllUnCheckState()V
    .locals 3

    .prologue
    .line 759
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 767
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 769
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 771
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 773
    :cond_2
    return-void
.end method

.method private updateHeaderUnCheckState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, "checkedcount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 783
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 787
    add-int/lit8 v0, v0, 0x1

    .line 781
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    :cond_1
    if-gtz v0, :cond_2

    .line 797
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 803
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    if-eqz v2, :cond_4

    .line 805
    if-gtz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 807
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    .line 817
    :cond_4
    :goto_1
    return-void

    .line 811
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getSelecedGroupId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedGroupTitle()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 445
    const-string v0, "hasPhoneNumber"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHasPhoneNumber:Z

    .line 447
    const-string v0, "android.intent.extra.CONTACT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    .line 449
    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 453
    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    .line 459
    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    .line 461
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountName:Ljava/lang/String;

    .line 462
    const-string v0, "account_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountType:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    .line 472
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 369
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "show_ICE"

    sget-boolean v2, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHasPhoneNumber:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mMemberCountLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 371
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 354
    instance-of v0, p1, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 356
    check-cast v0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    .line 360
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    .line 362
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    const-string v0, "SelectGroupFragment"

    const-string v1, "========== onCreate(Bundle savedInstanceState) =========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    .line 229
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 239
    const-string v0, "SelectGroupFragment"

    const-string v1, "========== onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedState) =========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflater = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const v0, 0x7f040155

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    .line 255
    const v0, 0x7f040156

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f09031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0250

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f09018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x7f090318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCreateFieldButton:Landroid/widget/Button;

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCreateFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const v7, 0x7f09018d

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 685
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 689
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 693
    .local v0, "headerCount":I
    if-nez p3, :cond_5

    .line 695
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-nez v2, :cond_2

    .line 697
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 699
    .local v1, "isheaderchecked":Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 701
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 705
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    .line 715
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 716
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 718
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateAllUnCheckState()V

    .line 751
    .end local v1    # "isheaderchecked":Ljava/lang/Boolean;
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->notifyDataSetChanged()V

    .line 753
    return-void

    .restart local v1    # "isheaderchecked":Ljava/lang/Boolean;
    :cond_3
    move v2, v4

    .line 699
    goto :goto_0

    .line 709
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mActivity:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setDoneButtonStatus(Z)V

    goto :goto_1

    .line 724
    .end local v1    # "isheaderchecked":Ljava/lang/Boolean;
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 726
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2, v4}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 728
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 729
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 731
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 743
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 744
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 747
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateHeaderUnCheckState()V

    goto :goto_2

    .line 735
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 737
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 738
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v4, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 330
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 334
    :cond_0
    return-void
.end method

.method public updateGroup()V
    .locals 6

    .prologue
    .line 823
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    if-nez v1, :cond_0

    .line 825
    const-string v1, "SelectGroupFragment"

    const-string v2, "updateAggregatedGroup, mAdapter is null so do not reset action."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :goto_0
    return-void

    .line 831
    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;Landroid/content/Context;JLcom/sec/android/touchwiz/widget/TwCheckBox;)V

    .line 832
    .local v0, "updateGroupTask":Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
