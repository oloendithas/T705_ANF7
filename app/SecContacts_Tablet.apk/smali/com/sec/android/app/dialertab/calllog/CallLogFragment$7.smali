.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->createSearchBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 8
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f090090

    const v6, 0x7f09008f

    const v5, 0x7f09008e

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 1468
    const-string v0, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryTextChange...queryText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1491
    :goto_0
    return v0

    .line 1472
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e02de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e02de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1488
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1002(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1489
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchQueryString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(ILjava/lang/String;Landroid/content/Context;)V

    .line 1491
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1479
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e0305

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090094

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e0305

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090095

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090093

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1500
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1502
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1505
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 1507
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
