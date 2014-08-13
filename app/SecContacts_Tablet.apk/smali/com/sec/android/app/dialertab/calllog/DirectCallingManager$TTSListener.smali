.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TTSListener"
.end annotation


# instance fields
.field mLocale:Ljava/util/Locale;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x1

    .line 883
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onInit...TTS : "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-nez v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->IsTTSInitiated:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2602(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)Z

    .line 910
    :goto_0
    return-void

    .line 900
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit...TTS - locale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLanguageAvailable() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 909
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->IsTTSInitiated:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2602(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)Z

    goto :goto_0

    .line 906
    :cond_2
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onInit...TTS - set Locale.US , maybe not configured"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_1
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 912
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onUtteranceCompleted...TTS : "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2702(Z)Z

    .line 918
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
