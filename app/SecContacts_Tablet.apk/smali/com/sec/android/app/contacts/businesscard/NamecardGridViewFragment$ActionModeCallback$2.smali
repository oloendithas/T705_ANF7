.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "NamecardGridViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;->this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    iput-object p2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;->this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    iget-object v0, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;->this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->setSelectedContactIds(Ljava/util/ArrayList;)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;->this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    iget-object v0, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;->this$1:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->getDeleteUris()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->start(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 627
    return-void
.end method
