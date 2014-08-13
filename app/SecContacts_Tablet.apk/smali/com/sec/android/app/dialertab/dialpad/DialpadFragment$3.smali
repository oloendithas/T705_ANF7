.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;
.super Landroid/telephony/PhoneStateListener;
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
    .line 910
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 920
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialpadChooserVisible()Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showDialpadChooser(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)V

    .line 931
    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->needToShowDialpadChooser:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$602(Z)Z

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resetAllLayout()V

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$3;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setEditTextView()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    .line 935
    :cond_0
    return-void
.end method
