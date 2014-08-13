.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;
.super Ljava/util/TimerTask;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->TimerMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;


# direct methods
.method constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    iget-object v1, v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2500(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    const-string v1, "VoicemailPlaybackPresenter"

    const-string v2, "RewFFButtonListener in timer "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    iget-object v1, v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    const/4 v2, 0x1

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z
    invoke-static {v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2502(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 846
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    iget-object v1, v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mSeekHander:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 847
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    iget-object v1, v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mSeekHander:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 852
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mTimer:Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->access$2600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_0
.end method
