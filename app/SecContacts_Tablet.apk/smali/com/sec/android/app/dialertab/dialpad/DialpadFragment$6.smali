.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;
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
    .line 1159
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1161
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->isImsOn()Z

    move-result v1

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->updateCallIcon(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)V

    .line 1164
    :cond_0
    return-void
.end method
