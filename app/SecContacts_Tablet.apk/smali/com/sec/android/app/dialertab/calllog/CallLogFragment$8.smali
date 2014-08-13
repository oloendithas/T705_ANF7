.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 1511
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1514
    if-eqz p2, :cond_1

    .line 1515
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearFocus()V

    .line 1516
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mNotRequestFocus:Z

    .line 1527
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1528
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1529
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
