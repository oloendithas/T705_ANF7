.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;
.super Landroid/os/AsyncTask;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 403
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 404
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 405
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 398
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 414
    if-nez p1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # invokes: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->postSuccessfulPrepareActions()V
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$800(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackError(Ljava/lang/Exception;)V

    .line 418
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 398
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
