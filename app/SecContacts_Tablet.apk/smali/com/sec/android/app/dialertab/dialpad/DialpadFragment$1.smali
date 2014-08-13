.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/dialpad/VoWifiStateTracker$VoWifiStateListener;


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
    .line 853
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoWifiStateChanged(Z)V
    .locals 3
    .param p1, "isRegistered"    # Z

    .prologue
    const/4 v1, 0x1

    .line 855
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 856
    .local v0, "updateStatus":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mWfcHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 857
    iput v1, v0, Landroid/os/Message;->what:I

    .line 858
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 859
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 860
    return-void

    .line 858
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
