.class Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/AccessibilityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextToSpeechWrapper"
.end annotation


# static fields
.field private static final WRAP_TAG:Ljava/lang/String;


# instance fields
.field private final mErrorListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private volatile mReady:Z

.field private volatile mShutdown:Z

.field private final mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private final mTtsLock:Ljava/lang/Object;

.field private final mTtsParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 693
    const-class v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTtsLock:Ljava/lang/Object;

    .line 805
    new-instance v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;-><init>(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 834
    new-instance v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$2;

    invoke-direct {v0, p0}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$2;-><init>(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mErrorListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 714
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 715
    sget-object v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Initializing text-to-speech on thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 721
    .local v6, "pkgName":Ljava/lang/String;
    iput-boolean v4, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    .line 722
    iput-boolean v4, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mShutdown:Z

    .line 724
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTtsParams:Ljava/util/HashMap;

    .line 725
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTtsParams:Ljava/util/HashMap;

    const-string/jumbo v1, "utteranceId"

    sget-object v2, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".**webview**"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 729
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mErrorListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 730
    return-void
.end method

.method static synthetic access$600(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    .prologue
    .line 692
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTtsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    .prologue
    .line 692
    iget-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mShutdown:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 692
    sget-object v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 692
    iput-boolean p1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    return p1
.end method


# virtual methods
.method public isSpeaking()Z
    .registers 3
    .annotation runtime Landroid/webkitsec/JavascriptInterface;
    .end annotation

    .prologue
    .line 736
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTtsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    :try_start_3
    iget-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    if-nez v0, :cond_a

    .line 738
    const/4 v0, 0x0

    monitor-exit v1

    .line 741
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    monitor-exit v1

    goto :goto_9

    .line 742
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected shutdown()V
    .registers 6

    .prologue
    .line 788
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTtsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 789
    :try_start_3
    iget-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    if-nez v0, :cond_3c

    .line 790
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 791
    sget-object v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Called shutdown before initialize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mShutdown:Z

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    .line 801
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 802
    monitor-exit v1

    .line 803
    return-void

    .line 794
    :cond_3c
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 795
    sget-object v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Shutting down text-to-speech from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 802
    :catchall_7e
    move-exception v0

    monitor-exit v1
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_7e

    throw v0
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation runtime Landroid/webkitsec/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 749
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTtsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 750
    :try_start_3
    iget-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    if-nez v0, :cond_32

    .line 751
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 752
    sget-object v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Attempted to speak before TTS init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_2f
    const/4 v0, -0x1

    monitor-exit v1

    .line 761
    :goto_31
    return v0

    .line 756
    :cond_32
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 757
    sget-object v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Speak called from JS binder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_5a
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v0

    monitor-exit v1

    goto :goto_31

    .line 762
    :catchall_62
    move-exception v0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public stop()I
    .registers 5
    .annotation runtime Landroid/webkitsec/JavascriptInterface;
    .end annotation

    .prologue
    .line 769
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTtsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 770
    :try_start_3
    iget-boolean v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    if-nez v0, :cond_32

    .line 771
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 772
    sget-object v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Attempted to stop before initialize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_2f
    const/4 v0, -0x1

    monitor-exit v1

    .line 781
    :goto_31
    return v0

    .line 776
    :cond_32
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 777
    sget-object v0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Stop called from JS binder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_5a
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result v0

    monitor-exit v1

    goto :goto_31

    .line 782
    :catchall_62
    move-exception v0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v0
.end method
