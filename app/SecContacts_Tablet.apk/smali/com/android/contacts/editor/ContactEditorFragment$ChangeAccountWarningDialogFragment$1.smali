.class Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;)V
    .locals 0

    .prologue
    .line 2253
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1700(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/View;)V

    .line 2261
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->access$1800()Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->access$1900()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v2

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->access$2000()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v3

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 2262
    return-void
.end method
