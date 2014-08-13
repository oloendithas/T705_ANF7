.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;
.super Ljava/lang/Object;
.source "NamecardGridViewFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->setCustomActionBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 717
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 734
    :goto_0
    return v1

    .line 721
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 722
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTextChanged:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$202(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)Z

    .line 723
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$002(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 724
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchMode:Z
    invoke-static {v3, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1302(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)Z

    .line 725
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 726
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3$1;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    move v1, v2

    .line 734
    goto :goto_0

    :cond_2
    move v1, v2

    .line 724
    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 744
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$800(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 747
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$800(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$3;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$800(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 752
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
