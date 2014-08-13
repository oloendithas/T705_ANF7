.class Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;)V
    .locals 0

    .prologue
    .line 3476
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 3480
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/ContactEditorFragment;

    .line 3482
    .local v2, "targetFragment":Lcom/android/contacts/editor/ContactEditorFragment;
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "contactUri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3486
    .local v0, "contactUri":Landroid/net/Uri;
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v1, v3

    .line 3488
    .local v1, "isAirplaneModeOn":Z
    :cond_0
    if-ne v1, v3, :cond_1

    .line 3489
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e03d7

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3495
    :goto_0
    return-void

    .line 3492
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doEditSuggestedContact(Landroid/net/Uri;)V

    .line 3493
    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->clearPhotoValues()V

    goto :goto_0
.end method
