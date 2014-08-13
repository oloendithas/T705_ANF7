.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 4321
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x11

    const/4 v8, 0x4

    const/16 v7, 0x8

    .line 4328
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x111

    if-ne v4, v5, :cond_1

    .line 4329
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    .line 4330
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "DialerHandlerThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    .line 4331
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 4332
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    new-instance v5, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v7, v7, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3602(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Handler;)Landroid/os/Handler;

    .line 4333
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4334
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 4335
    .local v2, "msg1":Landroid/os/Message;
    iput v9, v2, Landroid/os/Message;->what:I

    .line 4336
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4337
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<<<<<<<<< TIME OUT!!!! >>>>>>>>>"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4427
    .end local v2    # "msg1":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 4340
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x70

    if-ne v4, v5, :cond_b

    .line 4341
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 4342
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<++++++++++>Sync UI"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4347
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 4396
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg.arg1 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4398
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4399
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4400
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4411
    :cond_3
    :goto_1
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->condition:Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3900()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 4349
    :pswitch_0
    const/4 v0, 0x0

    .line 4350
    .local v0, "bCmpString":Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4353
    .local v3, "temp":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 4364
    if-eqz v0, :cond_3

    .line 4365
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 4366
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4367
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4368
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4369
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    iget v6, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
    invoke-static {v5, v4, v3, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V

    .line 4370
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 4371
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->registerSearchHover()V
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    goto :goto_1

    .line 4355
    :catch_0
    move-exception v1

    .line 4356
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IndexOutOfBoundsException in SEARCHOK"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4359
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 4360
    .local v1, "e":Ljava/lang/NegativeArraySizeException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NegativeArraySizeException in SEARCHOK"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4375
    .end local v1    # "e":Ljava/lang/NegativeArraySizeException;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchResultLayout(Ljava/lang/String;Z)V
    invoke-static {v4, v3, v11}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4379
    .end local v0    # "bCmpString":Z
    .end local v3    # "temp":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 4380
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 4381
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4382
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4383
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 4385
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchResultEmpty()V
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    goto/16 :goto_1

    .line 4388
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4389
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 4390
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4391
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4392
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 4404
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4405
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 4406
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4407
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4408
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$3700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 4412
    :cond_b
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x71

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->firstKeyCode:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 4413
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FIRSTKEYUP_TIMEOUT firstKeyCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->firstKeyCode:I
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->firstKeyCode:I
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v5

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->keyPressed(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)V

    .line 4418
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->firstKeyCode:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_d

    .line 4419
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    .line 4424
    :cond_c
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4425
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 4420
    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->firstKeyCode:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    if-ne v4, v9, :cond_e

    .line 4421
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_2

    .line 4422
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->firstKeyCode:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    const/4 v5, 0x6

    if-le v4, v5, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->firstKeyCode:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    if-ge v4, v9, :cond_c

    .line 4423
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$13;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->firstKeyCode:I
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_2

    .line 4347
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
