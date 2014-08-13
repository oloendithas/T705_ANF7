.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "LogsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
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

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 1

    .prologue
    .line 700
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 701
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method VIP_Delete_SpamMsgData(ILjava/lang/String;)V
    .locals 5
    .param p1, "logType"    # I
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1093
    const-string v1, "LogsDeleteActivity"

    const-string v2, "======VIP_Delete_SpamMsgData()======"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v0, 0x0

    .line 1095
    .local v0, "Duri":Landroid/net/Uri;
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_1

    .line 1097
    sget-object v1, Lcom/android/contacts/util/DummyFramework$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 1101
    sget-object v1, Lcom/android/contacts/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method VIP_Restore_SpamMsgData(ILjava/lang/String;)V
    .locals 25
    .param p1, "logType"    # I
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    .line 977
    const-string v2, "LogsDeleteActivity"

    const-string v4, "======VIP_Restore_SpamMsgData()======"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/16 v2, 0x12c

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 981
    const/4 v3, 0x0

    .line 982
    .local v3, "Ruri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 984
    .local v8, "SpamCursor":Landroid/database/Cursor;
    sget-object v2, Lcom/android/contacts/util/DummyFramework$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->getEnableDualMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "body"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "date"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "read"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "phonetype"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "card_mode"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 995
    :goto_0
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 997
    const-string v2, "address"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 998
    .local v11, "mAddress":Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 999
    .local v12, "mBody":Ljava/lang/String;
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1000
    .local v18, "mTimeMills":J
    const-string v2, "read"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1001
    .local v17, "mSMSRead":I
    const-string v2, "LogsDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIP] mAddress :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBody :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTimeMills :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSMSRead :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1004
    .local v23, "sms_values":Landroid/content/ContentValues;
    const-string v2, "address"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v2, "body"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v2, "date"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1007
    const-string v2, "read"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->getEnableDualMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1010
    const-string v2, "status"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1011
    .local v14, "mDeliveryStatus":I
    const-string v2, "phonetype"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1012
    .local v16, "mPhoneType":I
    const-string v2, "card_mode"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1013
    .local v13, "mCardMode":I
    const-string v2, "LogsDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIP] mDeliveryStatus :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPhoneType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", card_mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v2, "status"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1016
    const-string v2, "phonetype"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    const-string v2, "card_mode"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1020
    .end local v13    # "mCardMode":I
    .end local v14    # "mDeliveryStatus":I
    .end local v16    # "mPhoneType":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1024
    if-nez v17, :cond_1

    .line 1026
    new-instance v10, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.ACTION_RESTORE_MESSAGE"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1034
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "mAddress":Ljava/lang/String;
    .end local v12    # "mBody":Ljava/lang/String;
    .end local v17    # "mSMSRead":I
    .end local v18    # "mTimeMills":J
    .end local v23    # "sms_values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1089
    .end local v3    # "Ruri":Landroid/net/Uri;
    .end local v8    # "SpamCursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    return-void

    .line 991
    .restart local v3    # "Ruri":Landroid/net/Uri;
    .restart local v8    # "SpamCursor":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "body"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "date"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "read"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_0

    .line 1031
    :cond_4
    if-eqz v8, :cond_1

    .line 1032
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1037
    .end local v3    # "Ruri":Landroid/net/Uri;
    .end local v8    # "SpamCursor":Landroid/database/Cursor;
    :cond_5
    const/16 v2, 0xc8

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 1038
    const/4 v3, 0x0

    .line 1039
    .restart local v3    # "Ruri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1040
    .restart local v8    # "SpamCursor":Landroid/database/Cursor;
    sget-object v2, Lcom/android/contacts/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v21

    .line 1043
    .local v21, "p":Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v22

    .line 1044
    .local v22, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v20

    .line 1045
    .local v20, "mmsUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->getEnableDualMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "read"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "phonetype"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "card_mode"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1053
    :goto_3
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1054
    const-string v2, "read"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1055
    .local v15, "mMMSRead":I
    const-string v2, "LogsDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIP] mMMSRead :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1058
    .local v24, "values":Landroid/content/ContentValues;
    const/4 v2, 0x1

    if-ne v15, v2, :cond_6

    .line 1059
    const-string v2, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1060
    const-string v2, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1062
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->getEnableDualMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1063
    const-string v2, "phonetype"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1064
    .restart local v16    # "mPhoneType":I
    const-string v2, "card_mode"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1065
    .restart local v13    # "mCardMode":I
    const-string v2, "LogsDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIP] mPhoneType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", card_mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const-string v2, "phonetype"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1068
    const-string v2, "card_mode"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    .end local v13    # "mCardMode":I
    .end local v16    # "mPhoneType":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1072
    if-nez v15, :cond_8

    .line 1074
    new-instance v10, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.ACTION_RESTORE_MESSAGE"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v15    # "mMMSRead":I
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_8
    if-eqz v8, :cond_9

    .line 1083
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1085
    .end local v20    # "mmsUri":Landroid/net/Uri;
    .end local v22    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_9
    :goto_4
    if-eqz v3, :cond_2

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1050
    .restart local v20    # "mmsUri":Landroid/net/Uri;
    .restart local v22    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "read"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto/16 :goto_3

    .line 1079
    .end local v20    # "mmsUri":Landroid/net/Uri;
    .end local v22    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v9

    .line 1080
    .local v9, "e":Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v2, "LogsDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1082
    if-eqz v8, :cond_9

    .line 1083
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 1082
    .end local v9    # "e":Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_b

    .line 1083
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2
.end method

.method VIP_SpamMsgData()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 922
    const-string v11, "LogsDeleteActivity"

    const-string v12, "======VIP_SpamMsgData()======"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v3, 0x0

    .line 924
    .local v3, "colIdx":I
    const/4 v6, 0x0

    .line 925
    .local v6, "dataCnt":I
    const/4 v9, 0x0

    .line 926
    .local v9, "logType":I
    const-string v10, ""

    .line 927
    .local v10, "msgId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 929
    .local v2, "checkedPos":I
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v12, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v12}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getGroupCountList()Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    .line 930
    const/4 v6, 0x0

    :goto_0
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 931
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 932
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 933
    iget-object v12, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/database/Cursor;

    # setter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v12, v11}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1102(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 934
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v11

    const-string v12, "_id"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 935
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v11

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 937
    const/16 v11, 0x12c

    if-eq v9, v11, :cond_0

    const/16 v11, 0xc8

    if-ne v9, v11, :cond_6

    .line 939
    :cond_0
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v4, v11}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I)V

    .line 940
    .local v4, "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 942
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 943
    .local v8, "index":I
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {v11}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupCount()I

    move-result v5

    .line 944
    .local v5, "count":I
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {v11}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupMsgType()[I

    move-result-object v1

    .line 945
    .local v1, "SpamMsgType":[I
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {v11}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupMsgIDs()[Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "SpamMsgID":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_6

    .line 949
    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v11, :cond_2

    .line 950
    aget v11, v1, v7

    aget-object v12, v0, v7

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->VIP_Restore_SpamMsgData(ILjava/lang/String;)V

    .line 953
    :cond_1
    :goto_2
    new-array v11, v14, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {p0, v11}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 947
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 951
    :cond_2
    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Delete:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v11, :cond_1

    .line 952
    aget v11, v1, v7

    aget-object v12, v0, v7

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->VIP_Delete_SpamMsgData(ILjava/lang/String;)V

    goto :goto_2

    .line 957
    .end local v0    # "SpamMsgID":[Ljava/lang/String;
    .end local v1    # "SpamMsgType":[I
    .end local v5    # "count":I
    .end local v7    # "i":I
    .end local v8    # "index":I
    :cond_3
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v11

    const/16 v12, 0x19

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 958
    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v11, :cond_4

    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v11, :cond_4

    .line 959
    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->VIP_Restore_SpamMsgData(ILjava/lang/String;)V

    .line 960
    :cond_4
    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Delete:Z

    if-eqz v11, :cond_5

    sget-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v11, :cond_5

    .line 961
    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->VIP_Delete_SpamMsgData(ILjava/lang/String;)V

    .line 962
    :cond_5
    new-array v11, v14, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {p0, v11}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 966
    .end local v4    # "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_6
    new-array v11, v14, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {p0, v11}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 930
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 968
    :cond_7
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 27
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 705
    const/16 v23, 0x0

    aget-object v23, p1, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    .line 706
    const-string v23, "LogsDeleteActivity"

    const-string v24, "[PerformScan] Call Log delete start ....."

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # invokes: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->logsDBChanged()Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/ListView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AdapterView;->getCount()I

    move-result v20

    .line 710
    .local v20, "totalCnt":I
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    div-int/lit8 v25, v20, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 711
    const-wide/16 v23, 0x12c

    invoke-static/range {v23 .. v24}, Landroid/os/SystemClock;->sleep(J)V

    .line 713
    const-string v23, "feature_common_dsds_support "

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v26, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I
    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v26

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(II)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 736
    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 738
    const-string v23, "feature_remind_me_later_support "

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 739
    new-instance v17, Landroid/content/Intent;

    const-string v23, "com.samsung.intent.action.CALL_REMIND"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v17, "i":Landroid/content/Intent;
    const-string v23, "state"

    const-string v24, "delete_all"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v23, "numbers"

    const-string v24, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 911
    .end local v17    # "i":Landroid/content/Intent;
    .end local v20    # "totalCnt":I
    :cond_0
    :goto_1
    const-string v23, "LogsDeleteActivity"

    const-string v24, "[PerformScan] Call Log delete end ....."

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-nez v23, :cond_1

    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Delete:Z

    if-eqz v23, :cond_2

    :cond_1
    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v23, :cond_2

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->VIP_SpamMsgData()V

    .line 917
    :cond_2
    const/16 v23, 0x0

    return-object v23

    .line 718
    .restart local v20    # "totalCnt":I
    :cond_3
    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v23, :cond_4

    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v23, :cond_4

    .line 719
    const-string v23, "LogsDeleteActivity"

    const-string v24, "[PerformScan] Call Log update "

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 721
    .local v21, "values":Landroid/content/ContentValues;
    const-string v23, "reject_flag"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 722
    const-string v23, "type"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string v23, "LogsDeleteActivity"

    const-string v24, "[PerformScan] Call Log delete for ALL_DELTE"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 746
    .end local v20    # "totalCnt":I
    :cond_5
    const/4 v9, 0x0

    .line 747
    .local v9, "colIdx":I
    const/4 v13, 0x0

    .line 748
    .local v13, "dataId":I
    const/4 v12, 0x0

    .line 749
    .local v12, "dataCnt":I
    const/4 v15, 0x0

    .line 750
    .local v15, "endComma":Z
    const/4 v14, 0x0

    .line 751
    .local v14, "deletedCnt":I
    const/4 v6, 0x0

    .line 753
    .local v6, "checkedPos":I
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 754
    .local v22, "whereLogsDB":Ljava/lang/StringBuffer;
    const-string v23, "_id in ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 757
    .local v8, "checkedRemindMeNumbers":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 759
    .local v7, "checkedRemindMeDates":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getGroupCountList()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    .line 761
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v12, v0, :cond_11

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    if-eqz v23, :cond_d

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/database/Cursor;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    # setter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1102(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    const-string v24, "_id"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 768
    new-instance v10, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v10, v0}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I)V

    .line 769
    .local v10, "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    .line 772
    .local v18, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupCount()I

    move-result v11

    .line 773
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupIDs()[I

    move-result-object v5

    .line 778
    .local v5, "array":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v11, :cond_9

    .line 780
    aget v13, v5, v17

    .line 781
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DBG:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1200()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 783
    const-string v23, "LogsDeleteActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dataId= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_6
    rem-int/lit8 v23, v12, 0x64

    if-nez v23, :cond_8

    .line 786
    const/16 v23, 0x29

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 788
    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v23, :cond_7

    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v23, :cond_7

    .line 789
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 790
    .restart local v21    # "values":Landroid/content/ContentValues;
    const-string v23, "reject_flag"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 791
    const-string v23, "type"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 800
    .end local v21    # "values":Landroid/content/ContentValues;
    :goto_4
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 801
    const-string v23, "_id in ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    const/4 v15, 0x0

    .line 803
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 778
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 795
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    goto :goto_4

    .line 805
    :cond_8
    const/16 v23, 0x2c

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 806
    const/4 v15, 0x1

    goto :goto_5

    .line 810
    :cond_9
    const-string v23, "feature_remind_me_later_support "

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 812
    .local v19, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupDates()[J

    move-result-object v16

    .line 814
    .local v16, "groupDates":[J
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v0, v11, :cond_d

    .line 815
    aget-wide v23, v16, v17

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_a

    .line 816
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v23

    if-nez v23, :cond_b

    .line 817
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    aget-wide v23, v16, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 814
    :cond_a
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 820
    :cond_b
    const/16 v23, 0x2c

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 821
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    const/16 v23, 0x2c

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 824
    aget-wide v23, v16, v17

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 832
    .end local v5    # "array":[I
    .end local v11    # "count":I
    .end local v16    # "groupDates":[J
    .end local v17    # "i":I
    .end local v18    # "index":I
    .end local v19    # "number":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 833
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 835
    rem-int/lit8 v23, v12, 0x64

    if-nez v23, :cond_f

    .line 836
    const/16 v23, 0x29

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 838
    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v23, :cond_e

    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v23, :cond_e

    .line 839
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 840
    .restart local v21    # "values":Landroid/content/ContentValues;
    const-string v23, "reject_flag"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 841
    const-string v23, "type"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 851
    .end local v21    # "values":Landroid/content/ContentValues;
    :goto_8
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 852
    const-string v23, "_id in ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 853
    const/4 v15, 0x0

    .line 854
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 860
    :goto_9
    const-string v23, "feature_remind_me_later_support "

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    const/16 v24, 0x1f

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-lez v23, :cond_d

    .line 863
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v23

    if-nez v23, :cond_10

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    const/16 v24, 0x2

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 761
    .end local v10    # "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_d
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 845
    .restart local v10    # "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_8

    .line 856
    :cond_f
    const/16 v23, 0x2c

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 857
    const/4 v15, 0x1

    goto :goto_9

    .line 867
    :cond_10
    const/16 v23, 0x2c

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 870
    const/16 v23, 0x2c

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v23

    const/16 v24, 0x2

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 878
    .end local v10    # "compareObject":Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_11
    if-eqz v15, :cond_13

    .line 879
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 880
    const/16 v23, 0x29

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 882
    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v23, :cond_14

    sget-boolean v23, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v23, :cond_14

    .line 883
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 884
    .restart local v21    # "values":Landroid/content/ContentValues;
    const-string v23, "reject_flag"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 885
    const-string v23, "type"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 893
    .end local v21    # "values":Landroid/content/ContentValues;
    :goto_b
    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DBG:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1200()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 894
    const-string v23, "LogsDeleteActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Logs DB remained data deleted Count = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_12
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 898
    :cond_13
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 900
    const-string v23, "feature_remind_me_later_support "

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->isUsingTwoPanel:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 901
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 902
    new-instance v17, Landroid/content/Intent;

    const-string v23, "com.samsung.intent.action.CALL_REMIND"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    .local v17, "i":Landroid/content/Intent;
    const-string v23, "state"

    const-string v24, "delete"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const-string v23, "numbers"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    const-string v23, "date"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 889
    .end local v17    # "i":Landroid/content/Intent;
    :cond_14
    const-string v23, "LogsDeleteActivity"

    const-string v24, "[PerformScan] Call Log delete for REST Item"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_b
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 700
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEnableDualMode()Z
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x0

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const v4, 0x7f0e04cd

    const v3, 0x7f0e0349

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mShowDelProgressDlg:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 1125
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    if-ne v0, v2, :cond_2

    .line 1126
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1132
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1143
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1144
    return-void

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1134
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bVIP_Restore:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_3

    .line 1135
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1140
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1138
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mShowDelProgressDlg:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1114
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1115
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 700
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
