.class public Lcom/google/android/voiceime/VoiceRecognitionTrigger;
.super Ljava/lang/Object;
.source "VoiceRecognitionTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;
    }
.end annotation


# instance fields
.field private mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTrigger:Lcom/google/android/voiceime/Trigger;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 44
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    .line 45
    return-void
.end method

.method private getImeTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/google/android/voiceime/ImeTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/ImeTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    return-object v0
.end method

.method private getIntentTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/google/android/voiceime/IntentApiTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/IntentApiTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    return-object v0
.end method

.method private getTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/google/android/voiceime/ImeTrigger;->init()V

    .line 49
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/google/android/voiceime/ImeTrigger;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getImeTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 123
    :try_start_0
    iget-object v4, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 126
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 127
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 127
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 128
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private resetTrigger()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    .line 117
    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    .line 118
    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    .line 119
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/google/android/voiceime/ImeTrigger;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartInputView()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0}, Lcom/google/android/voiceime/Trigger;->onStartInputView()V

    .line 107
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0}, Lcom/google/android/voiceime/Trigger;->closing()V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->resetTrigger()V

    .line 112
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    .line 113
    return-void
.end method

.method public register(Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;

    .prologue
    .line 142
    new-instance v1, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;-><init>(Lcom/google/android/voiceime/VoiceRecognitionTrigger;Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V

    iput-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method public startVoiceRecognition()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/Trigger;->startVoiceRecognition(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    :cond_0
    return-void
.end method
