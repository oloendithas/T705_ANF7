.class public final Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "InteractionGroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
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

.field mIntegratedGroupCursor:Landroid/database/Cursor;

.field mNotAssignedGroupCursor:Landroid/database/Cursor;

.field mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

.field mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field mVideoGroupCursor:Landroid/database/Cursor;

.field subTitlePosition:I

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 270
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    .line 275
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

    .line 924
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 926
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-nez v8, :cond_5

    .line 928
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_1

    move v1, v6

    .line 929
    .local v1, "result1":Z
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_2

    move v2, v6

    .line 930
    .local v2, "result2":Z
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_3

    move v3, v6

    .line 931
    .local v3, "result3":Z
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-nez v8, :cond_4

    move v4, v6

    .line 932
    .local v4, "result4":Z
    :goto_3
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 933
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 934
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 935
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 1056
    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    .end local v4    # "result4":Z
    :goto_4
    return-object v0

    :cond_1
    move v1, v7

    .line 928
    goto :goto_0

    .restart local v1    # "result1":Z
    :cond_2
    move v2, v7

    .line 929
    goto :goto_1

    .restart local v2    # "result2":Z
    :cond_3
    move v3, v7

    .line 930
    goto :goto_2

    .restart local v3    # "result3":Z
    :cond_4
    move v4, v7

    .line 931
    goto :goto_3

    .line 938
    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 940
    :cond_6
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "docomo cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 948
    :cond_7
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/database/Cursor;

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    aput-object v9, v8, v7

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    aput-object v7, v8, v6

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v10

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v11

    invoke-direct {v0, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 953
    .local v0, "cursor":Landroid/database/Cursor;
    goto/16 :goto_4

    .line 956
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

    .line 959
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    if-nez v8, :cond_e

    .line 961
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_a

    move v1, v6

    .line 962
    .restart local v1    # "result1":Z
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_b

    move v2, v6

    .line 963
    .restart local v2    # "result2":Z
    :goto_6
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_c

    move v3, v6

    .line 964
    .restart local v3    # "result3":Z
    :goto_7
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    if-nez v8, :cond_d

    move v4, v6

    .line 965
    .restart local v4    # "result4":Z
    :goto_8
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 966
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 967
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 968
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 961
    goto :goto_5

    .restart local v1    # "result1":Z
    :cond_b
    move v2, v7

    .line 962
    goto :goto_6

    .restart local v2    # "result2":Z
    :cond_c
    move v3, v7

    .line 963
    goto :goto_7

    .restart local v3    # "result3":Z
    :cond_d
    move v4, v7

    .line 964
    goto :goto_8

    .line 971
    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    :cond_e
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 973
    :cond_f
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "auID cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 981
    :cond_10
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/database/Cursor;

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    aput-object v9, v8, v7

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    aput-object v7, v8, v6

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v10

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v11

    invoke-direct {v0, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 986
    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_4

    .line 1026
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_11
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_17

    .line 1028
    :cond_12
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_13

    move v1, v6

    .line 1029
    .restart local v1    # "result1":Z
    :goto_9
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_14

    move v2, v6

    .line 1030
    .restart local v2    # "result2":Z
    :goto_a
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-nez v8, :cond_15

    move v3, v6

    .line 1031
    .restart local v3    # "result3":Z
    :goto_b
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    if-nez v8, :cond_16

    move v5, v6

    .line 1032
    .local v5, "result5":Z
    :goto_c
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 1033
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 1034
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 1035
    const-string v6, "InteractionGroupBrowseListFragment"

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

    .line 1028
    goto :goto_9

    .restart local v1    # "result1":Z
    :cond_14
    move v2, v7

    .line 1029
    goto :goto_a

    .restart local v2    # "result2":Z
    :cond_15
    move v3, v7

    .line 1030
    goto :goto_b

    .restart local v3    # "result3":Z
    :cond_16
    move v5, v7

    .line 1031
    goto :goto_c

    .line 1038
    .end local v1    # "result1":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    :cond_17
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1040
    :cond_18
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "group cursor is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account cursor is closed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v6, "InteractionGroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "integrated group cursor is closed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1051
    :cond_19
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/database/Cursor;

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    aput-object v9, v8, v7

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    aput-object v7, v8, v6

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v10

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    aput-object v6, v8, v11

    invoke-direct {v0, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1056
    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_4
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getDocomoAccountInfo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getAUIDAccountInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->MergeAllCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePosition(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->cancelQuery()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->closeAllCursor()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->startGooglePlusQuery()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getGoogleAccountInfo(Z)V

    return-void
.end method

.method private cancelQuery()V
    .locals 2

    .prologue
    .line 780
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "cancelQuery"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 786
    return-void
.end method

.method private checkAutoGroup()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 336
    new-instance v0, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;-><init>()V

    .line 337
    .local v0, "agh":Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 339
    .local v2, "matrixCursor":Landroid/database/MatrixCursor;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;->getGroupCountcursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v3

    .line 340
    .local v3, "videoCallingCountCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 343
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v8

    const/4 v5, 0x1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "VideoCalling"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "VideoCalling"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v7, v4, v5

    const/4 v5, 0x5

    aput-object v7, v4, v5

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 351
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 354
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 356
    .end local v1    # "i":I
    :cond_1
    return-object v2

    .line 342
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private closeAllCursor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1061
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "closeallCursor"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1069
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1074
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    .line 1077
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1079
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    .line 1082
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1084
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    .line 1088
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1092
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    .line 1096
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

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1101
    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    .line 1103
    :cond_6
    return-void
.end method

.method private getAUIDAccountInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 892
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v3, "accountSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v0, "AUIDAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 897
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

    .line 898
    .local v1, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v6, "com.kddi.ast.auoneid"

    iget-object v7, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 899
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 902
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

    .line 904
    .restart local v1    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 907
    .local v2, "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v6, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v6, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v6, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v6, v1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    const-string v6, "xxx"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 919
    .end local v1    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v6, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;

    sget-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v7, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAUIDCursor:Landroid/database/Cursor;

    .line 920
    return-void
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
    .line 824
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v2, "googleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 827
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

    .line 828
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.google"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 829
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v2
.end method

.method private getDocomoAccountInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 864
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v2, "accountSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v4, "docomoAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 869
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

    .line 870
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v6, "com.android.nttdocomo"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 871
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 874
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

    .line 876
    .restart local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 879
    .local v1, "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    const-string v6, "xxx"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 887
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1    # "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v6, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;

    sget-object v7, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mDocomoCursor:Landroid/database/Cursor;

    .line 888
    return-void
.end method

.method private getGoogleAccountInfo(Z)V
    .locals 7
    .param p1, "shouldGooglePlusVisible"    # Z

    .prologue
    .line 838
    const-string v5, "InteractionGroupBrowseListFragment"

    const-string v6, "getGoogleAccountInfo"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v2, "accountSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v3

    .line 843
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

    .line 844
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v5, "plus"

    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_0

    .line 848
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x6

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 850
    .local v1, "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    const-string v5, "xxx"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 858
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1    # "accountInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;

    sget-object v6, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    .line 859
    const-string v5, "InteractionGroupBrowseListFragment"

    const-string v6, "google query is finished "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method private getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 360
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 366
    .local v0, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    return-object v0
.end method

.method private resetAsyncQueryHandler()V
    .locals 3

    .prologue
    .line 794
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    .line 795
    return-void
.end method

.method private setSubTitlePosition(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x3

    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, "curr_AccountType":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 510
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 518
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 523
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    goto :goto_0
.end method

.method private startGooglePlusQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 813
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "startGooglePlusQuery"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
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

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

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

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 798
    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->resetAsyncQueryHandler()V

    .line 801
    const-string v0, "content://com.android.contacts/groups_list/not_assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 802
    .local v3, "groupUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "noGroupsCount"

    const-string v4, "true"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 807
    .local v8, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    const/16 v1, 0x2a

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void

    :cond_0
    move-object v5, v2

    .line 807
    goto :goto_0
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

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 560
    .local v0, "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    if-eqz p3, :cond_0

    if-ne p3, v2, :cond_4

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mVideoCallExistFlag:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :goto_0
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    if-eq p3, v1, :cond_1

    if-eq p3, v2, :cond_1

    if-ne p3, v4, :cond_a

    .line 575
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mVideoCallExistFlag:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 576
    if-ne p3, v2, :cond_5

    .line 577
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const-string v2, "Verizon Video Call"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 601
    :goto_1
    return-void

    .line 564
    :cond_2
    if-nez p3, :cond_3

    .line 565
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 567
    :cond_3
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 571
    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 579
    :cond_5
    if-ne p3, v4, :cond_6

    .line 580
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0259

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 581
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 583
    :cond_6
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0112

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 584
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 587
    :cond_7
    if-ne p3, v2, :cond_8

    .line 588
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0259

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 589
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 590
    :cond_8
    if-ne p3, v4, :cond_9

    .line 591
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 593
    :cond_9
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0112

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 594
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 598
    :cond_a
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isLastChild"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 460
    .local v1, "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 461
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f11004a

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 462
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f11004b

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 465
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v4, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "groupTitle":Ljava/lang/String;
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const/4 v4, 0x5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "systemId":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "accountType":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "PersonalGroup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.android.nttdocomo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KDDI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.kddi.ast.auoneid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 484
    :cond_2
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f0e0258

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 485
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :goto_0
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    const v4, 0x7f0901bf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020602

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 499
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsHugeFontMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 500
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mHugeFontSize:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 502
    :cond_3
    return-void

    .line 487
    :cond_4
    iget-object v4, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isExpanded"    # Z

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 609
    .local v2, "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    const-string v4, "com.google"

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.android.nttdocomo"

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KDDI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "com.kddi.ast.auoneid"

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 621
    :cond_1
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 627
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f11004a

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 628
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f11004b

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 631
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 634
    .local v1, "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 637
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 639
    if-eqz p4, :cond_5

    .line 640
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v5, 0x7f0206fe

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 644
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 645
    const v4, 0x7f0901bf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020602

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 729
    .end local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsHugeFontMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 730
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mHugeFontSize:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 732
    :cond_4
    return-void

    .line 642
    .restart local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_5
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const v5, 0x7f0206ff

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 648
    .end local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_6
    const-string v4, "VideoCalling"

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 650
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 655
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f110044

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 656
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f110045

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 658
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "groupTitle":Ljava/lang/String;
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 669
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 673
    .end local v3    # "groupTitle":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 675
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 681
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f110044

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 682
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f110045

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 684
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 687
    .restart local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "accountName":Ljava/lang/String;
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 696
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 698
    :cond_a
    const v4, 0x7f0901bf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020602

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 705
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_b
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 711
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    const v5, 0x7f110044

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 712
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const v5, 0x7f110045

    invoke-virtual {v4, p2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 714
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v4, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 715
    .restart local v3    # "groupTitle":Ljava/lang/String;
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 719
    iget-object v4, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 722
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 724
    :cond_d
    const v4, 0x7f0901bf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020602

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

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

    .line 531
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "bindHeader"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 536
    .local v0, "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    if-nez p3, :cond_2

    .line 537
    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :goto_0
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->subTitlePosition:I

    if-eq p3, v1, :cond_1

    if-ne p3, v4, :cond_4

    .line 543
    :cond_1
    if-ne p3, v4, :cond_3

    .line 544
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0259

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 545
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 553
    :goto_1
    return-void

    .line 539
    :cond_2
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 547
    :cond_3
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0112

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 548
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 551
    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 454
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 455
    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 426
    const-string v3, "InteractionGroupBrowseListFragment"

    const-string v4, "getChildView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0, p1, p2}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v1

    .line 430
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 431
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "couldn\'t move cursor to position "

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 436
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 437
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p3, p5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 442
    .local v2, "v":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 444
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 445
    .local v0, "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v4, 0x7f020609

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 448
    :cond_2
    return-object v2

    .line 439
    .end local v0    # "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    move-object v2, p4

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 281
    const/4 v8, 0x0

    .line 282
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "accountName":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "accountType":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "dataSet":Ljava/lang/String;
    const-string v0, "com.google"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.nttdocomo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "KDDI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.kddi.ast.auoneid"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    :cond_1
    const-string v0, "content://com.android.contacts/groups_list/assigned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 299
    .local v1, "groupsUri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
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

    .line 302
    if-nez v9, :cond_3

    .line 303
    const-string v0, "data_set IS NULL"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 309
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 310
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 311
    const/4 v8, 0x0

    .line 315
    .end local v1    # "groupsUri":Landroid/net/Uri;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object v8

    .line 305
    .restart local v1    # "groupsUri":Landroid/net/Uri;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_3
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

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 387
    const-string v3, "InteractionGroupBrowseListFragment"

    const-string v4, "getGroupView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v1

    .line 391
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 392
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "couldn\'t move cursor to position "

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 397
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 398
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p2, p4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 403
    .local v2, "v":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 407
    invoke-virtual {p0, v2, v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->bindHeader(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 410
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    .line 412
    .local v0, "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v4, 0x7f020979

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 415
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    const v4, 0x7f020609

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 421
    :cond_2
    :goto_1
    return-object v2

    .line 400
    .end local v0    # "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    move-object v2, p3

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0

    .line 416
    .restart local v0    # "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    iget-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    const v4, 0x7f02071e

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method public getSelectedGroupPosition()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 319
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 332
    :cond_1
    :goto_0
    return v1

    .line 323
    :cond_2
    const/4 v1, 0x0

    .line 324
    .local v1, "index":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 325
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 326
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getGroupInfo(Landroid/database/Cursor;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 327
    .local v0, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 330
    add-int/lit8 v1, v1, 0x1

    .line 331
    goto :goto_1

    .end local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    :cond_3
    move v1, v2

    .line 332
    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isLastChild"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 737
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 738
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040144

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 739
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mIsTwoPaneMode:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DEFAULT"

    const-string v4, "PHONE_WHITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    const v3, 0x7f020946

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 744
    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;-><init>()V

    .line 745
    .local v0, "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    const v3, 0x7f0902ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    .line 746
    const v3, 0x7f0902f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    .line 747
    const v3, 0x7f0902f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    .line 748
    const v3, 0x7f0902f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    .line 750
    const v3, 0x7f09018e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    .line 752
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 753
    return-object v2
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isExpanded"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 759
    const-string v3, "InteractionGroupBrowseListFragment"

    const-string v4, "newGroupView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 762
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040144

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 763
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;-><init>()V

    .line 765
    .local v0, "cache":Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;
    const v3, 0x7f0902ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitleBar:Landroid/view/View;

    .line 766
    const v3, 0x7f0902d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->subTitle:Landroid/widget/TextView;

    .line 767
    const v3, 0x7f090198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent:Landroid/view/View;

    .line 768
    const v3, 0x7f0902ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indent_child:Landroid/view/View;

    .line 769
    const v3, 0x7f0902f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->indicator:Landroid/widget/ImageView;

    .line 770
    const v3, 0x7f0902f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->title:Landroid/widget/TextView;

    .line 771
    const v3, 0x7f0902f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->account:Landroid/widget/TextView;

    .line 773
    const v3, 0x7f09018e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupListItemCache;->divider:Landroid/view/View;

    .line 775
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 776
    return-object v2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePosition(Landroid/database/Cursor;)V

    .line 380
    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 382
    return-void
.end method

.method public setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 371
    return-void
.end method
