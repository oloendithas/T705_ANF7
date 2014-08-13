.class final Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PositionUpdater"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private final mPeriodMillis:I

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSetClipPostitionRunnable:Ljava/lang/Runnable;

.field private prevPos:I

.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 1
    .param p2, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "periodMillis"    # I

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;

    .line 977
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->prevPos:I

    .line 979
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mSetClipPostitionRunnable:Ljava/lang/Runnable;

    .line 1023
    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1024
    iput p3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mPeriodMillis:I

    .line 1025
    return-void
.end method

.method static synthetic access$2800(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    .prologue
    .line 973
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->prevPos:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 973
    iput p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->prevPos:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mSetClipPostitionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1030
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mSetClipPostitionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1032
    :cond_0
    return-void
.end method

.method public startUpdating(II)V
    .locals 8
    .param p1, "beginPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 1035
    iget-object v7, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mPeriodMillis:I

    int-to-long v4, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1041
    monitor-exit v7

    .line 1042
    return-void

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopUpdating()V
    .locals 3

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1050
    :cond_0
    monitor-exit v1

    .line 1051
    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
