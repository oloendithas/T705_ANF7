.class Lcom/android/contacts/group/GroupBrowseListFragment$7;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(I)V
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
    .line 3386
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$7;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 3389
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_1

    .line 3391
    :cond_0
    const/4 v0, 0x1

    .line 3398
    :goto_0
    return v0

    .line 3392
    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 3393
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3394
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$7;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z
    invoke-static {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4602(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    goto :goto_0

    .line 3397
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$7;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z
    invoke-static {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4602(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    goto :goto_0
.end method
