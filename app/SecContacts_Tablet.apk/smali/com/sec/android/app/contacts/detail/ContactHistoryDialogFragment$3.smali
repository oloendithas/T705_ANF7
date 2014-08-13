.class Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;
.super Ljava/lang/Object;
.source "ContactHistoryDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 142
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mChecked:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 143
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->setDoNotShowAgainDialog(Landroid/content/Context;)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;

    .line 147
    .local v1, "target":Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;
    invoke-interface {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;->onDeleteItem()V

    .line 148
    return-void
.end method
