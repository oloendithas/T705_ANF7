.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->updateData(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

.field final synthetic val$callUris:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 781
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 781
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 792
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->bConfigurationChanged:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z

    .line 794
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 804
    :goto_0
    return-object v1

    .line 795
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CallDetailFragment"

    const-string v3, "invalid URI starting call details"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 799
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "CallDetailFragment"

    const-string v3, "invalid details index"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 802
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "CallDetailFragment"

    const-string v3, "Not Attatched Activity"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 781
    check-cast p1, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 58
    .param p1, "details"    # [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    .line 809
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailIsRunning:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$600()Z

    move-result v3

    if-nez v3, :cond_0

    .line 810
    const-string v3, "CallDetailFragment"

    const-string v5, "!mCallDetailIsRunning"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :goto_0
    return-void

    .line 814
    :cond_0
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    if-nez v3, :cond_2

    .line 819
    :cond_1
    const-string v3, "CallDetailFragment"

    const-string v5, "details or details[0] = null "

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 824
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v5, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p1

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v3, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 829
    const/4 v3, 0x0

    aget-object v35, p1, v3

    .line 832
    .local v35, "firstDetails":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$802(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 833
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$902(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 835
    :cond_3
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 836
    .local v17, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v53, v0

    .line 842
    .local v53, "photoUri":Landroid/net/Uri;
    const/16 v52, 0x0

    .line 843
    .local v52, "numberCallUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v5

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v46

    .line 845
    .local v46, "isVoicemailNumber":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v45

    .line 847
    .local v45, "isSipNumber":Z
    move-object/from16 v0, v35

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v5, 0x78

    if-eq v3, v5, :cond_4

    move-object/from16 v0, v35

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v5, 0x1fe

    if-ne v3, v5, :cond_11

    .line 848
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v52

    .line 869
    :cond_5
    :goto_1
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "P"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 875
    const/16 v54, 0x0

    .line 876
    .local v54, "query_number":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v5, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1502(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "+86"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    .line 881
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-static {v5, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1502(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 882
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->closeLocationBinFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v54    # "query_number":Ljava/lang/String;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 891
    const-string v3, "feature_use_7_font_size"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->adjustListItemLayoutBy7FontSize()V
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    .line 899
    :cond_7
    :goto_4
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 901
    :cond_8
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    :goto_5
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16

    .line 910
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    .local v48, "mSubTitle":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v3, "  |  "

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    .end local v48    # "mSubTitle":Ljava/lang/StringBuilder;
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 932
    .local v19, "detailInfoButton":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 935
    .local v20, "detailInfoButton2":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09004f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 938
    .local v24, "detailInfoLandButton":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 947
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVoiceCall:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVideoCall:Z

    if-eqz v3, :cond_19

    .line 949
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090075

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 950
    .local v21, "detailInfoButton3":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 952
    .local v22, "detailInfoButton4":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090088

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 955
    .local v29, "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09008a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 957
    .local v30, "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090071

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 959
    .local v25, "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090077

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 961
    .local v26, "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090080

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 963
    .local v27, "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 996
    .end local v21    # "detailInfoButton3":Landroid/widget/RelativeLayout;
    .end local v22    # "detailInfoButton4":Landroid/widget/RelativeLayout;
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090083

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 997
    .local v23, "detailInfoButton5":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090085

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 1000
    .local v28, "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    .end local v19    # "detailInfoButton":Landroid/widget/RelativeLayout;
    .end local v20    # "detailInfoButton2":Landroid/widget/RelativeLayout;
    .end local v23    # "detailInfoButton5":Landroid/widget/RelativeLayout;
    .end local v24    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    .end local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    .end local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    .end local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    .end local v28    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    .end local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    .end local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    :goto_8
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1164
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v51, v0

    .line 1168
    .local v51, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_9
    if-eqz v17, :cond_29

    .line 1169
    new-instance v50, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v50

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1171
    .local v50, "mainActionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e01fe

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v51, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    .line 1208
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v31

    .line 1213
    .local v31, "displayNumber":Ljava/lang/CharSequence;
    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1214
    new-instance v43, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v43

    move-object/from16 v1, v52

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1215
    .local v43, "intent_sim1_call":Landroid/content/Intent;
    const-string v3, "ril.ICC_TYPE2"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_b

    const-string v3, "ril.ICC_TYPE2"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_b

    const-string v3, "ril.ICC_TYPE2"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2d

    :cond_b
    const-string v3, "ril.ICC_TYPE"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2d

    .line 1219
    const-string v3, "simnum"

    const/4 v5, 0x2

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1224
    :goto_b
    const-string v3, "com.android.phone"

    const-string v5, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    new-instance v33, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e0038

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v31, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0e01ff

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v51, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1243
    .end local v43    # "intent_sim1_call":Landroid/content/Intent;
    .local v33, "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
    :goto_c
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v35

    iget v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v3, v5, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1249
    :cond_c
    new-instance v38, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1250
    .local v38, "intent":Landroid/content/Intent;
    const-string v3, "videocall"

    const/4 v5, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1251
    const/high16 v3, 0x10000000

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1252
    const-string v3, "com.android.phone"

    const-string v5, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e01ff

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v51, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1259
    new-instance v55, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v5, "sms"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    const-string v9, "P"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, "W"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v55

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1262
    .local v55, "smsIntent":Landroid/content/Intent;
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1263
    const-string v3, "com.android.mms"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e0200

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v51, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1271
    .end local v55    # "smsIntent":Landroid/content/Intent;
    :cond_e
    new-instance v44, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1272
    .local v44, "intent_sim2_call":Landroid/content/Intent;
    const-string v3, "simnum"

    const/4 v5, 0x2

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    const/high16 v3, 0x10000000

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1274
    const-string v3, "com.android.phone"

    const-string v5, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e01ff

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v51, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setSim2CallAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1278
    new-instance v42, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1279
    .local v42, "intent_ipcall":Landroid/content/Intent;
    const-string v3, "ipcall"

    const/4 v5, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1280
    const/high16 v3, 0x10000000

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1281
    const-string v3, "com.android.phone"

    const-string v5, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e01ff

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v51, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setQuanternaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setQuinticAction(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setSexticAction(Ljava/lang/String;)V

    .line 1288
    new-instance v40, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v40, "intent_chatonMsg":Landroid/content/Intent;
    const-string v3, "chaton://"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1290
    const-string v3, "receiver"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    const-string v3, "ignore_keyguard"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1292
    const/high16 v3, 0x10000000

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e0200

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v51, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setChatOnMsgAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1295
    new-instance v39, Landroid/content/Intent;

    const-string v3, "com.coolots.chaton.CALL_SHORTCUT"

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1296
    .local v39, "intent_chatonCall":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1297
    const/high16 v3, 0x10000000

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e01ff

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v51, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setChatOnCallAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1300
    new-instance v41, Landroid/content/Intent;

    const-string v3, "com.coolots.chaton.CALL_SHORTCUT"

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v41, "intent_chatonVT":Landroid/content/Intent;
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    .line 1302
    .local v34, "extras":Landroid/os/Bundle;
    const-string v3, "videocall"

    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1303
    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1305
    const/high16 v3, 0x10000000

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e01ff

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v51, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setChatOnVTAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1309
    if-eqz v17, :cond_f

    .line 1310
    new-instance v57, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v57

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1311
    .local v57, "viewContactActionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e01fe

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v51, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    .line 1312
    .local v56, "viewContactActionDescription":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v57

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->setViewContactAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1315
    .end local v56    # "viewContactActionDescription":Ljava/lang/String;
    .end local v57    # "viewContactActionIntent":Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v33

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V
    invoke-static {v3, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f090044

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->contactImage:Landroid/view/View;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2302(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Landroid/view/View;)Landroid/view/View;

    .line 1317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->contactImage:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View$OnKeyListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1319
    .end local v31    # "displayNumber":Ljava/lang/CharSequence;
    .end local v33    # "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
    .end local v34    # "extras":Landroid/os/Bundle;
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v39    # "intent_chatonCall":Landroid/content/Intent;
    .end local v40    # "intent_chatonMsg":Landroid/content/Intent;
    .end local v41    # "intent_chatonVT":Landroid/content/Intent;
    .end local v42    # "intent_ipcall":Landroid/content/Intent;
    .end local v44    # "intent_sim2_call":Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_2f

    if-nez v45, :cond_2f

    if-nez v46, :cond_2f

    const/4 v3, 0x1

    :goto_d
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHasEditNumberBeforeCall:Z
    invoke-static {v5, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2502(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z

    .line 1322
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v5, 0x1f

    if-ne v3, v5, :cond_31

    .line 1324
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v47, v0

    .line 1325
    .local v47, "length":I
    add-int/lit8 v3, v47, -0x1

    aget-object v18, p1, v3

    .line 1326
    .local v18, "detail":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    add-int/lit8 v37, v47, -0x1

    .local v37, "i":I
    :goto_e
    if-lez v37, :cond_30

    .line 1327
    add-int/lit8 v3, v37, -0x1

    aget-object v3, p1, v3

    aput-object v3, p1, v37

    .line 1326
    add-int/lit8 v37, v37, -0x1

    goto :goto_e

    .line 852
    .end local v18    # "detail":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v37    # "i":I
    .end local v47    # "length":I
    .end local v50    # "mainActionIntent":Landroid/content/Intent;
    .end local v51    # "nameOrNumber":Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v52

    .line 854
    const-string v16, "vnd.chaton.item/vnd.com.chaton.profile"

    .line 855
    .local v16, "chatOnMimeType":Ljava/lang/String;
    const-string v6, "mimetype=?"

    .line 856
    .local v6, "selection":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, v35

    iget-wide v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 858
    .local v4, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "data1"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 859
    .local v15, "c":Landroid/database/Cursor;
    if-eqz v15, :cond_12

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 864
    :goto_f
    if-eqz v15, :cond_5

    .line 865
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 862
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    const/4 v5, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_f

    .line 880
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v16    # "chatOnMimeType":Ljava/lang/String;
    .restart local v54    # "query_number":Ljava/lang/String;
    :cond_13
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v54

    goto/16 :goto_2

    .line 884
    :catch_0
    move-exception v32

    .line 885
    .local v32, "e":Ljava/lang/Exception;
    const-string v3, "CallDetailFragment"

    const-string v5, "getNumberProvinceAndCity exception"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 894
    .end local v32    # "e":Ljava/lang/Exception;
    .end local v54    # "query_number":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->adjustListItemLayoutByFontSize()V
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    goto/16 :goto_4

    .line 905
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 916
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 919
    :cond_17
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v7, v7, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 926
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 967
    .restart local v19    # "detailInfoButton":Landroid/widget/RelativeLayout;
    .restart local v20    # "detailInfoButton2":Landroid/widget/RelativeLayout;
    .restart local v24    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090075

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 968
    .restart local v21    # "detailInfoButton3":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 970
    .restart local v22    # "detailInfoButton4":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090088

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 973
    .restart local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09008a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 975
    .restart local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090071

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 977
    .restart local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090077

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 979
    .restart local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090080

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 981
    .restart local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 984
    .end local v21    # "detailInfoButton3":Landroid/widget/RelativeLayout;
    .end local v22    # "detailInfoButton4":Landroid/widget/RelativeLayout;
    .end local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    .end local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    .end local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    .end local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    .end local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090088

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 985
    .restart local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09008a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 987
    .restart local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090071

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 989
    .restart local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090077

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 991
    .restart local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090080

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 993
    .restart local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1004
    .end local v19    # "detailInfoButton":Landroid/widget/RelativeLayout;
    .end local v20    # "detailInfoButton2":Landroid/widget/RelativeLayout;
    .end local v24    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    .end local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    .end local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    .end local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    .end local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    .end local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "P"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1010
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 1011
    .restart local v19    # "detailInfoButton":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 1014
    .restart local v20    # "detailInfoButton2":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09004f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 1017
    .restart local v24    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090088

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 1020
    .restart local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09008a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 1022
    .restart local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090071

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 1024
    .restart local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090075

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 1027
    .restart local v21    # "detailInfoButton3":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 1029
    .restart local v22    # "detailInfoButton4":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090083

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 1031
    .restart local v23    # "detailInfoButton5":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090077

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 1033
    .restart local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090080

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 1035
    .restart local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090085

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 1037
    .restart local v28    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0e009c

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, v35

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v5, 0x19

    if-ne v3, v5, :cond_1e

    move-object/from16 v0, v35

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v5, 0x12c

    if-eq v3, v5, :cond_1d

    move-object/from16 v0, v35

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_1e

    .line 1045
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v5, v5, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0e0495

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    .end local v19    # "detailInfoButton":Landroid/widget/RelativeLayout;
    .end local v20    # "detailInfoButton2":Landroid/widget/RelativeLayout;
    .end local v21    # "detailInfoButton3":Landroid/widget/RelativeLayout;
    .end local v22    # "detailInfoButton4":Landroid/widget/RelativeLayout;
    .end local v23    # "detailInfoButton5":Landroid/widget/RelativeLayout;
    .end local v24    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    .end local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    .end local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    .end local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    .end local v28    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    .end local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    .end local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    :cond_1e
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1047
    .restart local v19    # "detailInfoButton":Landroid/widget/RelativeLayout;
    .restart local v20    # "detailInfoButton2":Landroid/widget/RelativeLayout;
    .restart local v21    # "detailInfoButton3":Landroid/widget/RelativeLayout;
    .restart local v22    # "detailInfoButton4":Landroid/widget/RelativeLayout;
    .restart local v23    # "detailInfoButton5":Landroid/widget/RelativeLayout;
    .restart local v24    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    .restart local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    .restart local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    .restart local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    .restart local v28    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    .restart local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    .restart local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "P"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1049
    :cond_20
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0e009c

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1052
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0e009d

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1055
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0e009e

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1059
    .end local v19    # "detailInfoButton":Landroid/widget/RelativeLayout;
    .end local v20    # "detailInfoButton2":Landroid/widget/RelativeLayout;
    .end local v21    # "detailInfoButton3":Landroid/widget/RelativeLayout;
    .end local v22    # "detailInfoButton4":Landroid/widget/RelativeLayout;
    .end local v23    # "detailInfoButton5":Landroid/widget/RelativeLayout;
    .end local v24    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    .end local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    .end local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    .end local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    .end local v28    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    .end local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    .end local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 1060
    .restart local v19    # "detailInfoButton":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09006f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 1063
    .restart local v20    # "detailInfoButton2":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09004f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 1066
    .restart local v24    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090075

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 1069
    .restart local v21    # "detailInfoButton3":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09007e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 1071
    .restart local v22    # "detailInfoButton4":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090083

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 1073
    .restart local v23    # "detailInfoButton5":Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090088

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 1076
    .restart local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f09008a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 1078
    .restart local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090071

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 1080
    .restart local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090077

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 1083
    .restart local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090080

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 1085
    .restart local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090085

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 1087
    .restart local v28    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    .line 1091
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    .line 1092
    .restart local v48    # "mSubTitle":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    const-string v3, "  |  "

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1097
    .end local v48    # "mSubTitle":Ljava/lang/StringBuilder;
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1100
    :cond_25
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    .line 1104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v7, v7, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    :cond_26
    move-object/from16 v0, v35

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v5, 0x28

    if-ne v3, v5, :cond_1e

    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1111
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1166
    .end local v19    # "detailInfoButton":Landroid/widget/RelativeLayout;
    .end local v20    # "detailInfoButton2":Landroid/widget/RelativeLayout;
    .end local v21    # "detailInfoButton3":Landroid/widget/RelativeLayout;
    .end local v22    # "detailInfoButton4":Landroid/widget/RelativeLayout;
    .end local v23    # "detailInfoButton5":Landroid/widget/RelativeLayout;
    .end local v24    # "detailInfoLandButton":Landroid/widget/LinearLayout;
    .end local v25    # "detailInfoLandButton_2":Landroid/widget/LinearLayout;
    .end local v26    # "detailInfoLandButton_3":Landroid/widget/LinearLayout;
    .end local v27    # "detailInfoLandButton_4":Landroid/widget/LinearLayout;
    .end local v28    # "detailInfoLandButton_5":Landroid/widget/LinearLayout;
    .end local v29    # "detailInfoLandMargin_1":Landroid/widget/LinearLayout;
    .end local v30    # "detailInfoLandMargin_2":Landroid/widget/LinearLayout;
    :cond_28
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v51, v0

    .restart local v51    # "nameOrNumber":Ljava/lang/CharSequence;
    goto/16 :goto_9

    .line 1173
    :cond_29
    if-eqz v46, :cond_2a

    .line 1174
    const/16 v50, 0x0

    .line 1176
    .restart local v50    # "mainActionIntent":Landroid/content/Intent;
    const/16 v49, 0x0

    .local v49, "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_a

    .line 1177
    .end local v49    # "mainActionDescription":Ljava/lang/String;
    .end local v50    # "mainActionIntent":Landroid/content/Intent;
    :cond_2a
    if-eqz v45, :cond_2b

    .line 1187
    const/16 v50, 0x0

    .line 1189
    .restart local v50    # "mainActionIntent":Landroid/content/Intent;
    const/16 v49, 0x0

    .restart local v49    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_a

    .line 1190
    .end local v49    # "mainActionDescription":Ljava/lang/String;
    .end local v50    # "mainActionIntent":Landroid/content/Intent;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1191
    new-instance v50, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1192
    .restart local v50    # "mainActionIntent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    const-string v3, "phone"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e01fd

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v49

    .restart local v49    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_a

    .line 1197
    .end local v49    # "mainActionDescription":Ljava/lang/String;
    :catch_1
    move-exception v32

    .line 1198
    .local v32, "e":Ljava/lang/IllegalStateException;
    const-string v3, "CallDetailFragment"

    const-string v5, "IllegalStateException exception"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1203
    .end local v32    # "e":Ljava/lang/IllegalStateException;
    .end local v50    # "mainActionIntent":Landroid/content/Intent;
    :cond_2c
    const/16 v50, 0x0

    .line 1205
    .restart local v50    # "mainActionIntent":Landroid/content/Intent;
    goto/16 :goto_a

    .line 1222
    .restart local v31    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v43    # "intent_sim1_call":Landroid/content/Intent;
    :cond_2d
    const-string v3, "simnum"

    const/4 v5, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    .line 1232
    .end local v43    # "intent_sim1_call":Landroid/content/Intent;
    :cond_2e
    new-instance v38, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1234
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v5, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    new-instance v33, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e0038

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v31, v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0e01ff

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v51, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .restart local v33    # "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
    goto/16 :goto_c

    .line 1319
    .end local v31    # "displayNumber":Ljava/lang/CharSequence;
    .end local v33    # "entry":Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
    .end local v38    # "intent":Landroid/content/Intent;
    :cond_2f
    const/4 v3, 0x0

    goto/16 :goto_d

    .line 1329
    .restart local v18    # "detail":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .restart local v37    # "i":I
    .restart local v47    # "length":I
    :cond_30
    const/4 v3, 0x0

    aput-object v18, p1, v3

    .line 1332
    .end local v18    # "detail":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v37    # "i":I
    .end local v47    # "length":I
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090041

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/ListView;

    .line 1334
    .local v36, "historyList":Landroid/widget/ListView;
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iget-object v9, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2600(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, v35

    iget v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    int-to-long v7, v5

    move-object/from16 v0, v53

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->loadContactPhotos(Landroid/net/Uri;J)V
    invoke-static {v3, v0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Landroid/net/Uri;J)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
