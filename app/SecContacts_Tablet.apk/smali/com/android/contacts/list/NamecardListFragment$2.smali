.class Lcom/android/contacts/list/NamecardListFragment$2;
.super Ljava/lang/Object;
.source "NamecardListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/NamecardListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/NamecardListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/NamecardListFragment;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/NamecardListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    :goto_0
    return v0

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/contacts/list/NamecardListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    iput-boolean v0, v2, Lcom/android/contacts/list/NamecardListFragment;->mCustomSearchMode:Z

    .line 323
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/NamecardListFragment;->setSearchMode(Z)V

    .line 332
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v2, p1, v0}, Lcom/android/contacts/list/NamecardListFragment;->setQueryString(Ljava/lang/String;Z)V

    move v0, v1

    .line 334
    goto :goto_0

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    iput-boolean v1, v2, Lcom/android/contacts/list/NamecardListFragment;->mCustomSearchMode:Z

    .line 329
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/NamecardListFragment;->setSearchMode(Z)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    # getter for: Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/NamecardListFragment;->access$100(Lcom/android/contacts/list/NamecardListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/NamecardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 344
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    # getter for: Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/NamecardListFragment;->access$100(Lcom/android/contacts/list/NamecardListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListFragment$2;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    # getter for: Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/NamecardListFragment;->access$100(Lcom/android/contacts/list/NamecardListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 349
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method