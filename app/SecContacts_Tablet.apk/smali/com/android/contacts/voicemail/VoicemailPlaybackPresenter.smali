.class public Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StopButtonListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final CLIP_POSITION_KEY:Ljava/lang/String;

.field private static final FETCH_CONTENT_TIMEOUT_MS:J = 0x4e20L

.field private static final PAUSED_STATE_KEY:Ljava/lang/String;

.field private static final PLAYBACK_STREAM:I = 0x0

.field private static final PRESET_NAMES:[I

.field private static final PRESET_RATES:[F

.field private static final SLIDER_UPDATE_PERIOD_MILLIS:I = 0x21

.field private static final TAG:Ljava/lang/String; = "VoicemailPlaybackPresenter"


# instance fields
.field private isPrevPlaying:Z

.field private isSeekBarMoveEnable:Z

.field private mAfterDrag:Z

.field private final mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mClipPosition:I

.field private final mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDurationValue:I

.field private mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

.field private mIsPaused:Z

.field private mIsRotate:Z

.field private final mPlayer:Landroid/media/MediaPlayer;

.field private final mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

.field private mRateIndex:I

.field private final mStartPlayingImmediately:Z

.field private final mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

.field private final mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

.field private final mVoicemailUri:Landroid/net/Uri;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private movePostionByUser:I

.field private prevStartPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PAUSED_STATE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CLIP_POSITION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    .line 136
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    .line 140
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-void

    .line 136
    :array_0
    .array-data 4
        0x3f23d70a
        0x3f4ccccd
        0x3f800000
        0x3fa00000
        0x3fc80000
    .end array-data

    .line 140
    :array_1
    .array-data 4
        0x7f0e01ee
        0x7f0e01ef
        0x7f0e01f0
        0x7f0e01f1
        0x7f0e01f2
    .end array-data
.end method

.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/media/MediaPlayer;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/contacts/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;Landroid/media/AudioManager;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .param p2, "player"    # Landroid/media/MediaPlayer;
    .param p3, "voicemailUri"    # Landroid/net/Uri;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p5, "startPlayingImmediately"    # Z
    .param p6, "asyncTaskExecutor"    # Lcom/android/contacts/util/AsyncTaskExecutor;
    .param p7, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p8, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 165
    iput v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDurationValue:I

    .line 182
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mIsRotate:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z

    .line 185
    iput v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I

    .line 186
    iput v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mClipPosition:I

    .line 188
    iput v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I

    .line 189
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z

    .line 252
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 254
    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    .line 255
    iput-object p3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 256
    iput-boolean p5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    .line 257
    iput-object p6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 258
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    const/16 v1, 0x21

    invoke-direct {v0, p0, p4, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    .line 259
    iput-object p7, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 260
    iput-object p8, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    .line 261
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/media/MediaPlayer;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/contacts/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;Landroid/media/AudioManager;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .param p2, "view2"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .param p3, "player"    # Landroid/media/MediaPlayer;
    .param p4, "voicemailUri"    # Landroid/net/Uri;
    .param p5, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p6, "startPlayingImmediately"    # Z
    .param p7, "asyncTaskExecutor"    # Lcom/android/contacts/util/AsyncTaskExecutor;
    .param p8, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p9, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 165
    iput v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDurationValue:I

    .line 182
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mIsRotate:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z

    .line 185
    iput v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I

    .line 186
    iput v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mClipPosition:I

    .line 188
    iput v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I

    .line 189
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z

    .line 237
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 238
    iput-object p3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    .line 239
    iput-object p4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 240
    iput-boolean p6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    .line 241
    iput-object p7, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 242
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    const/16 v1, 0x21

    invoke-direct {v0, p0, p5, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    .line 243
    iput-object p8, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 244
    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 245
    iput-object p9, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return p1
.end method

.method static synthetic access$1600()[F
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    return-object v0
.end method

.method static synthetic access$1700()[I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;FI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->movePlayBack(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->makeRequestForContent()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/util/AsyncTaskExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->postSuccessfulPrepareActions()V

    return-void
.end method

.method private changeRate(FI)V
    .locals 1
    .param p1, "rate"    # F
    .param p2, "stringResourceId"    # I

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->setPlaySpeed(F)V

    .line 739
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDisplay(FI)V

    .line 740
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDisplay(FI)V

    .line 742
    :cond_0
    return-void
.end method

.method private checkThatWeHaveContent()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsFetchingContent()V

    .line 281
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 641
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "handleError  "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackError(Ljava/lang/Exception;)V

    .line 643
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackError(Ljava/lang/Exception;)V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 646
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 647
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "visualvoicemail=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method private makeRequestForContent()V
    .locals 4

    .prologue
    .line 312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 313
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    const-string v2, "mFetchResultHandler should be null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 314
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 315
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 316
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->getTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->sendFetchVoicemailRequest(Landroid/net/Uri;)V

    .line 320
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->sendFetchVoicemailRequest(Landroid/net/Uri;)V

    .line 322
    :cond_1
    return-void

    .line 313
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private movePlayBack(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 796
    iput-boolean v9, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z

    .line 797
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v4

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v4, v8, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 798
    .local v3, "startPosition":I
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 799
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v4, :cond_0

    .line 800
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 802
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 803
    .local v0, "millis":I
    div-int/lit16 v2, v0, 0x3e8

    .line 804
    .local v2, "seconds":I
    div-int/lit8 v1, v2, 0x3c

    .line 805
    .local v1, "minutes":I
    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v2, v4

    .line 806
    const/16 v4, 0x63

    if-le v1, v4, :cond_1

    .line 807
    const/16 v1, 0x63

    .line 810
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    .line 811
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v4, :cond_2

    .line 812
    iget-object v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    .line 814
    :cond_2
    return-void
.end method

.method private postSuccessfulPrepareActions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    .line 434
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setStartStopListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 439
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->createRateDecreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->createRateIncreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 443
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDurationValue:I

    .line 444
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 446
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    .line 448
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    .line 451
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setStartStopListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->createRateDecreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->createRateIncreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 458
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 460
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setCtrlListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setCtrlListener(Landroid/view/View$OnTouchListener;)V

    .line 469
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    if-eqz v0, :cond_2

    .line 470
    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mIsRotate:Z

    if-nez v0, :cond_3

    .line 471
    invoke-direct {p0, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    .line 481
    :cond_2
    :goto_0
    return-void

    .line 474
    :cond_3
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mClipPosition:I

    invoke-direct {p0, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    .line 475
    iput-boolean v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mIsRotate:Z

    .line 476
    iput v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mClipPosition:I

    goto :goto_0
.end method

.method private postSuccessfullyFetchedContent()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsBuffering()V

    .line 395
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsBuffering()V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 423
    return-void
.end method

.method private resetPrepareStartPlaying(I)V
    .locals 10
    .param p1, "clipPositionInMillis"    # I

    .prologue
    .line 582
    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "visualvoicemail=on"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 583
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 584
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 585
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 586
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 587
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 588
    const-string v5, "VoicemailPlaybackPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetPrepareStartPlaying clipPositionInMillis=  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v5, "VoicemailPlaybackPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetPrepareStartPlaying mDurationValue =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 591
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    .line 592
    .local v4, "startPosition":I
    iput v4, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I

    .line 593
    const-string v5, "VoicemailPlaybackPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetPrepareStartPlaying startPosition=  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-interface {v5, v4, v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 595
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 596
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 598
    sget-object v5, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    iget v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    aget v5, v5, v6

    sget-object v6, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    iget v7, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    aget v6, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V

    .line 600
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStarted()V

    .line 601
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_0

    .line 602
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 610
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v5, :cond_1

    .line 611
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-interface {v5, v4, v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 612
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v5}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStarted()V

    .line 616
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 617
    .local v1, "millis":I
    div-int/lit16 v3, v1, 0x3e8

    .line 618
    .local v3, "seconds":I
    div-int/lit8 v2, v3, 0x3c

    .line 619
    .local v2, "minutes":I
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v3, v5

    .line 620
    const/16 v5, 0x63

    if-le v2, v5, :cond_2

    .line 621
    const/16 v2, 0x63

    .line 624
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    .line 625
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v5, :cond_3

    .line 626
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    .line 634
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->startUpdating(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v1    # "millis":I
    .end local v2    # "minutes":I
    .end local v3    # "seconds":I
    .end local v4    # "startPosition":I
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private stopPlaybackAtPosition(II)V
    .locals 2
    .param p1, "clipPosition"    # I
    .param p2, "duration"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 657
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 658
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 669
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView2:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "visualvoicemail=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z

    .line 677
    return-void
.end method


# virtual methods
.method public createRateDecreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 549
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public createRateIncreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public getClipPosition()I
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v0

    .line 683
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 651
    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "handleCompletion "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    .line 653
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setVolumeControlStream(I)V

    .line 265
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->checkThatWeHaveContent()V

    .line 266
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 492
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 497
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 500
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() mPlayer.getCurrentPosition() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1062
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 484
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    :cond_0
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 3
    .param p1, "speed"    # F

    .prologue
    .line 723
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    .line 724
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 727
    .local v0, "reply":Landroid/os/Parcel;
    const/16 v2, 0x400

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 729
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 734
    return-void

    .line 731
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
