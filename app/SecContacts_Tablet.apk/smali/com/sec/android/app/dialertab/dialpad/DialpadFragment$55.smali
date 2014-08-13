.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$55;
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
    .line 16036
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$55;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x3e8

    .line 16039
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 16055
    :goto_0
    return-void

    .line 16042
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$55;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setTSPExtendedMode(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)V

    .line 16043
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$55;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mTSPExtendedHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 16044
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$55;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mTSPExtendedHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TSP_EXTENED_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 16048
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$55;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mTSPExtendedHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 16049
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$55;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setTSPExtendedMode(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)V

    goto :goto_0

    .line 16039
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
