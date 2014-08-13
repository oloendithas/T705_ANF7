.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg()V
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
    .line 2580
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/16 v11, 0x2c

    const/4 v10, 0x2

    .line 2582
    const/4 v5, 0x0

    .line 2583
    .local v5, "iColumnIndex":I
    const/4 v6, 0x0

    .line 2584
    .local v6, "iItemIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2585
    .local v1, "callIds":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2586
    .local v2, "checkedRemindMeDates":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2588
    .local v3, "checkedRemindMeNumbers":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2589
    .local v0, "c":Landroid/database/Cursor;
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1900()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2591
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2000()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 2592
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2593
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2595
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    const-string v7, "feature_remind_me_later_support "

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2599
    const/16 v7, 0x1f

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_1

    .line 2600
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 2601
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2602
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2612
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2613
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1600()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2614
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

    .line 2591
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2604
    :cond_3
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2605
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2608
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2617
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->REMOVE_ITME_FROM_CALL_LOG:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19$1;

    invoke-direct {v9, p0, v1, v3, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-interface {v7, v8, v9, v10}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2644
    return-void
.end method
