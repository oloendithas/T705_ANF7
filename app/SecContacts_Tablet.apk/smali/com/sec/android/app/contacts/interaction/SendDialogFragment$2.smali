.class Lcom/sec/android/app/contacts/interaction/SendDialogFragment$2;
.super Ljava/lang/Object;
.source "SendDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/SendDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/SendDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/SendDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/SendDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 115
    .local v2, "resId":I
    const/4 v1, 0x0

    .line 118
    .local v1, "mIsEasyMode":Z
    packed-switch v2, :pswitch_data_0

    .line 154
    const-string v3, "SendDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/SendDialogFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 162
    :cond_0
    return-void

    .line 121
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "pick-multi-commtools"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v3, "toolitem"

    const-string v4, "email"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v3, "StartFrom"

    const-string v4, "contact"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v3, "actionbar_title"

    const-string v4, "Send email"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    if-eqz v1, :cond_1

    .line 129
    const-string v3, "mode"

    const-string v4, "easy-mode"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/SendDialogFragment;

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "pick-multi-commtools"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v3, "toolitem"

    const-string v4, "msg"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, "StartFrom"

    const-string v4, "contact"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v3, "actionbar_title"

    const-string v4, "Send message"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "FromMMS"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    if-eqz v1, :cond_2

    .line 147
    const-string v3, "mode"

    const-string v4, "easy-mode"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/SendDialogFragment;

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f0e0232
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
