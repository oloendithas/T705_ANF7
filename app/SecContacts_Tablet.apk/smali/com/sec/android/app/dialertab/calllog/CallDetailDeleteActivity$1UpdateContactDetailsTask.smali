.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

.field final synthetic val$callUris:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1261
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1274
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 1275
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :goto_0
    return-object v1

    .line 1276
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CallDetailDeleteActivity"

    const-string v2, "invalid URI starting call details"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1261
    check-cast p1, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 24
    .param p1, "details"    # [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    .line 1286
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    if-nez v1, :cond_2

    .line 1288
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f0e00b0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->finish()V

    .line 1404
    :cond_1
    :goto_0
    return-void

    .line 1295
    :cond_2
    const/4 v1, 0x0

    aget-object v16, p1, v1

    .line 1296
    .local v16, "firstDetails":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 1297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1602(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1299
    :cond_3
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 1300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1702(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1302
    :cond_4
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 1303
    .local v15, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 1308
    .local v22, "photoUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 1309
    .local v12, "canPlaceCallsTo":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 1310
    .local v18, "isVoicemailNumber":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 1318
    .local v17, "isSipNumber":Z
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1319
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 1324
    .local v21, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v15, :cond_9

    .line 1325
    new-instance v20, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v0, v1, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1326
    .local v20, "mainActionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f0e01fe

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 1355
    .local v19, "mainActionDescription":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDisplayAllLogs:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1357
    const/4 v4, 0x0

    .line 1359
    .local v4, "sendSelection":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1360
    .local v23, "sb":Ljava/lang/StringBuilder;
    const-string v1, "number="

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    const-string v1, "\""

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1363
    const-string v1, "\""

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1366
    const-string v6, "date DESC"

    .line 1368
    .local v6, "sortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v7, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1902(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mVoiceMailNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x226

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .end local v12    # "canPlaceCallsTo":Z
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1, v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 1376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1381
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1398
    .end local v4    # "sendSelection":Ljava/lang/String;
    .end local v6    # "sortOrder":Ljava/lang/String;
    .end local v23    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setAllItemChecked(Z)V

    .line 1401
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 1402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->startCheckProcessing()V

    goto/16 :goto_0

    .line 1321
    .end local v19    # "mainActionDescription":Ljava/lang/String;
    .end local v20    # "mainActionIntent":Landroid/content/Intent;
    .end local v21    # "nameOrNumber":Ljava/lang/CharSequence;
    .restart local v12    # "canPlaceCallsTo":Z
    :cond_8
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .restart local v21    # "nameOrNumber":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1328
    :cond_9
    if-eqz v18, :cond_a

    .line 1329
    const/16 v20, 0x0

    .line 1330
    .restart local v20    # "mainActionIntent":Landroid/content/Intent;
    const/16 v19, 0x0

    .restart local v19    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 1331
    .end local v19    # "mainActionDescription":Ljava/lang/String;
    .end local v20    # "mainActionIntent":Landroid/content/Intent;
    :cond_a
    if-eqz v17, :cond_b

    .line 1341
    const/16 v20, 0x0

    .line 1342
    .restart local v20    # "mainActionIntent":Landroid/content/Intent;
    const/16 v19, 0x0

    .restart local v19    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 1343
    .end local v19    # "mainActionDescription":Ljava/lang/String;
    .end local v20    # "mainActionIntent":Landroid/content/Intent;
    :cond_b
    if-eqz v12, :cond_c

    .line 1344
    new-instance v20, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1345
    .restart local v20    # "mainActionIntent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1346
    const-string v1, "phone"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f0e01fd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 1351
    .end local v19    # "mainActionDescription":Ljava/lang/String;
    .end local v20    # "mainActionIntent":Landroid/content/Intent;
    :cond_c
    const/16 v20, 0x0

    .line 1352
    .restart local v20    # "mainActionIntent":Landroid/content/Intent;
    const/16 v19, 0x0

    .restart local v19    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 1385
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v9, v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v1, v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$302(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .line 1390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_3
.end method
