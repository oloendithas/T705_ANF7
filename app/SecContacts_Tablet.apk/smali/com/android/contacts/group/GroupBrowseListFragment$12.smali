.class Lcom/android/contacts/group/GroupBrowseListFragment$12;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 3419
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3421
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4802(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 3423
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "deleteCompleted"

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/contacts/ContactSaveService;->createGroupMultipleDeleteIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 3426
    .local v0, "saveIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3427
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$12;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment;->showProgress()V
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$4700(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    .line 3428
    return-void
.end method
