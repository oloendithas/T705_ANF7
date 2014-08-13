.class Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private isAccountQuerycompleted:Z

.field private isGoogleQueryCompleted:Z

.field private isGroupQueryCompleted:Z

.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2356
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 2357
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2358
    iput-object p2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->context:Landroid/content/Context;

    .line 2360
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 24
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2377
    if-eqz p3, :cond_0

    .line 2378
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2382
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;

    move-object/from16 v0, p0

    if-eq v0, v1, :cond_c

    .line 2383
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    const/16 v1, 0x2a

    move/from16 v0, p1

    if-ne v1, v0, :cond_2

    .line 2385
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "group cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :goto_1
    if-eqz p3, :cond_0

    .line 2421
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2386
    :cond_2
    const/16 v1, 0x2b

    move/from16 v0, p1

    if-ne v1, v0, :cond_4

    .line 2387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 2388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2389
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "group cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :cond_3
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google plus cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2392
    :cond_4
    const/16 v1, 0x2c

    move/from16 v0, p1

    if-ne v1, v0, :cond_7

    .line 2393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    .line 2394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2395
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "group cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_6

    .line 2398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2399
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_6
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "account cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2402
    :cond_7
    const/16 v1, 0x2d

    move/from16 v0, p1

    if-ne v1, v0, :cond_b

    .line 2403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_8

    .line 2404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2405
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "group cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_9

    .line 2408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mGoogleAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2409
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_a

    .line 2412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2413
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "account cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_a
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "ice count cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2417
    :cond_b
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "unknown query, anyway, cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2426
    :cond_c
    if-eqz p3, :cond_1a

    .line 2427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mTotalGroups:I
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2300(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mTotalGroups:I
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2302(Lcom/android/contacts/group/GroupBrowseListFragment;I)I

    .line 2428
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2430
    :pswitch_0
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "not assigned group query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    .line 2432
    const-string v1, "content://com.android.contacts/groups_list/aggregated"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2434
    .local v4, "groupUri":Landroid/net/Uri;
    const/16 v2, 0x2e

    const/4 v3, 0x0

    sget-object v5, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x1

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$402(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    goto/16 :goto_0

    .line 2439
    .end local v4    # "groupUri":Landroid/net/Uri;
    :pswitch_1
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "integrated group query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    .line 2441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x1

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$402(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 2442
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    .line 2443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startGooglePlusQuery()V
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2700(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    goto/16 :goto_0

    .line 2446
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    if-eqz v1, :cond_0

    .line 2447
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google plus query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v1, 0x1

    :goto_2
    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getGoogleAccountInfo(Z)V
    invoke-static {v2, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2800(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Z)V

    .line 2450
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getDocomoAccountInfo()V
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2900(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 2456
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getAUIDAccountInfo()V
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$3000(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 2462
    :cond_e
    if-eqz p3, :cond_f

    .line 2463
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2464
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "google plus cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :cond_f
    const-string v1, "content://com.android.contacts/groups_list/account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2468
    .local v8, "accountUri":Landroid/net/Uri;
    const/16 v6, 0x2c

    const/4 v7, 0x0

    sget-object v9, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    goto/16 :goto_0

    .line 2448
    .end local v8    # "accountUri":Landroid/net/Uri;
    :cond_10
    const/4 v1, 0x0

    goto :goto_2

    .line 2474
    :pswitch_3
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "account query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    .line 2476
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isAccountQuerycompleted:Z

    .line 2477
    const-string v1, "content://com.android.contacts/groups/title/ICE/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2479
    .local v12, "iceCountUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 2486
    :cond_11
    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "emergency"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 2492
    :goto_3
    const/16 v10, 0x2d

    const/4 v11, 0x0

    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v16}, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2489
    :cond_12
    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "emergency"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    goto :goto_3

    .line 2497
    .end local v12    # "iceCountUri":Landroid/net/Uri;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isAccountQuerycompleted:Z

    if-eqz v1, :cond_0

    .line 2499
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "ICE count query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->mIceCount:I

    .line 2501
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2502
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "ICE count cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->MergeAllCursor()Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$3100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;

    move-result-object v23

    .line 2514
    .local v23, "mergedCursor":Landroid/database/Cursor;
    if-eqz v23, :cond_13

    .line 2515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, v23

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePositon(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$3200(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V

    .line 2519
    :cond_13
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    .line 2520
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    .line 2521
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isAccountQuerycompleted:Z

    .line 2523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3300(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3302(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 2525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->requestSelectionToScreen()V

    .line 2529
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3400(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3500(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3500(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment;->isExpanedListItem(Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1300(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2531
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3500(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v3

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getParentPostion(Lcom/sec/android/app/contacts/group/GroupInfo;)I
    invoke-static {v2, v3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$3700(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v2

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3602(Lcom/android/contacts/group/GroupBrowseListFragment;I)I

    .line 2532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3600(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 2533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1400(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3600(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 2538
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment;->invalidateSeltectedGroupInfo()V
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3900(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    .line 2539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3802(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 2540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3800(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isAutoAdd()Z

    move-result v22

    .line 2542
    .local v22, "isAutoAdd":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3800(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    move/from16 v0, v22

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4000(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 2552
    .end local v22    # "isAutoAdd":Z
    :goto_5
    const/16 v21, 0x0

    .line 2553
    .local v21, "hasMember":Z
    if-eqz v23, :cond_16

    .line 2554
    const/4 v1, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2555
    const/4 v1, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_19

    const/16 v21, 0x1

    .line 2557
    :cond_16
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4100(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4100(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    move-result-object v1

    move/from16 v0, v21

    invoke-interface {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;->onUpdateDeleteGroupMemberOptionMenu(Z)V

    goto/16 :goto_0

    .line 2535
    .end local v21    # "hasMember":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3500(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    if-nez v1, :cond_15

    .line 2536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$3802(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Lcom/sec/android/app/contacts/group/GroupInfo;

    goto/16 :goto_4

    .line 2544
    :cond_18
    new-instance v13, Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-wide/16 v17, 0x0

    const-string v19, "Not Assigned"

    const-string v20, "Not Assigned"

    invoke-direct/range {v13 .. v20}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2547
    .local v13, "notAssignedGroup":Lcom/sec/android/app/contacts/group/GroupInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x0

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    invoke-static {v1, v13, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4000(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    goto :goto_5

    .line 2555
    .end local v13    # "notAssignedGroup":Lcom/sec/android/app/contacts/group/GroupInfo;
    .restart local v21    # "hasMember":Z
    :cond_19
    const/16 v21, 0x0

    goto :goto_6

    .line 2566
    .end local v21    # "hasMember":Z
    .end local v23    # "mergedCursor":Landroid/database/Cursor;
    :cond_1a
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "cursor null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2428
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 2365
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "startQuery is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    const/16 v0, 0x2a

    if-ne v0, p1, :cond_0

    .line 2367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    .line 2369
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    return-void
.end method
