.class public final Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;
.super Ljava/lang/Thread;
.source "AudioAndHapticVibratorFeedback.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/common/InputManager;)V
    .locals 1
    .param p1, "mInputManager"    # Lcom/diotek/ime/framework/common/InputManager;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 17
    iput-object p1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 19
    const-string v0, "AudioAndHapticVibratorFeedback"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized playSoundEffect(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$2;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playSoundEffect(IZ)V
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "up"    # Z

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playVibrateEffect(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$3;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playVibrateEffect(IZ)V
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "up"    # Z

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestStop()V
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$1;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$1;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 27
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "AudioAndHapticVibratorFeedback"

    const-string v2, "mAudioAndHapticVibratorFeedback occur Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
