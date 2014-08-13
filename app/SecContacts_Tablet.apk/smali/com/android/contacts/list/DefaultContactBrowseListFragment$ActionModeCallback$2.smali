.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;
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


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)V
    .locals 0

    .prologue
    .line 4893
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 4895
    const/4 v0, 0x0

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirmPopupShowing:Z
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$902(Z)Z

    .line 4896
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4897
    return-void
.end method
