.class public Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;
.super Landroid/os/AsyncTask;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformScan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isWhichOp:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 1

    .prologue
    .line 4606
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4607
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 4611
    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->isWhichOp:I

    .line 4612
    const-string v14, "CallLogFragment"

    const-string v15, "[PerformScan] Call Log delete start ....."

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->isWhichOp:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logsDBChanged()Z
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$4000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 4619
    const-string v14, "CallLogFragment"

    const-string v15, "[PerformScan] Call Log delete for ALL_DELETE"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v14}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewBy:I
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2300()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4711
    :goto_0
    const-string v14, "CallLogFragment"

    const-string v15, "[PerformScan] Call Log delete end ....."

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    const/4 v14, 0x0

    return-object v14

    .line 4626
    :cond_0
    const/4 v3, 0x0

    .line 4627
    .local v3, "colIdx":I
    const/4 v7, 0x0

    .line 4628
    .local v7, "dataId":I
    const/4 v6, 0x0

    .line 4629
    .local v6, "dataCnt":I
    const/4 v9, 0x0

    .line 4630
    .local v9, "endComma":Z
    const/4 v8, 0x0

    .line 4631
    .local v8, "deletedCnt":I
    const/4 v2, 0x0

    .line 4633
    .local v2, "checkedPos":I
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 4634
    .local v13, "whereLogsDB":Ljava/lang/StringBuffer;
    const-string v14, "_id in ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v15}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getGroupCountList()Ljava/util/ArrayList;

    move-result-object v15

    iput-object v15, v14, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    .line 4640
    const/4 v6, 0x0

    :goto_1
    sget-object v14, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    if-ge v6, v14, :cond_5

    .line 4641
    sget-object v14, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 4642
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/database/Cursor;

    .line 4643
    .local v12, "mCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 4644
    const-string v14, "_id"

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4646
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v4, v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I)V

    .line 4648
    .local v4, "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v14, v14, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 4649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v14, v14, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 4650
    .local v11, "index":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v14, v14, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupCount()I

    move-result v5

    .line 4651
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v14, v14, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupIDs()[I

    move-result-object v1

    .line 4655
    .local v1, "array":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v5, :cond_3

    .line 4656
    aget v7, v1, v10

    .line 4657
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4658
    const-string v14, "CallLogFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dataId= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    rem-int/lit8 v14, v6, 0x64

    if-nez v14, :cond_1

    .line 4661
    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v14}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 4667
    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 4668
    const-string v14, "_id in ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4669
    const/4 v9, 0x0

    .line 4670
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 4655
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 4672
    :cond_1
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4673
    const/4 v9, 0x1

    goto :goto_3

    .line 4677
    .end local v1    # "array":[I
    .end local v5    # "count":I
    .end local v10    # "i":I
    .end local v11    # "index":I
    :cond_2
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4678
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4680
    rem-int/lit8 v14, v6, 0x64

    if-nez v14, :cond_4

    .line 4681
    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4682
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v14}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 4686
    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 4687
    const-string v14, "_id in ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4688
    const/4 v9, 0x0

    .line 4689
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 4640
    .end local v4    # "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 4691
    .restart local v4    # "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_4
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4692
    const/4 v9, 0x1

    goto :goto_4

    .line 4698
    .end local v4    # "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    .end local v12    # "mCursor":Landroid/database/Cursor;
    :cond_5
    if-eqz v9, :cond_6

    .line 4699
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 4700
    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4701
    const-string v14, "CallLogFragment"

    const-string v15, "[PerformScan] Call Log delete for REST Item"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4702
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v14}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 4704
    const-string v14, "CallLogFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Logs DB remained data deleted Count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4705
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 4708
    :cond_6
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4606
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 4725
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowDelProgressDlg:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4726
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$4100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 4727
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$4100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 4728
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$4100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 4731
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0349

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4732
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 4733
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4734
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 4735
    .local v0, "config":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v2, v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;->loadView(II)V

    .line 4737
    .end local v0    # "config":I
    :cond_1
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 4717
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowDelProgressDlg:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4718
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$4100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 4720
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 4721
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4606
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
