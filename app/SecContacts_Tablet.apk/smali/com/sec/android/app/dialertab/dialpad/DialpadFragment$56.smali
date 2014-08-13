.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$56;
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
    .line 16159
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$56;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 16162
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " UCEHandler: msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 16165
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 16166
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_1

    .line 16167
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$56;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->vt_call_btn_enabled:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8802(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 16169
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$56;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateVideoCallIcon(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)V

    .line 16176
    :cond_0
    :goto_0
    return-void

    .line 16171
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$56;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->vt_call_btn_enabled:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8802(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 16172
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$56;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateVideoCallIcon(Z)V
    invoke-static {v0, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)V

    goto :goto_0
.end method
