.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->deleteContact(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

.field final synthetic val$contactIds:Ljava/util/ArrayList;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Ljava/util/ArrayList;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 4852
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iput-object p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;->val$contactIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 4886
    const/4 v0, 0x0

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirmPopupShowing:Z
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$902(Z)Z

    .line 4887
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;->val$contactIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startWithIds(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 4888
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 4890
    return-void
.end method
