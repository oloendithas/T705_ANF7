.class public Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
.super Ljava/lang/Object;
.source "BargeInRecognizer.java"


# static fields
.field private static final LOAD_PATH:Ljava/lang/String; = "/system/voicebargeindata"

.field public static final STATE_READY:I = 0x0

.field public static final STATE_RUNNING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

.field private audio_thread:Ljava/lang/Thread;

.field private bargeInSoFilePath:Ljava/lang/String;

.field private chineseModelPath:Ljava/lang/String;

.field private englishModelPath:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field public intBargeInResult:I

.field public isEnableBargeIn:Z

.field public isEnableChineseBargeIn:Z

.field public isEnableJapaneseBargeIn:Z

.field public isEnableRussianBargeIn:Z

.field private japaneseModelPath:Ljava/lang/String;

.field private koreanModelPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

.field private mState:I

.field private russianModelPath:Ljava/lang/String;

.field private sVoiceLanguageFilePath:Ljava/lang/String;

.field public uselanguage:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 21
    iput-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 22
    iput-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 23
    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 25
    const-string v0, "BargeInRecognizer"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    .line 27
    iput-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    .line 28
    iput-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableJapaneseBargeIn:Z

    .line 29
    iput-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableRussianBargeIn:Z

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 34
    iput-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 36
    const-string v0, "/system/lib/libsasr-jni.so"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSoFilePath:Ljava/lang/String;

    .line 37
    const-string v0, "/system/voicebargeindata/sasr/eng/16k/param/models_hci_daco.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->englishModelPath:Ljava/lang/String;

    .line 38
    const-string v0, "/system/voicebargeindata/sasr/kor/16k/param/models_16k_KOR.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->koreanModelPath:Ljava/lang/String;

    .line 39
    const-string v0, "/system/voicebargeindata/sasr/chi/16k/param/models_16k_CHI.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->chineseModelPath:Ljava/lang/String;

    .line 40
    const-string v0, "/system/voicebargeindata/sasr/jap/16k/param/models_16k_JAPANESE_bi.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->japaneseModelPath:Ljava/lang/String;

    .line 41
    const-string v0, "/system/voicebargeindata/sasr/rus/16k/param/models_16k_RUSSIAN_bi.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->russianModelPath:Ljava/lang/String;

    .line 43
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "make new BargeInRecognizer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseChineseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->japaneseModelPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableJapaneseBargeIn:Z

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->russianModelPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableRussianBargeIn:Z

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->setLanguage()V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uselanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableChineseBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableJapaneseBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableJapaneseBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableRussianBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableRussianBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method private isUseModel()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 250
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSoFilePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "mFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->englishModelPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "eFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->koreanModelPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "kFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_24

    .line 256
    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find libsasr-jni.so"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_23
    return v3

    .line 259
    :cond_24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_32

    .line 261
    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find English model"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 264
    :cond_32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_40

    .line 266
    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find Korean model"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 271
    :cond_40
    const/4 v3, 0x1

    goto :goto_23
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 475
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v3, "mFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 477
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 479
    .local v0, "data":[B
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 483
    :try_start_e
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_26

    .line 484
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v5, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 485
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    .line 486
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 488
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_38

    move-object v4, v5

    .line 512
    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :goto_25
    return-object v6

    .line 491
    :catch_26
    move-exception v1

    .line 494
    .local v1, "e":Ljava/io/IOException;
    :goto_27
    if-eqz v4, :cond_2c

    .line 498
    :try_start_29
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_31

    .line 506
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .line 508
    goto :goto_25

    .line 500
    :catch_31
    move-exception v2

    .line 503
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2c

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_36
    move-object v6, v7

    .line 512
    goto :goto_25

    .line 491
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_38
    move-exception v1

    move-object v4, v5

    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_27
.end method


# virtual methods
.method public InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 66
    return-void
.end method

.method public SendHandlerMessage(I)V
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 81
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_29

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 85
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "commandType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 89
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2a

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 1500"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 100
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_29
    :goto_29
    return-void

    .line 96
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 700"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_29
.end method

.method public delayedStartBargeIn(I)V
    .registers 6
    .param p1, "commandType"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "delayedStartBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-enter p0

    .line 162
    :try_start_8
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_1d

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "BargeIn is running. So Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    .line 186
    :goto_1b
    monitor-exit p0

    .line 195
    return-void

    .line 169
    :cond_1d
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    const-string v2, "/system/voicebargeindata"

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_49

    .line 173
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    goto :goto_1b

    .line 186
    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_46

    throw v0

    .line 179
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "fail to running Bargein"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stop()V

    .line 181
    :cond_59
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "why running empty audio_thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_46

    goto :goto_1b
.end method

.method public getBargeInCmdLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    packed-switch v0, :pswitch_data_30

    .line 316
    const-string v0, "en-US"

    :goto_7
    return-object v0

    .line 292
    :pswitch_8
    const-string v0, "ko-KR"

    goto :goto_7

    .line 294
    :pswitch_b
    const-string v0, "en-US"

    goto :goto_7

    .line 296
    :pswitch_e
    const-string/jumbo v0, "zh-CN"

    goto :goto_7

    .line 298
    :pswitch_12
    const-string v0, "es-ES"

    goto :goto_7

    .line 300
    :pswitch_15
    const-string v0, "fr-FR"

    goto :goto_7

    .line 302
    :pswitch_18
    const-string v0, "de-DE"

    goto :goto_7

    .line 304
    :pswitch_1b
    const-string v0, "it-IT"

    goto :goto_7

    .line 306
    :pswitch_1e
    const-string v0, "ja-JP"

    goto :goto_7

    .line 308
    :pswitch_21
    const-string/jumbo v0, "ru-RU"

    goto :goto_7

    .line 310
    :pswitch_25
    const-string/jumbo v0, "pt-BR"

    goto :goto_7

    .line 312
    :pswitch_29
    const-string v0, "en-GB"

    goto :goto_7

    .line 314
    :pswitch_2c
    const-string/jumbo v0, "v-es-LA"

    goto :goto_7

    .line 290
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public getIntBargeInResult()I
    .registers 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_c

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    .line 469
    :goto_b
    return v0

    :cond_c
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    goto :goto_b
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    return v0
.end method

.method public isBargeInEnabled()Z
    .registers 3

    .prologue
    .line 517
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 520
    const/4 v1, 0x1

    .line 523
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isBargeInFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 528
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 531
    const/4 v1, 0x1

    .line 534
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isUseChineseModel()Z
    .registers 3

    .prologue
    .line 277
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->chineseModelPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "chFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 281
    const/4 v1, 0x0

    .line 285
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public setLanguage()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 321
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "stringCountry":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "sVoiceLanguage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stringLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stringCountry : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sVoiceLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v0, :cond_109

    .line 331
    const-string v3, "ko-KR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 333
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 459
    :cond_72
    :goto_72
    return-void

    .line 335
    :cond_73
    const-string v3, "en-US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 337
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_72

    .line 339
    :cond_7e
    const-string/jumbo v3, "zh-CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v3, :cond_8e

    .line 341
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_72

    .line 343
    :cond_8e
    const-string v3, "es-ES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 345
    iput v9, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_72

    .line 347
    :cond_99
    const-string/jumbo v3, "v-es-LA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 349
    const/16 v3, 0xb

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_72

    .line 351
    :cond_a7
    const-string v3, "fr-FR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 353
    iput v10, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_72

    .line 355
    :cond_b2
    const-string v3, "de-DE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 357
    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_72

    .line 359
    :cond_be
    const-string v3, "it-IT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 361
    const/4 v3, 0x6

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_72

    .line 363
    :cond_ca
    const-string v3, "ja-JP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_da

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableJapaneseBargeIn:Z

    if-eqz v3, :cond_da

    .line 365
    const/4 v3, 0x7

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_72

    .line 367
    :cond_da
    const-string/jumbo v3, "ru-RU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableRussianBargeIn:Z

    if-eqz v3, :cond_ec

    .line 369
    const/16 v3, 0x8

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_72

    .line 371
    :cond_ec
    const-string/jumbo v3, "pt-BR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 373
    const/16 v3, 0x9

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 375
    :cond_fb
    const-string v3, "en-GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 377
    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 383
    :cond_109
    if-eqz v2, :cond_72

    .line 385
    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 387
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 389
    :cond_11b
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_139

    .line 391
    const-string v3, "GB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_135

    .line 393
    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 397
    :cond_135
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 400
    :cond_139
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v3, :cond_159

    .line 402
    const-string v3, "CN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_155

    .line 404
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 408
    :cond_155
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 411
    :cond_159
    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_173

    .line 413
    const-string v3, "ES"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 415
    iput v9, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 419
    :cond_16d
    const/16 v3, 0xb

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 422
    :cond_173
    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 424
    iput v10, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 426
    :cond_183
    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_194

    .line 428
    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 430
    :cond_194
    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 432
    const/4 v3, 0x6

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 434
    :cond_1a5
    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableJapaneseBargeIn:Z

    if-eqz v3, :cond_1ba

    .line 436
    const/4 v3, 0x7

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 438
    :cond_1ba
    const-string/jumbo v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cd

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableRussianBargeIn:Z

    if-eqz v3, :cond_1cd

    .line 440
    const/16 v3, 0x8

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 442
    :cond_1cd
    const-string/jumbo v3, "pt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    .line 444
    const-string v3, "BR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e4

    .line 446
    const/16 v3, 0x9

    iput v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 450
    :cond_1e4
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72

    .line 455
    :cond_1e8
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_72
.end method

.method public startBargeIn(I)V
    .registers 5
    .param p1, "commandType"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 108
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_3f

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->setLanguage()V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3c

    .line 113
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->SendHandlerMessage(I)V

    .line 127
    :cond_3f
    return-void
.end method

.method public startBargeIn(II)V
    .registers 6
    .param p1, "commandType"    # I
    .param p2, "setLang"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startBargeIn Type2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLang : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 136
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_57

    .line 138
    iput p2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_54

    .line 142
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_54
    invoke-virtual {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->SendHandlerMessage(I)V

    .line 156
    :cond_57
    return-void
.end method

.method public stopBargeIn()V
    .registers 5

    .prologue
    .line 200
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopBargeIn"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-enter p0

    .line 203
    :try_start_9
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_5e

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_21

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v1, :cond_58

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v1, v1, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stop()V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_65

    if-eqz v1, :cond_68

    .line 222
    :try_start_37
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait for audio to stop: begin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_46} :catch_60
    .catchall {:try_start_37 .. :try_end_46} :catchall_65

    .line 235
    :goto_46
    :try_start_46
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait for audio to stop: end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "audio = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 243
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 245
    :cond_5e
    monitor-exit p0

    .line 246
    return-void

    .line 226
    :catch_60
    move-exception v0

    .line 228
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_46

    .line 245
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_65
    move-exception v1

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_46 .. :try_end_67} :catchall_65

    throw v1

    .line 233
    :cond_68
    :try_start_68
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "audio_thread was not working"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_65

    goto :goto_46
.end method
