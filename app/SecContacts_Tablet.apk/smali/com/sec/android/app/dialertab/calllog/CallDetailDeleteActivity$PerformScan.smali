.class public Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "CallDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
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

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 1

    .prologue
    .line 813
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method VIP_Delete_SpamMsgData(ILjava/lang/String;)V
    .locals 5
    .param p1, "logType"    # I
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1056
    const-string v1, "CallDetailDeleteActivity"

    const-string v2, "======VIP_Delete_SpamMsgData()======"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "Duri":Landroid/net/Uri;
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_1

    .line 1059
    sget-object v1, Lcom/android/contacts/util/DummyFramework$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 1063
    sget-object v1, Lcom/android/contacts/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method VIP_Restore_SpamMsgData(ILjava/lang/String;)V
    .locals 4
    .param p1, "logType"    # I
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    .line 933
    const-string v1, "CallDetailDeleteActivity"

    const-string v2, "======VIP_Restore_SpamMsgData()======"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-string v1, "CallDetailDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/16 v1, 0x12c

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 936
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.ACTION_RESTORE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1052
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 23
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 818
    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    .line 819
    const-string v19, "CallDetailDeleteActivity"

    const-string v20, "[PerformScan] Call Log delete start ....."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v8, 0x0

    .line 822
    .local v8, "colIdx":I
    const/4 v10, 0x0

    .line 823
    .local v10, "dataId":I
    const/4 v9, 0x0

    .line 824
    .local v9, "dataCnt":I
    const/4 v12, 0x0

    .line 825
    .local v12, "endComma":Z
    const/4 v11, 0x0

    .line 826
    .local v11, "deletedCnt":I
    const/4 v5, 0x0

    .line 829
    .local v5, "checkedPos":I
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 830
    .local v7, "checkedRemindMeNumbers":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 832
    .local v6, "checkedRemindMeDates":Ljava/lang/StringBuffer;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    const-string v20, "_id"

    aput-object v20, v16, v19

    const/16 v19, 0x1

    const-string v20, "logtype"

    aput-object v20, v16, v19

    .line 836
    .local v16, "projection":[Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 837
    .local v18, "whereLogsDB":Ljava/lang/StringBuffer;
    const-string v19, "_id in ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDisplayAllLogs:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 841
    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/Cursor;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    const-string v21, "_id"

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 847
    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 848
    const/4 v12, 0x1

    .line 841
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 852
    :cond_1
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 854
    const-string v19, "CallDetailDeleteActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[PerformScan]details[checkedPos-1].id : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v21, v0

    add-int/lit8 v22, v5, -0x1

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 856
    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 857
    const/4 v12, 0x1

    .line 859
    sget-boolean v19, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v14, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 862
    .local v14, "logType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 863
    .local v15, "msgId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->VIP_Restore_SpamMsgData(ILjava/lang/String;)V

    .line 865
    .end local v14    # "logType":I
    .end local v15    # "msgId":Ljava/lang/String;
    :cond_2
    sget-boolean v19, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Delete:Z

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v14, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 868
    .restart local v14    # "logType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 869
    .restart local v15    # "msgId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->VIP_Delete_SpamMsgData(ILjava/lang/String;)V

    .line 872
    .end local v14    # "logType":I
    .end local v15    # "msgId":Ljava/lang/String;
    :cond_3
    const-string v19, "feature_remind_me_later_support "

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    move/from16 v19, v0

    if-lez v19, :cond_4

    .line 874
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-nez v19, :cond_5

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 852
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 878
    :cond_5
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 881
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 889
    :cond_6
    if-eqz v12, :cond_8

    .line 890
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 891
    const/16 v19, 0x29

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 893
    sget-boolean v19, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 894
    const-string v19, "CallDetailDeleteActivity"

    const-string v20, "[PerformScan] Call Log update..."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 896
    .local v17, "values":Landroid/content/ContentValues;
    const-string v19, "reject_flag"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 897
    const-string v19, "type"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 905
    .end local v17    # "values":Landroid/content/ContentValues;
    :goto_3
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1200()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 906
    const-string v19, "CallDetailDeleteActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Logs DB remained data deleted Count = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 909
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 911
    const-string v19, "feature_remind_me_later_support "

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 912
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 913
    new-instance v13, Landroid/content/Intent;

    const-string v19, "com.samsung.intent.action.CALL_REMIND"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v13, "i":Landroid/content/Intent;
    const-string v19, "state"

    const-string v20, "delete"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string v19, "numbers"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    const-string v19, "date"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 923
    .end local v13    # "i":Landroid/content/Intent;
    :cond_9
    const/16 v19, 0x0

    return-object v19

    .line 901
    :cond_a
    const-string v19, "CallDetailDeleteActivity"

    const-string v20, "[PerformScan] Call Log delete..."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 813
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEnableDualMode()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1079
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1080
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1082
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1099
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1100
    return-void

    .line 1089
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->bVIP_Detail_Restore:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mEnableVIPApp:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1090
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v1, 0x7f0e04cd

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1094
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1092
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v1, 0x7f0e0349

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1073
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1074
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 813
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
