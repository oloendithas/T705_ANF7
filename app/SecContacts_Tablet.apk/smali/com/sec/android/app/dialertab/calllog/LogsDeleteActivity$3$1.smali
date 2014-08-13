.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3$1;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mScrollState:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const-string v0, "LogsDeleteActivity"

    const-string v1, "mAdapter notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 375
    :cond_0
    return-void
.end method
