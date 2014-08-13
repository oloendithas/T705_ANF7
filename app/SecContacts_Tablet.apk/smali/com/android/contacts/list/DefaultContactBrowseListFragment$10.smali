.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1342
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    :goto_0
    return v2

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;)V

    .line 1348
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object p1, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 1349
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 1350
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    move v2, v1

    .line 1351
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1349
    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1360
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1362
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1363
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1365
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 1367
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
