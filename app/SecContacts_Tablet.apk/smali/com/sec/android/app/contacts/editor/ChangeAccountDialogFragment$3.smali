.class Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;
.super Ljava/lang/Object;
.source "ChangeAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/high16 v4, 0x80000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 160
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_DisableMergeWithGoogle"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    const-string v2, "authorities"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "com.android.contacts"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 188
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 171
    .local v0, "activty":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 172
    # getter for: Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;
    invoke-static {}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->access$100()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v2

    if-nez v2, :cond_2

    .line 173
    invoke-static {}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getEditorUtilInstance()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v2

    # setter for: Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;
    invoke-static {v2}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->access$102(Lcom/android/contacts/editor/ContactEditorUtils;)Lcom/android/contacts/editor/ContactEditorUtils;

    .line 180
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    const-string v2, "authorities"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "com.android.contacts"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "account_types"

    # getter for: Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;
    invoke-static {}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->access$100()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/editor/ContactEditorUtils;->getWritableAccountTypeStrings()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
