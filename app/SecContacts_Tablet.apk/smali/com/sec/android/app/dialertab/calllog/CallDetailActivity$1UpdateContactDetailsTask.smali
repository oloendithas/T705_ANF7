.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

.field final synthetic val$callUris:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1495
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1509
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    .line 1511
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1516
    :goto_0
    return-object v1

    .line 1512
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CallDetailActivity"

    const-string v2, "invalid URI starting call details"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1515
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1516
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1495
    check-cast p1, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 61
    .param p1, "details"    # [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    .line 1522
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    if-nez v3, :cond_2

    .line 1526
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 2404
    :cond_1
    :goto_0
    return-void

    .line 1530
    :cond_2
    const-string v3, "feature_clear_cover"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMissedCallCoverMgr:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->isResumed()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v5, v7, v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->updateMissedCallDialog(ZLcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Ljava/lang/String;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1555
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetail:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/View;)Landroid/view/View;

    .line 1563
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_VVM_ID"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v60

    .line 1564
    .local v60, "vvm_id":I
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute  vvm_id =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1567
    const/4 v3, -0x1

    move/from16 v0, v60

    if-eq v0, v3, :cond_5

    .line 1568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1584
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1588
    .local v19, "allLogsBg":Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1590
    .local v20, "allLogsBgLand":Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    .end local v19    # "allLogsBg":Landroid/view/View;
    .end local v20    # "allLogsBgLand":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    aget-object v29, p1, v3

    .line 1594
    .local v29, "firstDetails":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1802(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->checkVolteVTicon:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isDeviceOnEHRPD()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1599
    const/16 v40, -0x1

    .line 1600
    .local v40, "mLVCSetting":I
    const/16 v59, -0x1

    .line 1602
    .local v59, "volte_value":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "LVCBetaEnabled"

    const-string v5, "LVCBetaEnabled"

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1607
    .local v55, "str_temp":Ljava/lang/String;
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLVCSetting is  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    if-eqz v55, :cond_7

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1611
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 1616
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voicecall_type"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v59

    .line 1618
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " currentVolteSetting :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    .end local v55    # "str_temp":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, v40

    if-ne v0, v3, :cond_9

    if-nez v59, :cond_9

    .line 1623
    const-string v45, ""

    .line 1624
    .local v45, "modifiednumber":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->modifyNumberForSubscribe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1627
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with modified number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "where original number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/16 v36, 0x0

    .line 1631
    .local v36, "isttyON":Z
    new-instance v3, Lcom/sec/android/app/contacts/uce/TTY;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/contacts/uce/TTY;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/contacts/uce/TTY;->getTTYState()Z

    move-result v36

    .line 1632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isValidNumberforQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    if-nez v36, :cond_1f

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isSavedORLogtypeVideo:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2000()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1635
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->imsCallLogUtil:Lcom/sec/android/app/contacts/uce/IMSinterface;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2200()Lcom/sec/android/app/contacts/uce/IMSinterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/contacts/uce/IMSinterface;->callRemoteCapabilitiesAndAvailability(Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForPresence;Ljava/lang/String;)V

    .line 1645
    .end local v36    # "isttyON":Z
    .end local v40    # "mLVCSetting":I
    .end local v45    # "modifiednumber":Ljava/lang/String;
    .end local v59    # "volte_value":I
    :cond_9
    :goto_3
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a

    .line 1646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2302(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1648
    :cond_a
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 1649
    .local v22, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v49, v0

    .line 1652
    .local v49, "photoUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->pinFillDataAtTheEnd(Ljava/lang/String;)V

    .line 1659
    :cond_b
    const/16 v47, 0x0

    .line 1660
    .local v47, "numberCallUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2502(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    .line 1662
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "feature_common_use_multisim"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1664
    move-object/from16 v0, v29

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    move/from16 v53, v0

    .line 1665
    .local v53, "simId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static/range {v53 .. v53}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 1679
    .end local v53    # "simId":I
    .local v35, "isVoicemailNumber":Z
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v47

    .line 1680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v34

    .line 1705
    .local v34, "isSipNumber":Z
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1706
    const-string v3, "tel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v47

    .line 1716
    :cond_d
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1717
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v46, v0

    .line 1722
    .local v46, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_5
    if-eqz v22, :cond_24

    .line 1723
    new-instance v44, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1725
    .local v44, "mainActionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v4, 0x7f0e01fe

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v46, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    .line 1758
    .local v43, "mainActionDescription":Ljava/lang/String;
    :goto_6
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1760
    const/16 v50, 0x0

    .line 1761
    .local v50, "query_number":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->roamingCall:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 1762
    .local v41, "mRoamingCall":Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->iddValue:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 1763
    .local v38, "mIddValue":Ljava/lang/String;
    const-string v3, "ctc_country_code_locator"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz v41, :cond_28

    const-string v3, "True"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-static {v4, v5, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getCountryCodeLocator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    .end local v38    # "mIddValue":Ljava/lang/String;
    .end local v41    # "mRoamingCall":Ljava/lang/String;
    .end local v50    # "query_number":Ljava/lang/String;
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v29

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fillLayout(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    invoke-static {v3, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    .line 1849
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_3d

    move-object/from16 v0, v29

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v4, 0x384

    if-ne v3, v4, :cond_3d

    .line 1850
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v3, v4, v5, v7, v9}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v26

    .line 1854
    .local v26, "displayNumber":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1855
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>CALL_RECORD_NUMBER:<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "></GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_11
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1861
    new-instance v39, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v39

    move-object/from16 v1, v47

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1862
    .local v39, "mIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1863
    const-string v3, "LGT_RAD_TEMP"

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1864
    const-string v3, "SMS_CALL"

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1866
    const-string v4, "LGT_RAD_TEMP"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isAutoDial(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1872
    :cond_12
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1874
    new-instance v28, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v4, 0x7f0e0038

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v26, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v5, 0x7f0e01ff

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v46, v7, v9

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-direct {v0, v3, v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1935
    .end local v39    # "mIntent":Landroid/content/Intent;
    .local v28, "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
    :goto_a
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1944
    :cond_13
    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v0, v29

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v4, 0x384

    if-ne v3, v4, :cond_39

    .line 1946
    new-instance v31, Landroid/content/Intent;

    const-string v3, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v4, "voicemail"

    const-string v5, ""

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1947
    .local v31, "intent":Landroid/content/Intent;
    const-string v3, "MESSAGE_ID"

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1961
    :cond_14
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v4, 0x7f0e01ff

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v46, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1967
    new-instance v54, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ","

    const-string v9, "P"

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ";"

    const-string v9, "W"

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1970
    .local v54, "smsIntent":Landroid/content/Intent;
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1972
    const-string v3, "com.android.mms"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1975
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v4, 0x7f0e0200

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v46, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1981
    .end local v54    # "smsIntent":Landroid/content/Intent;
    :cond_16
    const/16 v33, 0x0

    .line 1982
    .local v33, "intent_sim2_call":Landroid/content/Intent;
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1983
    const-string v3, "tel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v48

    .line 1984
    .local v48, "numberCallUriSim2":Landroid/net/Uri;
    new-instance v33, Landroid/content/Intent;

    .end local v33    # "intent_sim2_call":Landroid/content/Intent;
    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1987
    .end local v48    # "numberCallUriSim2":Landroid/net/Uri;
    .restart local v33    # "intent_sim2_call":Landroid/content/Intent;
    :goto_c
    const-string v3, "simnum"

    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1988
    const/high16 v3, 0x10000000

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1990
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e01ff

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v46, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->setSim2CallAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1994
    new-instance v32, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1995
    .local v32, "intent_ipcall":Landroid/content/Intent;
    const-string v3, "ipcall"

    const/4 v4, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1996
    const/high16 v3, 0x10000000

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1998
    const-string v3, "feature_assistdialing"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1999
    const-string v3, "origin"

    const-string v4, "from_dialer"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2001
    :cond_17
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v4, 0x7f0e01ff

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v46, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->setQuanternaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2028
    const-string v3, "feature_spr"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 2029
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v5

    move-object/from16 v0, v28

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;IZ)V
    invoke-static {v3, v0, v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;IZ)V

    .line 2031
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v26

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3302(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3402(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2073
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v3, :cond_3b

    .line 2074
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090046

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2076
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2077
    .local v21, "cnapName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 2078
    .local v23, "createContactView":Landroid/widget/Button;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    .line 2079
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-direct {v3, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;Ljava/lang/CharSequence;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090048

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/Button;

    .line 2122
    .local v57, "updateContactView":Landroid/widget/Button;
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;Ljava/lang/CharSequence;)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2145
    .end local v21    # "cnapName":Ljava/lang/String;
    .end local v23    # "createContactView":Landroid/widget/Button;
    .end local v57    # "updateContactView":Landroid/widget/Button;
    :goto_d
    const-string v3, "feature_spr"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09004e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    :cond_1a
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_1b

    move-object/from16 v0, v29

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v4, 0x384

    if-ne v3, v4, :cond_1b

    .line 2156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090046

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2180
    .end local v26    # "displayNumber":Ljava/lang/CharSequence;
    .end local v28    # "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v32    # "intent_ipcall":Landroid/content/Intent;
    .end local v33    # "intent_sim2_call":Landroid/content/Intent;
    :cond_1b
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_41

    if-nez v34, :cond_41

    if-nez v35, :cond_41

    const/4 v3, 0x1

    :goto_10
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z
    invoke-static {v4, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    .line 2181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090041

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    .line 2186
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_43

    .line 2188
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v37, v0

    .line 2189
    .local v37, "length":I
    add-int/lit8 v3, v37, -0x1

    aget-object v24, p1, v3

    .line 2190
    .local v24, "detail":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    add-int/lit8 v30, v37, -0x1

    .local v30, "i":I
    :goto_11
    if-lez v30, :cond_42

    .line 2191
    add-int/lit8 v3, v30, -0x1

    aget-object v3, p1, v3

    aput-object v3, p1, v30

    .line 2190
    add-int/lit8 v30, v30, -0x1

    goto :goto_11

    .line 1560
    .end local v22    # "contactUri":Landroid/net/Uri;
    .end local v24    # "detail":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v29    # "firstDetails":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v30    # "i":I
    .end local v34    # "isSipNumber":Z
    .end local v35    # "isVoicemailNumber":Z
    .end local v37    # "length":I
    .end local v43    # "mainActionDescription":Ljava/lang/String;
    .end local v44    # "mainActionIntent":Landroid/content/Intent;
    .end local v46    # "nameOrNumber":Ljava/lang/CharSequence;
    .end local v47    # "numberCallUri":Landroid/net/Uri;
    .end local v49    # "photoUri":Landroid/net/Uri;
    .end local v60    # "vvm_id":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_1

    .line 1570
    .restart local v60    # "vvm_id":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 1571
    const/4 v3, -0x1

    move/from16 v0, v60

    if-eq v0, v3, :cond_5

    .line 1572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout2:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1577
    :cond_1e
    const/4 v3, -0x1

    move/from16 v0, v60

    if-eq v0, v3, :cond_5

    .line 1578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPlaybackLayout2:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1641
    .restart local v29    # "firstDetails":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .restart local v36    # "isttyON":Z
    .restart local v40    # "mLVCSetting":I
    .restart local v45    # "modifiednumber":Ljava/lang/String;
    .restart local v59    # "volte_value":I
    :cond_1f
    const-string v3, "CallDetailActivity"

    const-string v4, "not a valid number for query:  modified number is  "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1667
    .end local v36    # "isttyON":Z
    .end local v40    # "mLVCSetting":I
    .end local v45    # "modifiednumber":Ljava/lang/String;
    .end local v59    # "volte_value":I
    .restart local v22    # "contactUri":Landroid/net/Uri;
    .restart local v47    # "numberCallUri":Landroid/net/Uri;
    .restart local v49    # "photoUri":Landroid/net/Uri;
    :cond_20
    const-string v3, "feature_common_use_multisim"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    invoke-static {v4}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .restart local v35    # "isVoicemailNumber":Z
    goto/16 :goto_4

    .line 1670
    .end local v35    # "isVoicemailNumber":Z
    :cond_21
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1671
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simnum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;I)Z

    move-result v35

    .line 1673
    .restart local v35    # "isVoicemailNumber":Z
    if-eqz v35, :cond_c

    .line 1674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 1677
    .end local v35    # "isVoicemailNumber":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v35

    .restart local v35    # "isVoicemailNumber":Z
    goto/16 :goto_4

    .line 1719
    .restart local v34    # "isSipNumber":Z
    :cond_23
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v46, v0

    .restart local v46    # "nameOrNumber":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1727
    :cond_24
    if-eqz v35, :cond_25

    .line 1728
    const/16 v44, 0x0

    .line 1730
    .restart local v44    # "mainActionIntent":Landroid/content/Intent;
    const/16 v43, 0x0

    .restart local v43    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_6

    .line 1731
    .end local v43    # "mainActionDescription":Ljava/lang/String;
    .end local v44    # "mainActionIntent":Landroid/content/Intent;
    :cond_25
    if-eqz v34, :cond_26

    .line 1741
    const/16 v44, 0x0

    .line 1743
    .restart local v44    # "mainActionIntent":Landroid/content/Intent;
    const/16 v43, 0x0

    .restart local v43    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_6

    .line 1744
    .end local v43    # "mainActionDescription":Ljava/lang/String;
    .end local v44    # "mainActionIntent":Landroid/content/Intent;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1745
    new-instance v44, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1746
    .restart local v44    # "mainActionIntent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1747
    const-string v3, "phone"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v4, 0x7f0e01fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v43

    .restart local v43    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_6

    .line 1753
    .end local v43    # "mainActionDescription":Ljava/lang/String;
    .end local v44    # "mainActionIntent":Landroid/content/Intent;
    :cond_27
    const/16 v44, 0x0

    .line 1755
    .restart local v44    # "mainActionIntent":Landroid/content/Intent;
    const/16 v43, 0x0

    .restart local v43    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_6

    .line 1767
    .restart local v38    # "mIddValue":Ljava/lang/String;
    .restart local v41    # "mRoamingCall":Ljava/lang/String;
    .restart local v50    # "query_number":Ljava/lang/String;
    :cond_28
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v50

    .line 1771
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-static {v4, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1772
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->closeLocationBinFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 1775
    .end local v38    # "mIddValue":Ljava/lang/String;
    .end local v41    # "mRoamingCall":Ljava/lang/String;
    :catch_0
    move-exception v27

    .line 1776
    .local v27, "e":Ljava/lang/Exception;
    const-string v3, "CallDetailActivity"

    const-string v4, "getNumberProvinceAndCity exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1770
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v38    # "mIddValue":Ljava/lang/String;
    .restart local v41    # "mRoamingCall":Ljava/lang/String;
    :cond_29
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v50

    goto :goto_12

    .line 1783
    .end local v38    # "mIddValue":Ljava/lang/String;
    .end local v41    # "mRoamingCall":Ljava/lang/String;
    .end local v50    # "query_number":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1786
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-eqz v3, :cond_2b

    .line 1802
    :cond_2b
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-2"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-3"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-4"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "P"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1819
    :cond_2c
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-2"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "-3"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v4, "P"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1824
    const-string v3, "feature_directcall_disable"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3100()Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1826
    const-string v3, "CallDetailActivity"

    const-string v4, "DirectCallingManager setNumber "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3100()Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setPhoneNumber(Ljava/lang/String;)V

    .line 1828
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3100()Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setName(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1866
    .restart local v26    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v39    # "mIntent":Landroid/content/Intent;
    :cond_2d
    const/4 v3, 0x2

    goto/16 :goto_9

    .line 1881
    .end local v39    # "mIntent":Landroid/content/Intent;
    :cond_2e
    new-instance v31, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1882
    .restart local v31    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1884
    const-string v3, "feature_common_use_multisim"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getSIMIDToCallByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1886
    .local v18, "SIMidToCall":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 1887
    .local v42, "mSIMidTocall":I
    if-eqz v18, :cond_30

    const/4 v3, -0x1

    move/from16 v0, v42

    if-eq v0, v3, :cond_30

    .line 1888
    if-eqz v42, :cond_2f

    const/4 v3, 0x1

    move/from16 v0, v42

    if-ne v0, v3, :cond_30

    .line 1889
    :cond_2f
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getCurrentNetwork()I

    move-result v3

    move/from16 v0, v42

    if-eq v0, v3, :cond_35

    .line 1890
    const-string v3, "simSlot_Ext"

    move-object/from16 v0, v31

    move/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1898
    .end local v18    # "SIMidToCall":Ljava/lang/String;
    .end local v42    # "mSIMidTocall":I
    :cond_30
    :goto_13
    const-string v3, "feature_assistdialing"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1899
    const-string v3, "origin"

    const-string v4, "from_dialer"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1901
    :cond_31
    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1903
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkDualSim()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1904
    const-string v3, "ril.ICC_TYPE2"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_32

    const-string v3, "ril.ICC_TYPE2"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_32

    const-string v3, "ril.ICC_TYPE2"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    :cond_32
    const-string v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_36

    .line 1908
    const-string v3, "simnum"

    const/4 v4, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1923
    :cond_33
    :goto_14
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1925
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1926
    const-string v3, "call_from_sec"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1929
    :cond_34
    new-instance v28, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v4, 0x7f0e0038

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v26, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v5, 0x7f0e01ff

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v46, v7, v9

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v3, v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .restart local v28    # "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
    goto/16 :goto_a

    .line 1892
    .end local v28    # "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
    .restart local v18    # "SIMidToCall":Ljava/lang/String;
    .restart local v42    # "mSIMidTocall":I
    :cond_35
    const-string v3, "simSlot"

    move-object/from16 v0, v31

    move/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_13

    .line 1910
    .end local v18    # "SIMidToCall":Ljava/lang/String;
    .end local v42    # "mSIMidTocall":I
    :cond_36
    const-string v3, "simnum"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_14

    .line 1913
    :cond_37
    const-string v3, "CallDetailActivity"

    const-string v4, "single condition - current network"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1915
    :cond_38
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1916
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkDualSim()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1917
    const-string v3, "simnum"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_14

    .line 1950
    .end local v31    # "intent":Landroid/content/Intent;
    .restart local v28    # "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
    :cond_39
    new-instance v31, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1951
    .restart local v31    # "intent":Landroid/content/Intent;
    const-string v3, "videocall"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1952
    const/high16 v3, 0x10000000

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1954
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1956
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1957
    const-string v3, "call_from_sec"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_b

    .line 1986
    .restart local v33    # "intent_sim2_call":Landroid/content/Intent;
    :cond_3a
    new-instance v33, Landroid/content/Intent;

    .end local v33    # "intent_sim2_call":Landroid/content/Intent;
    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v33    # "intent_sim2_call":Landroid/content/Intent;
    goto/16 :goto_c

    .line 2131
    .restart local v32    # "intent_ipcall":Landroid/content/Intent;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090046

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09004a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/Button;

    .line 2135
    .local v58, "viewContact":Landroid/widget/Button;
    invoke-virtual/range {v58 .. v58}, Landroid/view/View;->requestFocus()Z

    .line 2136
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d

    .line 2151
    .end local v58    # "viewContact":Landroid/widget/Button;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 2162
    .end local v26    # "displayNumber":Ljava/lang/CharSequence;
    .end local v28    # "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v32    # "intent_ipcall":Landroid/content/Intent;
    .end local v33    # "intent_sim2_call":Landroid/content/Intent;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3302(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3402(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2165
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2166
    const-string v3, "GATE"

    const-string v4, "<GATE-M>CALL_RECORD_NUMBER:<No number></GATE-M>"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09004e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 2170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09004e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2171
    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 2174
    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 2180
    :cond_41
    const/4 v3, 0x0

    goto/16 :goto_10

    .line 2193
    .restart local v24    # "detail":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .restart local v30    # "i":I
    .restart local v37    # "length":I
    :cond_42
    const/4 v3, 0x0

    aput-object v24, p1, v3

    .line 2196
    .end local v24    # "detail":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v30    # "i":I
    .end local v37    # "length":I
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDisplayAllLogs:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2199
    const/4 v6, 0x0

    .line 2201
    .local v6, "sendSelection":Ljava/lang/String;
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    .line 2202
    .local v51, "sb":Ljava/lang/StringBuilder;
    const-string v3, "number="

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    const-string v3, "\""

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2205
    const-string v3, "\""

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2208
    const-string v8, "date DESC"

    .line 2210
    .local v8, "sortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v9, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3802(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 2215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mLogNumber:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3902(I)I

    .line 2220
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v3

    if-nez v3, :cond_44

    .line 2221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x226

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v3, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4002(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 2223
    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 2226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAllLogsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2237
    .end local v6    # "sendSelection":Ljava/lang/String;
    .end local v8    # "sortOrder":Ljava/lang/String;
    .end local v51    # "sb":Ljava/lang/StringBuilder;
    :cond_45
    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 2238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0e00af

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 2300
    :cond_46
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 2303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    int-to-long v4, v4

    move-object/from16 v0, v49

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;J)V
    invoke-static {v3, v0, v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/net/Uri;J)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const/4 v4, 0x1

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsPostExcuteDone:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    .line 2308
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bVIP_BLog_Detail:Z

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 2309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2331
    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v56

    .line 2333
    .local v56, "titleBar":Landroid/app/ActionBar;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 2334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_55

    .line 2335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailBase:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4802(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/View;)Landroid/view/View;

    .line 2340
    :goto_18
    const-string v3, "feature_remove_vt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "feature_volte_support_videocall"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 2343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 2351
    :cond_48
    :goto_19
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v11, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v11, Ljava/lang/String;

    .line 2352
    .local v11, "detailNumber":Ljava/lang/String;
    const/16 v52, 0x0

    .line 2353
    .local v52, "secondLineTemp":Ljava/lang/String;
    const-string v3, "feature_cnam"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2355
    :cond_49
    invoke-virtual/range {v56 .. v56}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v17

    .line 2356
    .local v17, "ActionBarCustomView":Landroid/view/View;
    const v3, 0x7f09010a

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2357
    .local v12, "firstLine":Ljava/lang/String;
    const v3, 0x7f09010b

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2358
    .local v13, "secondLine":Ljava/lang/String;
    const v3, 0x7f090139

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2359
    .local v14, "thirdLine":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2217
    .end local v11    # "detailNumber":Ljava/lang/String;
    .end local v12    # "firstLine":Ljava/lang/String;
    .end local v13    # "secondLine":Ljava/lang/String;
    .end local v14    # "thirdLine":Ljava/lang/String;
    .end local v17    # "ActionBarCustomView":Landroid/view/View;
    .end local v52    # "secondLineTemp":Ljava/lang/String;
    .end local v56    # "titleBar":Landroid/app/ActionBar;
    .restart local v6    # "sendSelection":Ljava/lang/String;
    .restart local v8    # "sortOrder":Ljava/lang/String;
    .restart local v51    # "sb":Ljava/lang/StringBuilder;
    :cond_4a
    const/4 v3, 0x1

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mLogNumber:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3902(I)I

    goto/16 :goto_15

    .line 2229
    .end local v6    # "sendSelection":Ljava/lang/String;
    .end local v8    # "sortOrder":Ljava/lang/String;
    .end local v51    # "sb":Ljava/lang/StringBuilder;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v11, v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_4d

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v5, 0x384

    if-ne v4, v5, :cond_4d

    :cond_4c
    const/4 v14, 0x1

    :goto_1a
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v3, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .line 2233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_16

    .line 2229
    :cond_4d
    const/4 v14, 0x0

    goto :goto_1a

    .line 2243
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_51

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v11, v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_50

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v5, 0x384

    if-ne v4, v5, :cond_50

    :cond_4f
    const/4 v14, 0x1

    :goto_1b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->detailView:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v3, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .line 2248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2250
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    invoke-static {v3, v4}, Lcom/android/contacts/BackScrollManager;->bind(Lcom/android/contacts/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    .line 2289
    :goto_1c
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_54

    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_54

    .line 2292
    const/4 v3, 0x1

    aget-object v25, p1, v3

    .line 2296
    .local v25, "detailForActionbar":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :goto_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, v25

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
    invoke-static {v3, v0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V

    goto/16 :goto_17

    .line 2244
    .end local v25    # "detailForActionbar":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_50
    const/4 v14, 0x0

    goto :goto_1b

    .line 2280
    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v11, v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_52

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_53

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v5, 0x384

    if-ne v4, v5, :cond_53

    :cond_52
    const/4 v14, 0x1

    :goto_1e
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v3, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .line 2284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->historyList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1c

    .line 2280
    :cond_53
    const/4 v14, 0x0

    goto :goto_1e

    .line 2294
    :cond_54
    const/4 v3, 0x0

    aget-object v25, p1, v3

    .restart local v25    # "detailForActionbar":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto :goto_1d

    .line 2337
    .end local v25    # "detailForActionbar":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .restart local v56    # "titleBar":Landroid/app/ActionBar;
    :cond_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailLand:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4802(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_18

    .line 2344
    :cond_56
    const-string v3, "feature_remove_vt_dialpad"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 2345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    goto/16 :goto_19

    .line 2347
    :cond_57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09005b

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    goto/16 :goto_19

    .line 2373
    .restart local v11    # "detailNumber":Ljava/lang/String;
    .restart local v52    # "secondLineTemp":Ljava/lang/String;
    :cond_58
    invoke-virtual/range {v56 .. v56}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2374
    .restart local v12    # "firstLine":Ljava/lang/String;
    invoke-virtual/range {v56 .. v56}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 2375
    invoke-virtual/range {v56 .. v56}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v52

    .line 2379
    :goto_1f
    move-object/from16 v13, v52

    .line 2380
    .restart local v13    # "secondLine":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11, v12, v13}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2377
    .end local v13    # "secondLine":Ljava/lang/String;
    :cond_59
    const/16 v52, 0x0

    goto :goto_1f
.end method
