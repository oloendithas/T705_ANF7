.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeakerphoneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p2, "x1"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 747
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v0

    .line 748
    .local v0, "previousState":Z
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    .line 749
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    if-nez v0, :cond_2

    :goto_1
    invoke-interface {v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    .line 762
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 748
    goto :goto_0

    :cond_2
    move v2, v3

    .line 750
    goto :goto_1
.end method
