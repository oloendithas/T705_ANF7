.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->startCheckProcessing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 614
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 615
    const-wide/16 v1, 0x96

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "first":Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 623
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$202(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 619
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_1

    .line 628
    .end local v0    # "first":Z
    :cond_3
    return-void
.end method
