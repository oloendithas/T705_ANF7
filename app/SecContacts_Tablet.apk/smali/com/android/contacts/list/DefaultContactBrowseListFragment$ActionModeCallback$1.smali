.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)V
    .locals 0

    .prologue
    .line 4718
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$1;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4720
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$1;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showShareViaList()V

    .line 4721
    return-void
.end method
