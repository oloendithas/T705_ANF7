.class Lcom/android/contacts/activities/ContactEditorActivity$3;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 898
    return-void
.end method

.method public onContactSaveRequested()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/activities/ContactEditorActivity;->mContactSaveRequested:Z
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->access$902(Lcom/android/contacts/activities/ContactEditorActivity;Z)Z

    .line 974
    return-void
.end method

.method public onContactSplit(Landroid/net/Uri;)V
    .locals 1
    .param p1, "newLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 893
    return-void
.end method

.method public onCustomCreateContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    .line 922
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 924
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 927
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 928
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    if-eqz p2, :cond_0

    .line 933
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 935
    :cond_0
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    const-string v3, "data_set"

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const/high16 v3, 0x2800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 940
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 941
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 942
    return-void
.end method

.method public onCustomEditContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "rawContactUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .param p4, "redirect"    # Z

    .prologue
    .line 947
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 949
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 952
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 953
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 957
    if-eqz p3, :cond_0

    .line 958
    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 961
    :cond_0
    if-eqz p4, :cond_1

    .line 962
    const/high16 v3, 0x2800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 964
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 965
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "contactLookupUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 903
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 904
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    :cond_0
    const/high16 v1, 0x2800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 908
    const-string v1, "addToDefaultDirectory"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 915
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 916
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 917
    return-void
.end method

.method public onReverted()V
    .locals 2

    .prologue
    .line 844
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$400(Lcom/android/contacts/activities/ContactEditorActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # invokes: Lcom/android/contacts/activities/ContactEditorActivity;->hideInputMethod()V
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$500(Lcom/android/contacts/activities/ContactEditorActivity;)V

    .line 851
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 852
    return-void
.end method

.method public onSaveFinished(Landroid/content/Intent;)V
    .locals 5
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 859
    if-eqz p1, :cond_2

    .line 861
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mRedirectToPeopleActivity:Z
    invoke-static {v2}, Lcom/android/contacts/activities/ContactEditorActivity;->access$600(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    const-string v2, "fromPeopleActivity"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 864
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z
    invoke-static {v2}, Lcom/android/contacts/activities/ContactEditorActivity;->access$700(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 865
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    if-nez p1, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 866
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSetStarred:Z
    invoke-static {v2}, Lcom/android/contacts/activities/ContactEditorActivity;->access$800(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 868
    .local v0, "contactLookupUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 869
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSetStarred:Z
    invoke-static {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->access$800(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    .line 870
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 873
    .end local v0    # "contactLookupUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 875
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I
    invoke-static {v2}, Lcom/android/contacts/activities/ContactEditorActivity;->access$400(Lcom/android/contacts/activities/ContactEditorActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 876
    const-string v2, "tutorial_mode"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 886
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # invokes: Lcom/android/contacts/activities/ContactEditorActivity;->hideInputMethod()V
    invoke-static {v2}, Lcom/android/contacts/activities/ContactEditorActivity;->access$500(Lcom/android/contacts/activities/ContactEditorActivity;)V

    .line 887
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 888
    return-void

    .line 865
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 879
    :cond_4
    if-eqz p1, :cond_2

    .line 880
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mTutorialMode:I
    invoke-static {v2}, Lcom/android/contacts/activities/ContactEditorActivity;->access$400(Lcom/android/contacts/activities/ContactEditorActivity;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 881
    const-string v2, "tutorial_mode"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 883
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
