.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;
.super Ljava/lang/Object;
.source "InteractionPickerFavoritesFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

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

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    :goto_0
    return v0

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$002(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchMode(Z)V

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchMode(Z)V

    :cond_2
    move v0, v1

    .line 409
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 420
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 425
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
