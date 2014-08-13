.class Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DisplayOptionsPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

.field final synthetic val$filterintent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    iput-object p2, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->val$filterintent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const v8, 0x7f0e0113

    const/4 v5, 0x1

    .line 195
    iget-object v7, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->val$filterintent:Landroid/content/Intent;

    if-eqz v7, :cond_0

    .line 196
    iget-object v7, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    # getter for: Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$000(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    .line 197
    .local v0, "isKnoxMode":Z
    if-nez v0, :cond_5

    .line 198
    iget-object v7, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    # getter for: Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$000(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    .line 213
    .local v4, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/4 v3, 0x0

    .line 214
    .local v3, "isSimReady":Z
    const/4 v2, 0x0

    .line 215
    .local v2, "isSimCheck":Z
    const/4 v1, 0x0

    .line 216
    .local v1, "isSim2Check":Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 218
    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    move v2, v5

    .line 222
    :goto_0
    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .line 226
    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 227
    iget-object v6, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    .line 253
    .end local v0    # "isKnoxMode":Z
    .end local v1    # "isSim2Check":Z
    .end local v2    # "isSimCheck":Z
    .end local v3    # "isSimReady":Z
    .end local v4    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_0
    :goto_2
    return v5

    .restart local v0    # "isKnoxMode":Z
    .restart local v1    # "isSim2Check":Z
    .restart local v2    # "isSimCheck":Z
    .restart local v3    # "isSimReady":Z
    .restart local v4    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_1
    move v2, v6

    .line 218
    goto :goto_0

    :cond_2
    move v1, v6

    .line 222
    goto :goto_1

    .line 232
    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 233
    iget-object v6, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    goto :goto_2

    .line 239
    :cond_4
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v3

    .line 240
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v3, :cond_5

    .line 241
    iget-object v6, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    goto :goto_2

    .line 249
    .end local v1    # "isSim2Check":Z
    .end local v2    # "isSimCheck":Z
    .end local v3    # "isSimReady":Z
    .end local v4    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->val$filterintent:Landroid/content/Intent;

    const-string v7, "currentFilter"

    iget-object v8, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    # getter for: Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v8}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$100(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    iget-object v6, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    # getter for: Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mContext:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$000(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->val$filterintent:Landroid/content/Intent;

    const/16 v8, 0x2711

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method
