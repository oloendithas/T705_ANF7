.class Lcom/android/contacts/interactions/ImportExportDialogFragment$2;
.super Landroid/widget/ArrayAdapter;
.source "ImportExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    iput-object p4, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f0e03fa

    const v7, 0x7f0e03f9

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 152
    if-eqz p2, :cond_1

    move-object v2, p2

    :goto_0
    check-cast v2, Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    .line 155
    .local v1, "result":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, "resId":I
    const v2, 0x7f0e02bb

    if-eq v0, v2, :cond_0

    const v2, 0x7f0e00d4

    if-eq v0, v2, :cond_0

    const v2, 0x7f0e02c8

    if-eq v0, v2, :cond_0

    const v2, 0x7f0e02bc

    if-eq v0, v2, :cond_0

    const v2, 0x7f0e03f8

    if-eq v0, v2, :cond_0

    const v2, 0x7f0e02c9

    if-ne v0, v2, :cond_2

    :cond_0
    sget v2, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    if-nez v2, :cond_2

    .line 161
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 162
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 168
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    sparse-switch v0, :sswitch_data_0

    .line 191
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 198
    :goto_2
    return-object v1

    .line 152
    .end local v0    # "resId":I
    .end local v1    # "result":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0401e3

    invoke-virtual {v2, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 164
    .restart local v0    # "resId":I
    .restart local v1    # "result":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    .line 165
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 171
    :sswitch_0
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 176
    :sswitch_1
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v8, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 181
    :sswitch_2
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 186
    :sswitch_3
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v8, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 196
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x7f0e00d1 -> :sswitch_0
        0x7f0e02c8 -> :sswitch_1
        0x7f0e03f7 -> :sswitch_2
        0x7f0e03f8 -> :sswitch_3
    .end sparse-switch
.end method
