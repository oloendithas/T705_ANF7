.class Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;
.super Ljava/lang/Object;
.source "FavoriteInterfaceListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchMode(Z)V

    .line 269
    return v1

    :cond_0
    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    # getter for: Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->access$000(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    # getter for: Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->access$100(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 257
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    # getter for: Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->access$000(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    # getter for: Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->access$000(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 262
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
