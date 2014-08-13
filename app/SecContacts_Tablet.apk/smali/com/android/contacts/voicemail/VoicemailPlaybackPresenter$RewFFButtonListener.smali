.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewFFButtonListener"
.end annotation


# instance fields
.field public mSeekHander:Landroid/os/Handler;

.field private mTimer:Ljava/util/TimerTask;

.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

.field private timer:Ljava/util/Timer;


# direct methods
.method private constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 1

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->timer:Ljava/util/Timer;

    .line 823
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mSeekHander:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p2, "x1"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    return-void
.end method

.method private TimerMethod()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 835
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mTimer:Ljava/util/TimerTask;

    .line 858
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mTimer:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 860
    return-void
.end method

.method static synthetic access$2600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;)Ljava/util/TimerTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mTimer:Ljava/util/TimerTask;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x63

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 866
    const-string v4, "VoicemailPlaybackPresenter"

    const-string v5, "RewFFButtonListener OnTouch "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_7

    .line 868
    const-string v4, "VoicemailPlaybackPresenter"

    const-string v5, "MotionEvent.ACTION_DOWN "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 963
    :cond_0
    :goto_0
    :pswitch_0
    return v9

    .line 872
    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    const/16 v5, -0x3e8

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I
    invoke-static {v4, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2302(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)I

    .line 873
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z
    invoke-static {v4, v8}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2502(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 874
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->TimerMethod()V

    .line 876
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 877
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    # invokes: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v4, v5, v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;II)V

    .line 878
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z
    invoke-static {v4, v8}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2702(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    goto :goto_0

    .line 888
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z
    invoke-static {v4, v8}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2102(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 889
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v4

    add-int/lit16 v4, v4, -0x1f4

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v4, v9, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 890
    .local v3, "startPosition":I
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 891
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 892
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 894
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 895
    .local v0, "millis":I
    div-int/lit16 v2, v0, 0x3e8

    .line 896
    .local v2, "seconds":I
    div-int/lit8 v1, v2, 0x3c

    .line 897
    .local v1, "minutes":I
    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v2, v4

    .line 898
    if-le v1, v6, :cond_3

    .line 899
    const/16 v1, 0x63

    .line 903
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    .line 904
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 905
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 911
    .end local v0    # "millis":I
    .end local v1    # "minutes":I
    .end local v2    # "seconds":I
    .end local v3    # "startPosition":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    const/16 v5, 0x3e8

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I
    invoke-static {v4, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2302(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)I

    .line 912
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z
    invoke-static {v4, v8}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2502(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 913
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->TimerMethod()V

    .line 915
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 916
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    # invokes: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v4, v5, v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;II)V

    .line 917
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z
    invoke-static {v4, v8}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2702(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    goto/16 :goto_0

    .line 928
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z
    invoke-static {v4, v8}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2102(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 929
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v4

    add-int/lit16 v4, v4, 0x1f4

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v4, v9, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 930
    .restart local v3    # "startPosition":I
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 931
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 932
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 934
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 935
    .restart local v0    # "millis":I
    div-int/lit16 v2, v0, 0x3e8

    .line 936
    .restart local v2    # "seconds":I
    div-int/lit8 v1, v2, 0x3c

    .line 937
    .restart local v1    # "minutes":I
    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v2, v4

    .line 938
    if-le v1, v6, :cond_6

    .line 939
    const/16 v1, 0x63

    .line 942
    :cond_6
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    .line 943
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 944
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 950
    .end local v0    # "millis":I
    .end local v1    # "minutes":I
    .end local v2    # "seconds":I
    .end local v3    # "startPosition":I
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_8

    .line 951
    const-string v4, "VoicemailPlaybackPresenter"

    const-string v5, "MotionEvent.ACTION_MOVE "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 953
    :cond_8
    const-string v4, "VoicemailPlaybackPresenter"

    const-string v5, "MotionEvent.ACTION_UP "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z
    invoke-static {v4, v9}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2502(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    .line 956
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z
    invoke-static {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 957
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I
    invoke-static {v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I

    move-result v6

    add-int/2addr v5, v6

    # invokes: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V
    invoke-static {v4, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2200(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)V

    .line 958
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z
    invoke-static {v4, v9}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2702(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z

    goto/16 :goto_0

    .line 869
    :pswitch_data_0
    .packed-switch 0x7f0903db
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
