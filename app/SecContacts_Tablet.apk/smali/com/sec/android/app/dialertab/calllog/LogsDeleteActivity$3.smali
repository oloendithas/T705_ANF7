.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 388
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x2

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mScrollState:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    if-ne p2, v1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # setter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mScrollState:I
    invoke-static {v0, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$102(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;I)I

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setScrollState(I)V

    .line 368
    if-nez p2, :cond_2

    .line 369
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->startRequestProcessing()V

    goto :goto_0

    .line 378
    :cond_2
    const/4 v0, 0x1

    if-eq v0, p2, :cond_3

    if-ne v1, p2, :cond_0

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    goto :goto_0
.end method
