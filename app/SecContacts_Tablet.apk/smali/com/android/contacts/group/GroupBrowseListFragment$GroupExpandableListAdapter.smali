.class public final Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GroupExpandableListAdapter"
.end annotation


# instance fields
.field mAUIDCursor:Landroid/database/Cursor;

.field mAccountsCursor:Landroid/database/Cursor;

.field mCursor:Landroid/database/Cursor;

.field mDocomoCursor:Landroid/database/Cursor;

.field mGoogleAccountsCursor:Landroid/database/Cursor;

.field mIceCount:I

.field mIntegratedGroupCursor:Landroid/database/Cursor;

.field mIsAutoAdd:Z

.field mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

.field mNotAssignedGroupCursor:Landroid/database/Cursor;

.field mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

.field mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field mSelectionVisible:Z

.field mVideoGroupCursor:Landroid/database/Cursor;

.field subTitlePosition:I

.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 1037
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 1024
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    .line 1026
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIceCount:I

    .line 1038
    new-instance v0, Lcom/sec/android/app/contacts/ListHoverManager;

    invoke-direct {v0, p2}, Lcom/sec/android/app/contacts/ListHoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    .line 1039
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {p1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1202(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    .line 1040
    return-void
.end method

.method private MergeAllCursor()Landroid/database/Cursor;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2003
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2005
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-nez v8, :cond_5

    .line 2007
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_1

    move v1, v6

    .line 2008
    .local v1, "result1":Z
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_2

    move v2, v6

    .line 2009
    .local v2, "result2":Z
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_3

    move v3, v6

    .line 2010
    .local v3, "result3":Z
    :goto_2
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-nez v8, :cond_4

    move v4, v6

    .line 2011
    .local v4, "result4":Z
    :goto_3
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group cursor is null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google cursor is  null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account cursor is  null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "docome cursor is  null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    .end local v4    # "result4":Z
    :goto_4
    return-object v0

    :cond_1
    move v1, v7

    .line 2007
    goto :goto_0

    .restart local v1    # "result1":Z
    :cond_2
    move v2, v7

    .line 2008
    goto :goto_1

    .restart local v2    # "result2":Z
    :cond_3
    move v3, v7

    .line 2009
    goto :goto_2

    .restart local v3    # "result3":Z
    :cond_4
    move v4, v7

    .line 2010
    goto :goto_3

    .line 2017
    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2019
    :cond_6
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "docomo cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2027
    :cond_7
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    aput-object v9, v8, v7

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    aput-object v7, v8, v6

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v10

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v11

    invoke-direct {v0, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 2032
    .local v0, "cursor":Landroid/database/Cursor;
    goto/16 :goto_4

    .line 2035
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "KDDI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2038
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    if-nez v8, :cond_e

    .line 2040
    :cond_9
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_a

    move v1, v6

    .line 2041
    .restart local v1    # "result1":Z
    :goto_5
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_b

    move v2, v6

    .line 2042
    .restart local v2    # "result2":Z
    :goto_6
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_c

    move v3, v6

    .line 2043
    .restart local v3    # "result3":Z
    :goto_7
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    if-nez v8, :cond_d

    move v4, v6

    .line 2044
    .restart local v4    # "result4":Z
    :goto_8
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group cursor is null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google cursor is  null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account cursor is  null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "auID cursor is  null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    .end local v4    # "result4":Z
    :cond_a
    move v1, v7

    .line 2040
    goto :goto_5

    .restart local v1    # "result1":Z
    :cond_b
    move v2, v7

    .line 2041
    goto :goto_6

    .restart local v2    # "result2":Z
    :cond_c
    move v3, v7

    .line 2042
    goto :goto_7

    .restart local v3    # "result3":Z
    :cond_d
    move v4, v7

    .line 2043
    goto :goto_8

    .line 2050
    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    :cond_e
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2052
    :cond_f
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "auID cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2060
    :cond_10
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    aput-object v9, v8, v7

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    aput-object v7, v8, v6

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v10

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v11

    invoke-direct {v0, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 2065
    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_4

    .line 2102
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_11
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_17

    .line 2104
    :cond_12
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_13

    move v1, v6

    .line 2105
    .restart local v1    # "result1":Z
    :goto_9
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_14

    move v2, v6

    .line 2106
    .restart local v2    # "result2":Z
    :goto_a
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_15

    move v3, v6

    .line 2107
    .restart local v3    # "result3":Z
    :goto_b
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_16

    move v5, v6

    .line 2108
    .local v5, "result5":Z
    :goto_c
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group cursor is null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google cursor is  null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account cursor is  null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "integrated cursor is  null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    .end local v5    # "result5":Z
    :cond_13
    move v1, v7

    .line 2104
    goto :goto_9

    .restart local v1    # "result1":Z
    :cond_14
    move v2, v7

    .line 2105
    goto :goto_a

    .restart local v2    # "result2":Z
    :cond_15
    move v3, v7

    .line 2106
    goto :goto_b

    .restart local v3    # "result3":Z
    :cond_16
    move v5, v7

    .line 2107
    goto :goto_c

    .line 2114
    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    :cond_17
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2116
    :cond_18
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "integrated group cursor is closed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2127
    :cond_19
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    aput-object v9, v8, v7

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    aput-object v7, v8, v6

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v10

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v11

    invoke-direct {v0, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 2132
    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_4
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->sendMessage(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->editGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->sendEmail(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startGooglePlusQuery()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGoogleAccountInfo(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getDocomoAccountInfo()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getAUIDAccountInfo()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->MergeAllCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePositon(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getParentPostion(Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->cancelQuery()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->closeAllCursor()V

    return-void
.end method

.method private cancelQuery()V
    .locals 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->cancelOperation(I)V

    .line 1857
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->cancelOperation(I)V

    .line 1858
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->cancelOperation(I)V

    .line 1859
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->cancelOperation(I)V

    .line 1861
    :cond_0
    return-void
.end method

.method private checkAutoGroup()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1090
    new-instance v0, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;-><init>()V

    .line 1091
    .local v0, "agh":Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1093
    .local v2, "matrixCursor":Landroid/database/MatrixCursor;
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;->getGroupCountcursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v3

    .line 1094
    .local v3, "videoCallingCountCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1095
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1096
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1097
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "VideoCalling"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "VideoCalling"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v7, v4, v5

    const/4 v5, 0x6

    aput-object v7, v4, v5

    const/4 v5, 0x7

    aput-object v7, v4, v5

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1107
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1110
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1112
    .end local v1    # "i":I
    :cond_1
    return-object v2

    .line 1096
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private closeAllCursor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2138
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "closeallCursor"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2144
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 2145
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2146
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    .line 2149
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 2150
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2151
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    .line 2154
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 2155
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2156
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    .line 2159
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 2160
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2161
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    .line 2165
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 2168
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2169
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    .line 2173
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 2177
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2178
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    .line 2180
    :cond_6
    return-void
.end method

.method private createMenuWidgetFromView(Landroid/view/View;Landroid/database/Cursor;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    .line 2220
    invoke-direct {p0, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    .line 2221
    .local v1, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move v2, v3

    .line 2223
    .local v2, "hasMember":Z
    :goto_0
    new-instance v0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getAdapterMenuList(Lcom/sec/android/app/contacts/group/GroupInfo;Z)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v4

    invoke-direct {v0, p1, v4, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 2225
    .local v0, "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 2226
    new-instance v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;ZLcom/sec/android/app/contacts/group/GroupInfo;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    .line 2251
    return-object v0

    .line 2221
    .end local v0    # "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .end local v2    # "hasMember":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private editGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 3
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 2311
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2312
    .local v0, "editGroupIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2313
    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2314
    const-string v1, "com.google"

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2315
    const-string v1, "EditMode"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2319
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2320
    return-void

    .line 2317
    :cond_0
    const-string v1, "EditMode"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getAUIDAccountInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1971
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1973
    .local v3, "accountSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1974
    .local v0, "AUIDAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 1976
    .local v4, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1977
    .local v1, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v6, "com.kddi.ast.auoneid"

    iget-object v7, v1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1978
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1981
    .end local v1    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1983
    .restart local v1    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1986
    .local v2, "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    iget-object v6, v1, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1988
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1989
    iget-object v6, v1, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    iget-object v6, v1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    iget-object v6, v1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    const-string v6, "xxx"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1998
    .end local v1    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v6, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;

    sget-object v7, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v7, v3}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    .line 1999
    return-void
.end method

.method private getAdapterMenuList(Lcom/sec/android/app/contacts/group/GroupInfo;Z)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 7
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p2, "hasMember"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2256
    .local v0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;>;"
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2258
    .local v1, "title":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2259
    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0208cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0233

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2262
    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0208cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0232

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2266
    :cond_0
    const-string v2, "Not Assigned"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const-string v2, "com.google"

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "xxx"

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2278
    :cond_1
    :goto_0
    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>(Ljava/util/ArrayList;)V

    return-object v2

    .line 2273
    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02089a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e03e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAllGoogleAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1897
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1898
    .local v2, "googleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 1900
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1901
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.google"

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1902
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1906
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v2
.end method

.method private getDocomoAccountInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1939
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1941
    .local v2, "accountSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1942
    .local v4, "docomoAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 1944
    .local v3, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1945
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v6, "com.android.nttdocomo"

    iget-object v7, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1946
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1949
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1951
    .restart local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1954
    .local v1, "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1955
    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1956
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1958
    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    const-string v6, "xxx"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1964
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1966
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1    # "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v6, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;

    sget-object v7, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    .line 1967
    return-void
.end method

.method private getGoogleAccountInfo(Z)V
    .locals 8
    .param p1, "shouldGooglePlusVisible"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1910
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1912
    .local v2, "accountSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v3

    .line 1913
    .local v3, "googleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1914
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v5, "plus"

    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_0

    .line 1918
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1921
    .local v1, "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1925
    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1926
    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    const-string v5, "xxx"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1933
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1    # "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v5, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;

    sget-object v6, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    .line 1934
    const-string v5, "GroupBrowseListFragment"

    const-string v6, "google query is finished "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    return-void
.end method

.method private getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1178
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1184
    .local v0, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    return-object v0
.end method

.method private getParentPostion(Lcom/sec/android/app/contacts/group/GroupInfo;)I
    .locals 7
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    const/4 v4, -0x1

    .line 1139
    const/4 v3, 0x0

    .line 1144
    .local v3, "index":I
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1145
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1146
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, "accountType":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, "accountName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1150
    .local v2, "dataSet":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1158
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "dataSet":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_0
    :goto_1
    return v3

    .line 1156
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v2    # "dataSet":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "dataSet":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 1158
    goto :goto_1
.end method

.method private getSelectedGroupPosition(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, -0x1

    .line 1162
    const/4 v1, 0x0

    .line 1163
    .local v1, "index":I
    if-nez p1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return v2

    .line 1166
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1167
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1168
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 1169
    .local v0, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    .line 1170
    goto :goto_0

    .line 1172
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1173
    goto :goto_1
.end method

.method private isSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    .locals 1
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAsyncQueryHandler()V
    .locals 3

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1872
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    .line 1874
    :cond_0
    return-void
.end method

.method private sendEmail(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 3
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 2300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2301
    .local v0, "sendEmailIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2302
    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2303
    const-string v1, "actionCode"

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2305
    const-string v1, "SelectMode"

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2307
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2308
    return-void
.end method

.method private sendMessage(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 3
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 2282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2283
    .local v0, "sendMessageIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2284
    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2285
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_DisableMMS"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2287
    const-string v1, "actionCode"

    const/16 v2, 0xaa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2293
    :goto_0
    const-string v1, "SelectMode"

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2295
    const-string v1, "FromMMS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2296
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2297
    return-void

    .line 2290
    :cond_0
    const-string v1, "actionCode"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setSubTitlePositon(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 1528
    const/4 v0, 0x0

    .line 1530
    .local v0, "curr_AccountType":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1532
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 1549
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1537
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1538
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1539
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1541
    :cond_2
    iput v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    .line 1542
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1544
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1545
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    goto :goto_0
.end method

.method private startGooglePlusQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1888
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1889
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string v0, "data_set"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " == \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2b

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data_set"

    aput-object v6, v4, v5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1877
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->resetAsyncQueryHandler()V

    .line 1878
    const-string v0, "content://com.android.contacts/groups_list/not_assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1879
    .local v3, "groupUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    sget-object v4, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$402(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 1885
    :cond_0
    return-void
.end method


# virtual methods
.method public binVideoCalldHeader(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1577
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 1580
    .local v0, "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    if-eqz p3, :cond_0

    if-ne p3, v2, :cond_4

    .line 1581
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mVideoCallExistFlag:Z
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2100(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1582
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1594
    :goto_0
    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    if-eq p3, v1, :cond_1

    if-eq p3, v2, :cond_1

    if-ne p3, v4, :cond_a

    .line 1595
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mVideoCallExistFlag:Z
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2100(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1596
    if-ne p3, v2, :cond_5

    .line 1597
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const-string v2, "Verizon Video Call"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    :goto_1
    return-void

    .line 1584
    :cond_2
    if-nez p3, :cond_3

    .line 1585
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1587
    :cond_3
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1591
    :cond_4
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1599
    :cond_5
    if-ne p3, v4, :cond_6

    .line 1600
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0259

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1601
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1603
    :cond_6
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0112

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1604
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1607
    :cond_7
    if-ne p3, v2, :cond_8

    .line 1608
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0259

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1609
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1610
    :cond_8
    if-ne p3, v4, :cond_9

    .line 1611
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1613
    :cond_9
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0112

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1614
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1618
    :cond_a
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isLastChild"    # Z

    .prologue
    .line 1455
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 1456
    .local v1, "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DEFAULT"

    const-string v6, "PHONE_WHITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1459
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v6, 0x7f11004a

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1460
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v6, 0x7f11004b

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1463
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v5, p2, p3}, Lcom/android/contacts/group/GroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 1465
    .local v2, "groupTitle":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v3

    .line 1466
    .local v3, "groupType":I
    if-eqz v2, :cond_3

    const v5, 0x7f0e0262

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x7f0e0261

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v5, 0x3

    if-eq v5, v3, :cond_2

    const/4 v5, 0x2

    if-ne v5, v3, :cond_3

    .line 1470
    :cond_2
    const-string v5, "title"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1472
    :cond_3
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1474
    const/4 v5, 0x6

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1477
    .local v4, "systemId":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "accountType":Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "PersonalGroup"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "com.android.nttdocomo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KDDI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "com.kddi.ast.auoneid"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1490
    :cond_5
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v6, 0x7f0e0258

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1491
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1496
    :goto_0
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1497
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1498
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1500
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1502
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_9

    .line 1503
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1504
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020604

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1521
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1522
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I
    invoke-static {v7}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2000(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1524
    :cond_6
    return-void

    .line 1493
    :cond_7
    iget-object v5, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1507
    :cond_8
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020605

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1511
    :cond_9
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1512
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020603

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1515
    :cond_a
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020602

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isExpanded"    # Z

    .prologue
    .line 1626
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 1630
    .local v2, "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    const-string v5, "com.google"

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.android.nttdocomo"

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KDDI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "com.kddi.ast.auoneid"

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1642
    :cond_1
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1643
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "DEFAULT"

    const-string v6, "PHONE_WHITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1647
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v6, 0x7f11004a

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1648
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v6, 0x7f11004b

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1651
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 1654
    .local v1, "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1655
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v6, 0x3

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1656
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1657
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1658
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1659
    if-eqz p4, :cond_5

    .line 1660
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v6, 0x7f0206fe

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1664
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1665
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_7

    .line 1666
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1667
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020604

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1802
    .end local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1803
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I
    invoke-static {v7}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2000(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1805
    :cond_4
    return-void

    .line 1662
    .restart local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_5
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v6, 0x7f0206ff

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1670
    :cond_6
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020605

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1674
    :cond_7
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1675
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020603

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1678
    :cond_8
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020602

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1683
    .end local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_9
    const-string v5, "VideoCalling"

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1686
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1687
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1688
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "DEFAULT"

    const-string v6, "PHONE_WHITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1691
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v6, 0x7f110044

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1692
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v6, 0x7f110045

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1694
    :cond_a
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1696
    .local v3, "groupTitle":Ljava/lang/String;
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1697
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1700
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1701
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1702
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1705
    .end local v3    # "groupTitle":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_11

    .line 1707
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1709
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "DEFAULT"

    const-string v6, "PHONE_WHITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1712
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v6, 0x7f110044

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1713
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v6, 0x7f110045

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1715
    :cond_c
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 1718
    .restart local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1720
    .local v0, "accountName":Ljava/lang/String;
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1723
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1724
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1725
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1726
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1727
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1729
    :cond_d
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_f

    .line 1730
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1731
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020604

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1734
    :cond_e
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020605

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1738
    :cond_f
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1739
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020603

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1742
    :cond_10
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020602

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1751
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_11
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1753
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "DEFAULT"

    const-string v6, "PHONE_WHITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1756
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v6, 0x7f110044

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1757
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v6, 0x7f110045

    invoke-virtual {v5, p2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1759
    :cond_12
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v5, p2, p3}, Lcom/android/contacts/group/GroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 1761
    .restart local v3    # "groupTitle":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v4

    .line 1762
    .local v4, "groupType":I
    const v5, 0x7f0e0262

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const v5, 0x7f0e0261

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_13
    const/4 v5, 0x3

    if-eq v5, v4, :cond_14

    const/4 v5, 0x2

    if-ne v5, v4, :cond_15

    .line 1765
    :cond_14
    const-string v5, "title"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1767
    :cond_15
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1768
    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isICEGroup(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIceCount:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_16

    .line 1770
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIceCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    :goto_2
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1777
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1778
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1779
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 1780
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1772
    :cond_16
    iget-object v5, v2, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1782
    :cond_17
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_19

    .line 1783
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1784
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020604

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1787
    :cond_18
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020605

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1791
    :cond_19
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1792
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020603

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1795
    :cond_1a
    const v5, 0x7f0901bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020602

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public bindHeader(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1553
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 1556
    .local v0, "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    if-nez p3, :cond_2

    .line 1557
    :cond_0
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    :goto_0
    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    if-eq p3, v1, :cond_1

    if-ne p3, v4, :cond_4

    .line 1563
    :cond_1
    if-ne p3, v4, :cond_3

    .line 1564
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0259

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1565
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    :goto_1
    return-void

    .line 1559
    :cond_2
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1567
    :cond_3
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0112

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1568
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1571
    :cond_4
    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 1450
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1451
    return-void
.end method

.method public clearAllCheckStates()V
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2200
    :cond_0
    return-void
.end method

.method public getCheckStates()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2204
    .local v0, "checkStatesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2205
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2206
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2208
    :cond_0
    return-object v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1351
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v2

    .line 1353
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 1354
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "couldn\'t move cursor to position "

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1359
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6

    .line 1360
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {p0, v8, v2, p3, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1371
    .local v6, "v":Landroid/view/View;
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v6, v8, v2, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1373
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 1374
    .local v1, "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    iget-boolean v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    if-eqz v8, :cond_3

    .line 1375
    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v3

    .line 1376
    .local v3, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-direct {p0, v3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v4

    .line 1377
    .local v4, "isSelected":Z
    invoke-virtual {v6, v4}, Landroid/view/View;->setActivated(Z)V

    .line 1378
    if-eqz v4, :cond_7

    .line 1379
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1380
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1381
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1382
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1383
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0109

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1385
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0109

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1387
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0109

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1391
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1398
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1399
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1400
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1416
    .end local v3    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v4    # "isSelected":Z
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1417
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1419
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1420
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v10}, Lcom/android/contacts/group/GroupBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01cc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1426
    :goto_2
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1427
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v9, 0x7f020609

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1431
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1432
    const v8, 0x7f0901bf

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1433
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 1434
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    const/4 v9, -0x1

    const v10, 0x7f0902f0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/contacts/ListHoverManager;->setTextViewId(II)V

    .line 1435
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    invoke-virtual {v8, v7}, Lcom/sec/android/app/contacts/ListHoverManager;->setHoverPopup(Landroid/view/View;)V

    .line 1444
    .end local v7    # "view":Landroid/view/View;
    :cond_5
    return-object v6

    .line 1368
    .end local v1    # "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    .end local v6    # "v":Landroid/view/View;
    :cond_6
    move-object/from16 v6, p4

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 1403
    .restart local v1    # "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    .restart local v3    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .restart local v4    # "isSelected":Z
    :cond_7
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1404
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1405
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1406
    iget-object v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1407
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0148

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1409
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0149

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1411
    iget-object v8, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0148

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1424
    .end local v3    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v4    # "isSelected":Z
    .restart local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 1044
    if-nez p1, :cond_1

    move-object v8, v4

    .line 1086
    :cond_0
    :goto_0
    return-object v8

    .line 1049
    :cond_1
    const/4 v8, 0x0

    .line 1050
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1051
    .local v6, "accountName":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1052
    .local v7, "accountType":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1054
    .local v9, "dataSet":Ljava/lang/String;
    const-string v0, "com.coolots.chaton"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    const-string v0, "com.google"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.nttdocomo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "KDDI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.kddi.ast.auoneid"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    :cond_3
    const-string v0, "content://com.android.contacts/groups_list/assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1070
    .local v1, "groupsUri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    .local v10, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_type==\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_name==\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    if-nez v9, :cond_4

    .line 1074
    const-string v0, "data_set IS NULL"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1080
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1082
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1076
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_set==\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1214
    invoke-virtual/range {p0 .. p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v4

    .line 1216
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_0

    .line 1217
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "couldn\'t move cursor to position "

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1222
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_a

    .line 1223
    :cond_1
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v11

    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, v11, v4, v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1234
    .local v9, "v":Landroid/view/View;
    :goto_0
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {p0, v9, v11, v4, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1238
    move/from16 v0, p1

    invoke-virtual {p0, v9, v4, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->bindHeader(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 1241
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    .line 1242
    .local v3, "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    if-eqz v11, :cond_3

    .line 1243
    invoke-direct {p0, v4}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v5

    .line 1244
    .local v5, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-direct {p0, v5}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v6

    .line 1245
    .local v6, "isSelected":Z
    invoke-virtual {v9, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1246
    if-eqz v6, :cond_b

    .line 1247
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1248
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1249
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1250
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0109

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1252
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0109

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1256
    :cond_2
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1263
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1264
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1265
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b003d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1266
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b003d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1284
    .end local v5    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v6    # "isSelected":Z
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1285
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1287
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1288
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v12, 0x7f02071d

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1290
    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v13}, Lcom/android/contacts/group/GroupBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c01cc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1298
    :goto_2
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1299
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v12, 0x7f020609

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1303
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1304
    const v11, 0x7f0901bf

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1305
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_5

    .line 1306
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    const/4 v12, -0x1

    const v13, 0x7f0902f0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/contacts/ListHoverManager;->setTextViewId(II)V

    .line 1307
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    invoke-virtual {v11, v10}, Lcom/sec/android/app/contacts/ListHoverManager;->setHoverPopup(Landroid/view/View;)V

    .line 1310
    .end local v10    # "view":Landroid/view/View;
    :cond_5
    iget-object v12, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const v11, 0x7f0902f5

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v12, v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1702(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1311
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1312
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->showListCheckBox()V

    .line 1313
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment;->isSelectModeGroup(Landroid/database/Cursor;)Z
    invoke-static {v11, v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1800(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/database/Cursor;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 1314
    const/4 v11, 0x1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1315
    .local v8, "title":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1316
    .local v2, "accountType":Ljava/lang/String;
    const-string v11, "Not Assigned"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "com.google"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1318
    :cond_6
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->hideListCheckBox()V

    .line 1320
    :cond_7
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1321
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1322
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1333
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    :cond_8
    :goto_3
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/util/SparseBooleanArray;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1334
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->setItemSelected(Z)V

    .line 1343
    :goto_4
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$600(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz p2, :cond_9

    .line 1344
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1400(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 1346
    :cond_9
    return-object v9

    .line 1231
    .end local v3    # "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    .end local v9    # "v":Landroid/view/View;
    :cond_a
    move-object/from16 v9, p3

    .restart local v9    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 1269
    .restart local v3    # "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    .restart local v5    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .restart local v6    # "isSelected":Z
    :cond_b
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1270
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1271
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1272
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0148

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1274
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0148

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1277
    :cond_c
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f110051

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1279
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f110051

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 1294
    .end local v5    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v6    # "isSelected":Z
    .restart local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v12, 0x7f02071c

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1296
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 1324
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_e
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1325
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1326
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1329
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 1330
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;
    invoke-static {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->setActionModeBarSpinnerState(Z)V

    goto/16 :goto_3

    .line 1336
    :cond_f
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/GroupBrowseListFragment;->setItemSelected(Z)V

    goto/16 :goto_4

    .line 1338
    :cond_10
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v11}, Lcom/android/contacts/group/GroupBrowseListFragment;->hideListCheckBox()V

    .line 1339
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1340
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1341
    iget-object v11, v3, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method public getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method public getSelectedGroupPosition()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 1116
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return v2

    .line 1120
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment;->isExpanedListItem(Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    invoke-static {v6, v7}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1300(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1121
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v6}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getParentPostion(Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v5

    .line 1122
    .local v5, "parentPostion":I
    invoke-virtual {p0, v5}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 1123
    .local v1, "childCursor":Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition(Landroid/database/Cursor;)I

    move-result v0

    .line 1124
    .local v0, "ChildPosition":I
    if-eqz v1, :cond_2

    .line 1125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1127
    :cond_2
    if-eq v0, v2, :cond_0

    if-eq v5, v2, :cond_0

    .line 1130
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1400(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/ExpandableListView;

    invoke-static {v5, v0}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    .line 1131
    .local v3, "packedPosition":J
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1400(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v2

    .line 1132
    .local v2, "flatListPosition":I
    goto :goto_0

    .line 1134
    .end local v0    # "ChildPosition":I
    .end local v1    # "childCursor":Landroid/database/Cursor;
    .end local v2    # "flatListPosition":I
    .end local v3    # "packedPosition":J
    .end local v5    # "parentPostion":I
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v6}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition(Landroid/database/Cursor;)I

    move-result v2

    goto :goto_0
.end method

.method public isAutoAdd()Z
    .locals 1

    .prologue
    .line 1204
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIsAutoAdd:Z

    return v0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isLastChild"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1811
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1812
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040144

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1813
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1814
    const-string v3, "DEFAULT"

    const-string v4, "PHONE_WHITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1816
    const v3, 0x7f020948

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1821
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;-><init>()V

    .line 1822
    .local v0, "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    const v3, 0x7f0902ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    .line 1823
    const v3, 0x7f0902f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    .line 1824
    const v3, 0x7f0902f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    .line 1825
    const v3, 0x7f0902f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    .line 1826
    const v3, 0x7f0902f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    .line 1827
    const v3, 0x7f09018e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    .line 1829
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1830
    return-object v2

    .line 1818
    .end local v0    # "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    :cond_1
    const v3, 0x7f020946

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isExpanded"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1836
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1837
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040144

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1838
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;-><init>()V

    .line 1840
    .local v0, "cache":Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;
    const v3, 0x7f0902ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    .line 1841
    const v3, 0x7f0902d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    .line 1842
    const v3, 0x7f090198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    .line 1843
    const v3, 0x7f0902ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    .line 1844
    const v3, 0x7f0902f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    .line 1845
    const v3, 0x7f0902f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    .line 1846
    const v3, 0x7f0902f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    .line 1847
    const v3, 0x7f0902f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->count:Landroid/widget/TextView;

    .line 1848
    const v3, 0x7f09018e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    .line 1850
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1851
    return-object v2
.end method

.method public selectAllCheckStates()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2183
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mTotalGroups:I
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2300(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v2

    .line 2184
    .local v2, "size":I
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2185
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 2195
    :cond_0
    return-void

    .line 2187
    :cond_1
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2188
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2189
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2190
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2191
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2192
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2188
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAutoAdd(Z)V
    .locals 0
    .param p1, "isAutoAdd"    # Z

    .prologue
    .line 1192
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIsAutoAdd:Z

    .line 1193
    return-void
.end method

.method public setCheckStates(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2212
    .local p1, "checkStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2213
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2214
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2216
    :cond_0
    return-void
.end method

.method public setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1189
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1208
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mSelectionVisible:Z

    .line 1209
    return-void
.end method
