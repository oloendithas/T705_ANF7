.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 608
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$400(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    :goto_0
    return v0

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # setter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$502(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 614
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # setter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchMode:Z
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$602(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Z)Z

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSearchMode(Z)V

    .line 620
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 622
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # setter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchMode:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$702(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Z)Z

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSearchMode(Z)V

    :cond_2
    move v0, v1

    .line 629
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 636
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$800(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 639
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$800(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$800(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 644
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
