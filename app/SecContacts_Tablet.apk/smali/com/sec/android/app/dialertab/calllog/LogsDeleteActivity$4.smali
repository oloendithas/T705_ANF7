.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->startCheckProcessing()V
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
    .line 654
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 656
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 657
    const-wide/16 v1, 0x96

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 658
    const/4 v0, 0x1

    .line 659
    .local v0, "first":Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 662
    :cond_1
    if-eqz v0, :cond_0

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # setter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$302(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Z)Z

    .line 664
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 667
    .end local v0    # "first":Z
    :cond_2
    return-void
.end method
