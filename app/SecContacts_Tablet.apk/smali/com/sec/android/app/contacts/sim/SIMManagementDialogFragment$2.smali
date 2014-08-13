.class Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;
.super Ljava/lang/Object;
.source "SIMManagementDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 132
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 133
    .local v3, "resId":I
    packed-switch v3, :pswitch_data_0

    .line 163
    const/4 v1, 0x1

    .line 164
    .local v1, "dismissDialog":Z
    const-string v4, "SIMManagementDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    if-eqz v1, :cond_0

    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 171
    :cond_0
    return-void

    .line 135
    .end local v1    # "dismissDialog":Z
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    # invokes: Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->handleImportRequest(I)Z
    invoke-static {v4, v3}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->access$000(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;I)Z

    move-result v1

    .line 136
    .restart local v1    # "dismissDialog":Z
    goto :goto_0

    .line 141
    .end local v1    # "dismissDialog":Z
    :pswitch_1
    const/4 v1, 0x1

    .line 142
    .restart local v1    # "dismissDialog":Z
    new-instance v2, Landroid/content/Intent;

    const-string v4, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "intentCopy":Landroid/content/Intent;
    const-string v4, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string v4, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v4, "CONTACT_SELECTION_TITLE"

    iget-object v5, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    const v6, 0x7f0e03b4

    invoke-virtual {v5, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    .end local v1    # "dismissDialog":Z
    .end local v2    # "intentCopy":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "intent.action.DELETE_SIM_CONTACT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "deleteIntent":Landroid/content/Intent;
    const-string v4, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string v4, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v4, "CONTACT_SELECTION_TITLE"

    iget-object v5, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    const v6, 0x7f0e03b5

    invoke-virtual {v5, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 158
    const/4 v1, 0x1

    .line 159
    .restart local v1    # "dismissDialog":Z
    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x7f0e03b3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
