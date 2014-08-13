.class Lcom/android/contacts/group/GroupBrowseListFragment$14;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0

    .prologue
    .line 3523
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$14;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3525
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3526
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$14;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4602(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 3527
    return-void
.end method
