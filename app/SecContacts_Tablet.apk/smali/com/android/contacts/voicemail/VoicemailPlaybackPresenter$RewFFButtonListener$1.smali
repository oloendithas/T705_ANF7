.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;
.super Landroid/os/Handler;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;
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
    .line 823
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 825
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "mSeekHandler is called "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    iget-object v0, v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    iget-object v1, v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I

    move-result v1

    # invokes: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePlayBack(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)V

    .line 827
    return-void
.end method
