.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackPositionListener"
.end annotation


# instance fields
.field private mShouldResumePlaybackAfterSeeking:Z

.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 716
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 718
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->mShouldResumePlaybackAfterSeeking:Z

    .line 693
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    # invokes: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v0, v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;II)V

    .line 697
    :goto_0
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch mView.getDesiredClipPosition() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch mPlayer.getCurrentPosition() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-void

    .line 695
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->mShouldResumePlaybackAfterSeeking:Z

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z
    invoke-static {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2102(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 704
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    # invokes: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v0, v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;II)V

    .line 707
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->mShouldResumePlaybackAfterSeeking:Z

    if-eqz v0, :cond_1

    .line 708
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch mView.getDesiredClipPosition() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v1

    # invokes: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2200(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)V

    .line 711
    :cond_1
    return-void
.end method
