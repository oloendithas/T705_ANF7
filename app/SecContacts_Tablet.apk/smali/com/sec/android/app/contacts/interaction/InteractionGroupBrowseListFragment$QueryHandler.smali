.class Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "InteractionGroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private isGoogleQueryCompleted:Z

.field private isGroupQueryCompleted:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 1123
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1125
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1138
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "onQueryComplete"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mQueryHandler:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;

    move-object/from16 v0, p0

    if-eq v0, v1, :cond_1

    .line 1141
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    if-eqz p3, :cond_8

    .line 1145
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1147
    :pswitch_1
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "not assigned group query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mNotAssignedGroupCursor:Landroid/database/Cursor;

    .line 1149
    const-string v1, "content://com.android.contacts/groups_list/aggregated"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1151
    .local v4, "groupUri":Landroid/net/Uri;
    const/16 v2, 0x2e

    const/4 v3, 0x0

    sget-object v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    .end local v4    # "groupUri":Landroid/net/Uri;
    :pswitch_2
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "integrated group query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mIntegratedGroupCursor:Landroid/database/Cursor;

    .line 1157
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    .line 1158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->startGooglePlusQuery()V
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    goto :goto_0

    .line 1161
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    if-eqz v1, :cond_0

    .line 1162
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "google plus query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getGoogleAccountInfo(Z)V
    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;Z)V

    .line 1165
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getDocomoAccountInfo()V
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$1000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 1171
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getAUIDAccountInfo()V
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 1177
    :cond_3
    if-eqz p3, :cond_4

    .line 1178
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1179
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "google plus cursor close"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_4
    const-string v1, "content://com.android.contacts/groups_list/account_nocount"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1184
    .local v13, "accountUri":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 1185
    .local v14, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v1, v14}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 1186
    const/16 v6, 0x2c

    const/4 v7, 0x0

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    goto/16 :goto_0

    .line 1163
    .end local v13    # "accountUri":Landroid/net/Uri;
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1192
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    if-eqz v1, :cond_0

    .line 1193
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "account query finished"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->mAccountsCursor:Landroid/database/Cursor;

    .line 1205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->MergeAllCursor()Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$1200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)Landroid/database/Cursor;

    move-result-object v15

    .line 1206
    .local v15, "mergedCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_6

    .line 1207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->setSubTitlePosition(Landroid/database/Cursor;)V
    invoke-static {v1, v15}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$1300(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;Landroid/database/Cursor;)V

    .line 1210
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    .line 1211
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->isGoogleQueryCompleted:Z

    .line 1213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectionToScreenRequested:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$1400(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectionToScreenRequested:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$1402(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Z)Z

    .line 1215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->requestSelectionToScreen()V

    .line 1218
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$1502(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Lcom/sec/android/app/contacts/group/GroupInfo;

    goto/16 :goto_0

    .line 1223
    .end local v15    # "mergedCursor":Landroid/database/Cursor;
    :cond_8
    const-string v1, "InteractionGroupBrowseListFragment"

    const-string v2, "cursor null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1145
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 1130
    const/16 v0, 0x2a

    if-ne v0, p1, :cond_0

    .line 1131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$QueryHandler;->isGroupQueryCompleted:Z

    .line 1133
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    return-void
.end method
