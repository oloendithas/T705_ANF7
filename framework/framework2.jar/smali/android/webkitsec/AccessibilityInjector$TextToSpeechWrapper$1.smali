.class Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;


# direct methods
.method constructor <init>(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;)V
    .registers 2

    .prologue
    .line 805
    iput-object p1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 7
    .param p1, "status"    # I

    .prologue
    .line 810
    :try_start_0
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    # getter for: Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mTtsLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->access$600(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7b

    .line 811
    :try_start_7
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    # getter for: Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mShutdown:Z
    invoke-static {v1}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->access$700(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;)Z

    move-result v1

    if-nez v1, :cond_45

    if-nez p1, :cond_45

    .line 812
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 813
    # getter for: Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Initialized successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_3d
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    const/4 v3, 0x1

    # setter for: Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z
    invoke-static {v1, v3}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->access$902(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;Z)Z

    .line 824
    :goto_43
    monitor-exit v2

    .line 831
    :cond_44
    :goto_44
    return-void

    .line 818
    :cond_45
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 819
    # getter for: Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Failed to initialize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_71
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    const/4 v3, 0x0

    # setter for: Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z
    invoke-static {v1, v3}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->access$902(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;Z)Z

    goto :goto_43

    .line 824
    :catchall_78
    move-exception v1

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_7 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v1
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7b} :catch_7b

    .line 826
    :catch_7b
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 828
    # getter for: Landroid/webkitsec/AccessibilityInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception happened"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method
