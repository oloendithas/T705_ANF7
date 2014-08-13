.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogSpamMsgConfirmDlg()V
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
    .line 2377
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2379
    const-string v7, "CallLogFragment"

    const-string v8, "==== showDeleteLogSpamMsgConfirmDlg ==== "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    const/4 v5, 0x0

    .line 2381
    .local v5, "iColumnIndex":I
    const/4 v6, 0x0

    .line 2382
    .local v6, "iItemIndex":I
    const/4 v1, 0x0

    .line 2383
    .local v1, "SpamMsgType":I
    const-string v0, ""

    .line 2384
    .local v0, "SpamMsgID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2386
    .local v3, "callIds":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 2387
    .local v2, "c":Landroid/database/Cursor;
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1900()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2389
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2000()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 2390
    const-string v7, "_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2391
    const/16 v7, 0xf

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2393
    const/16 v7, 0x12c

    if-eq v1, v7, :cond_0

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_1

    .line 2394
    :cond_0
    const/16 v7, 0x19

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2395
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v7, v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->VIP_Delete_SpamMsgData(ILjava/lang/String;)V

    .line 2398
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 2400
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2403
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 2404
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1600()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2405
    const-string v7, "CallLogFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleted ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2408
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->REMOVE_ITME_FROM_CALL_LOG:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17$1;

    invoke-direct {v9, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;Ljava/lang/StringBuilder;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-interface {v7, v8, v9, v10}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2422
    return-void
.end method
