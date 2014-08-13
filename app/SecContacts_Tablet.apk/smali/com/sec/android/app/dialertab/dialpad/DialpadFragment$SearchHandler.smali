.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4431
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 4432
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4433
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x111

    .line 4436
    const/4 v4, 0x0

    .line 4437
    .local v4, "mContact":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    const/4 v0, 0x0

    .line 4439
    .local v0, "bCmpString":Z
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->block()V

    .line 4440
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->close()V

    .line 4442
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4443
    .local v1, "copyMsg":Landroid/os/Message;
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 4445
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4447
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 4553
    :cond_0
    :goto_0
    return-void

    .line 4449
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4451
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4453
    .local v5, "temp":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4454
    :try_start_0
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v8, "<++++++++++>Sync "

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4457
    const/4 v0, 0x0

    .line 4459
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_Contact_SeparateLookupTable4ChinaDialerSearch"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 4460
    const/4 v0, 0x1

    .line 4478
    :goto_1
    if-nez v0, :cond_2

    .line 4479
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x111

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4480
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 4481
    monitor-exit v7

    goto :goto_0

    .line 4548
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 4462
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_1

    .line 4465
    :catch_0
    move-exception v3

    .line 4466
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v8, "IndexOutOfBoundsException in SEARCHSTART"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x111

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4468
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 4469
    monitor-exit v7

    goto :goto_0

    .line 4471
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .line 4472
    .local v3, "e":Ljava/lang/NegativeArraySizeException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v8, "NegativeArraySizeException in SEARCHSTART"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x111

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4474
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 4475
    monitor-exit v7

    goto/16 :goto_0

    .line 4484
    .end local v3    # "e":Ljava/lang/NegativeArraySizeException;
    :cond_2
    if-eqz v5, :cond_3

    .line 4485
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    invoke-static {v6, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v4

    .line 4488
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4489
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v6, v8, :cond_4

    .line 4490
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 4491
    const/16 v6, 0x13

    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 4492
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v6

    iput v6, v1, Landroid/os/Message;->arg2:I

    .line 4493
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4494
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4495
    .local v2, "data":Landroid/os/Bundle;
    const-string v8, "args"

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4496
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4497
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v6, v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4602(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 4498
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4502(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 4523
    .end local v2    # "data":Landroid/os/Bundle;
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_8

    .line 4524
    monitor-exit v7

    goto/16 :goto_0

    .line 4499
    :cond_4
    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v6, v8, :cond_5

    .line 4500
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 4501
    const/16 v6, 0x12

    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 4502
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v6, v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4602(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 4503
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4502(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    goto :goto_2

    .line 4505
    :cond_5
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 4506
    const/16 v6, 0x14

    iput v6, v1, Landroid/os/Message;->arg1:I

    goto :goto_2

    .line 4509
    :cond_6
    if-eqz v4, :cond_7

    .line 4510
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 4511
    const/16 v6, 0x13

    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 4512
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v6

    iput v6, v1, Landroid/os/Message;->arg2:I

    .line 4513
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4514
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4515
    .restart local v2    # "data":Landroid/os/Bundle;
    const-string v8, "args"

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4516
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_2

    .line 4518
    .end local v2    # "data":Landroid/os/Bundle;
    :cond_7
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 4519
    const/16 v6, 0x12

    iput v6, v1, Landroid/os/Message;->arg1:I

    goto :goto_2

    .line 4526
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x111

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4529
    const/4 v0, 0x0

    .line 4530
    :try_start_5
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    .line 4543
    if-eqz v0, :cond_9

    .line 4544
    :try_start_6
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4548
    :goto_3
    monitor-exit v7

    goto/16 :goto_0

    .line 4532
    :catch_2
    move-exception v3

    .line 4533
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v8, "IndexOutOfBoundsException in SEARCHSTART after listCreateSimple"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4534
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 4535
    monitor-exit v7

    goto/16 :goto_0

    .line 4537
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v3

    .line 4538
    .local v3, "e":Ljava/lang/NegativeArraySizeException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v8, "NegativeArraySizeException in SEARCHSTART after listCreateSimple"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4539
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 4540
    monitor-exit v7

    goto/16 :goto_0

    .line 4546
    .end local v3    # "e":Ljava/lang/NegativeArraySizeException;
    :cond_9
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 4447
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
