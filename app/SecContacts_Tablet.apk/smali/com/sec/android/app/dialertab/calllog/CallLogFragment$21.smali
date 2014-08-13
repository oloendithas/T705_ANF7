.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field final synthetic val$itemPosition:I

.field final synthetic val$itemSize:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;II)V
    .locals 0

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;->val$itemPosition:I

    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;->val$itemSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2668
    const/4 v3, 0x0

    .line 2669
    .local v3, "iColumnIndex":I
    const/4 v4, 0x0

    .line 2670
    .local v4, "iItemIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2672
    .local v1, "callIds":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2673
    .local v0, "c":Landroid/database/Cursor;
    const-string v5, "CallLogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor null? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;->val$itemPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;->val$itemSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;->val$itemPosition:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2676
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;->val$itemSize:I

    if-ge v2, v5, :cond_2

    .line 2677
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2678
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2679
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 2680
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2682
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2683
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2684
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1600()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2685
    const-string v5, "CallLogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2688
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->REMOVE_ITME_FROM_CALL_LOG:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21$1;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2704
    return-void
.end method
