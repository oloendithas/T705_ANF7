.class Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;
.super Ljava/lang/Object;
.source "AudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_BLOCK_SIZE:I = 0xa0

.field public static final cmdAlarm:I = 0x3

.field public static final cmdCall:I = 0x2

.field public static final cmdCamera:I = 0x7

.field public static final cmdCancel:I = 0x9

.field public static final cmdGallery:I = 0x8

.field public static final cmdMusic:I = 0x4

.field public static final cmdRadio:I = 0x5

.field public static final cmdVideo:I = 0x6

.field public static final cmdVoiceTalk_all:I = 0x0

.field public static final cmdVoiceTalk_schedule:I = 0x1

.field public static final cmdYesNo:I = 0xa


# instance fields
.field private AUDIO_RECORD_FOR_BARGE_IN:I

.field private AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

.field public BargeinAct:[S

.field public TAG:Ljava/lang/String;

.field public THscore:D

.field private aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

.field private aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

.field private acousticModelPathname:Ljava/lang/String;

.field public block_size:I

.field public buf:[B

.field public cmResult:[F

.field public consoleInitReturn:J

.field public consoleResult:Ljava/lang/String;

.field private defaultSensoryModelPath:Ljava/lang/String;

.field public defaultloadNameList:Ljava/lang/String;

.field public done:Z

.field public f:Ljava/io/File;

.field public handler:Landroid/os/Handler;

.field public isEnableSamsungOOVResult:Z

.field public isMakePCM:Z

.field public isSASRInitProblem:Z

.field public isSensoryBargeInEnable:Z

.field public isSensoryCameraBargeIn:Z

.field public isSensoryResult:Z

.field public loadNameList:Ljava/lang/String;

.field public loadPath:Ljava/lang/String;

.field public mCommandType:I

.field public mEmbeddedEngineLanguage:I

.field public mFileOutputStream:Ljava/io/FileOutputStream;

.field public mLanguage:I

.field private m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

.field public modelPath:Ljava/lang/String;

.field private final newVersionSensoryBargeInSoFilePath:Ljava/lang/String;

.field public numRecogResult:I

.field public q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation
.end field

.field private readNshorts:I

.field public rec:Landroid/media/AudioRecord;

.field public resultSASRInit:I

.field public resultSASRLoadModel:I

.field private searchGrammarPathname:Ljava/lang/String;

.field public sensoryCMscore:F

.field public sensoryChineseCaptureCMTH:F

.field public sensoryChineseStopCMTH:F

.field public sensoryJapaneseShootCMTH:F

.field public sensoryKoreanShootCMTH:F

.field public sensoryResultValue:[F

.field public sensoryUKEnglishStopCMTH:F

.field public sensoryUSEnglishSnoozeCMTH:F

.field public sensoryUSEnglishStopCMTH:F

.field public speech:[S

.field public strResult:[Ljava/lang/String;

.field private totalReadCount:I

.field public utfResult:[Ljava/lang/String;

.field public wordListPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;II)V
    .registers 12
    .param p1, "listener"    # Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "command"    # I
    .param p4, "language"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x43c80000

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 26
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 27
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 28
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 29
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 30
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    .line 33
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    .line 35
    new-array v0, v4, [F

    aput v6, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    .line 38
    new-array v0, v4, [S

    const/4 v1, -0x1

    aput-short v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    .line 39
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->numRecogResult:I

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    .line 41
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    .line 43
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    .line 44
    const-string v0, "AudioTask"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    .line 47
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    .line 48
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 49
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    .line 51
    const-string/jumbo v0, "nameList_voicetalk_all.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "nameList_voicetalk_all.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultloadNameList:Ljava/lang/String;

    .line 53
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    .line 55
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    .line 69
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 70
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    .line 72
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    .line 73
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    .line 75
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 77
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    .line 78
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 80
    const-wide/high16 v0, -0x4008000000000000L

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    .line 82
    const-string v0, "/system/voicebargeindata/sensory"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultSensoryModelPath:Ljava/lang/String;

    .line 83
    const-string v0, "/system/voicebargeindata/sensory/ko_kr/samsung_bargein_am_ko_kr_call_v2.raw"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 84
    const-string v0, "/system/voicebargeindata/sensory/ko_kr/samsung_bargein_grammar_ko_kr_call_v2.raw"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 86
    const-string v0, "/system/lib/libSensoryBargeInEngine.so"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->newVersionSensoryBargeInSoFilePath:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    .line 89
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    .line 90
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 94
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 96
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanShootCMTH:F

    .line 97
    const v0, 0x44bb8000

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseCaptureCMTH:F

    .line 98
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryJapaneseShootCMTH:F

    .line 99
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishStopCMTH:F

    .line 100
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    .line 101
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUKEnglishStopCMTH:F

    .line 102
    const/high16 v0, 0x43020000

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseStopCMTH:F

    .line 104
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    .line 105
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    .line 106
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 846
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    .line 109
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v2, 0xa0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;II)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    return-object v0
.end method

.method private getAudioRecord(I)Landroid/media/AudioRecord;
    .registers 11
    .param p1, "source"    # I

    .prologue
    const/4 v8, 0x0

    .line 1408
    const/4 v7, 0x0

    .line 1409
    .local v7, "retAudioRecord":Landroid/media/AudioRecord;
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "getAudioRecord modified by jy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :try_start_9
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x2000

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_16} :catch_a9
    .catchall {:try_start_9 .. :try_end_16} :catchall_118

    .line 1415
    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .local v0, "retAudioRecord":Landroid/media/AudioRecord;
    :try_start_16
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_42

    .line 1417
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=false, got !initialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    if-eqz v0, :cond_40

    .line 1419
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_40
    move-object v1, v8

    .line 1444
    :goto_41
    return-object v1

    .line 1423
    :cond_42
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got AudioRecord using source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", also "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_89} :catch_11d
    .catchall {:try_start_16 .. :try_end_89} :catchall_11b

    .line 1443
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1444
    goto :goto_41

    .line 1426
    .end local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    :catch_a9
    move-exception v6

    move-object v0, v7

    .line 1428
    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :goto_ab
    :try_start_ab
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=false, IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got IllegalArgumentException using source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", also "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    if-eqz v0, :cond_115

    .line 1433
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_115
    .catchall {:try_start_ab .. :try_end_115} :catchall_11b

    :cond_115
    move-object v1, v8

    .line 1435
    goto/16 :goto_41

    .line 1438
    .end local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    :catchall_118
    move-exception v1

    move-object v0, v7

    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    :goto_11a
    throw v1

    :catchall_11b
    move-exception v1

    goto :goto_11a

    .line 1426
    :catch_11d
    move-exception v6

    goto :goto_ab
.end method

.method public static twoBytesToShort(BB)S
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .prologue
    .line 843
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public SendHandlerMessage([Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 862
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 863
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 864
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "recognition_result"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 865
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 866
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 867
    return-void
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public getSensoryBargeInAct(ILjava/lang/String;)I
    .registers 9
    .param p1, "domain"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v0, 0x1

    .line 1060
    packed-switch p1, :pswitch_data_390

    .line 1403
    :cond_8
    const/4 v0, -0x1

    :cond_9
    :goto_9
    return v0

    .line 1062
    :pswitch_a
    const-string/jumbo v1, "stop"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_9

    .line 1068
    :pswitch_14
    const-string/jumbo v2, "next"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1072
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1074
    goto :goto_9

    .line 1078
    :pswitch_28
    const-string v2, "answer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1082
    const-string/jumbo v0, "reject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1084
    goto :goto_9

    .line 1088
    :pswitch_3b
    const-string/jumbo v2, "stop"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1092
    const-string/jumbo v0, "snooze"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1094
    goto :goto_9

    .line 1098
    :pswitch_4f
    const-string/jumbo v5, "next"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1102
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    move v0, v1

    .line 1104
    goto :goto_9

    .line 1106
    :cond_63
    const-string/jumbo v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v2

    .line 1108
    goto :goto_9

    .line 1110
    :cond_6e
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1112
    const/4 v0, 0x4

    goto :goto_9

    .line 1114
    :cond_79
    const-string/jumbo v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    move v0, v3

    .line 1116
    goto :goto_9

    .line 1118
    :cond_84
    const-string/jumbo v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    move v0, v3

    .line 1120
    goto/16 :goto_9

    .line 1122
    :cond_90
    const-string/jumbo v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    move v0, v3

    .line 1124
    goto/16 :goto_9

    .line 1126
    :cond_9c
    const-string/jumbo v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    move v0, v4

    .line 1128
    goto/16 :goto_9

    .line 1130
    :cond_a8
    const-string/jumbo v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v4

    .line 1132
    goto/16 :goto_9

    .line 1134
    :cond_b4
    const-string/jumbo v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 1136
    goto/16 :goto_9

    .line 1140
    :pswitch_c0
    const-string/jumbo v5, "next"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1144
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    move v0, v1

    .line 1146
    goto/16 :goto_9

    .line 1148
    :cond_d5
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    move v0, v2

    .line 1150
    goto/16 :goto_9

    .line 1152
    :cond_e1
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1154
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 1156
    :cond_ed
    const-string/jumbo v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    move v0, v3

    .line 1158
    goto/16 :goto_9

    .line 1160
    :cond_f9
    const-string/jumbo v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    move v0, v3

    .line 1162
    goto/16 :goto_9

    .line 1164
    :cond_105
    const-string/jumbo v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_111

    move v0, v3

    .line 1166
    goto/16 :goto_9

    .line 1168
    :cond_111
    const-string/jumbo v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11d

    move v0, v4

    .line 1170
    goto/16 :goto_9

    .line 1172
    :cond_11d
    const-string/jumbo v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_129

    move v0, v4

    .line 1174
    goto/16 :goto_9

    .line 1176
    :cond_129
    const-string/jumbo v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 1178
    goto/16 :goto_9

    .line 1182
    :pswitch_135
    const-string/jumbo v5, "next"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1186
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14a

    move v0, v1

    .line 1188
    goto/16 :goto_9

    .line 1190
    :cond_14a
    const-string/jumbo v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_156

    move v0, v2

    .line 1192
    goto/16 :goto_9

    .line 1194
    :cond_156
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1196
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 1198
    :cond_162
    const-string/jumbo v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16e

    move v0, v3

    .line 1200
    goto/16 :goto_9

    .line 1202
    :cond_16e
    const-string/jumbo v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17a

    move v0, v3

    .line 1204
    goto/16 :goto_9

    .line 1206
    :cond_17a
    const-string/jumbo v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_186

    move v0, v3

    .line 1208
    goto/16 :goto_9

    .line 1210
    :cond_186
    const-string/jumbo v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_192

    move v0, v4

    .line 1212
    goto/16 :goto_9

    .line 1214
    :cond_192
    const-string/jumbo v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19e

    move v0, v4

    .line 1216
    goto/16 :goto_9

    .line 1218
    :cond_19e
    const-string/jumbo v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 1220
    goto/16 :goto_9

    .line 1224
    :pswitch_1aa
    const-string/jumbo v5, "smile"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1228
    const-string v0, "cheese"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1be

    move v0, v1

    .line 1230
    goto/16 :goto_9

    .line 1232
    :cond_1be
    const-string v0, "capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    move v0, v2

    .line 1234
    goto/16 :goto_9

    .line 1236
    :cond_1c9
    const-string/jumbo v0, "shoot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 1238
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 1240
    :cond_1d5
    const-string/jumbo v0, "record video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    move v0, v3

    .line 1242
    goto/16 :goto_9

    .line 1244
    :cond_1e1
    const-string/jumbo v0, "record_video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    move v0, v3

    .line 1246
    goto/16 :goto_9

    .line 1248
    :cond_1ed
    const-string/jumbo v0, "recordvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    move v0, v3

    .line 1250
    goto/16 :goto_9

    .line 1252
    :cond_1f9
    const-string v0, "auto settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_204

    move v0, v4

    .line 1254
    goto/16 :goto_9

    .line 1256
    :cond_204
    const-string v0, "auto_settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20f

    move v0, v4

    .line 1258
    goto/16 :goto_9

    .line 1260
    :cond_20f
    const-string v0, "autosettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21a

    move v0, v4

    .line 1262
    goto/16 :goto_9

    .line 1264
    :cond_21a
    const-string v0, "beauty face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_225

    .line 1266
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 1268
    :cond_225
    const-string v0, "beauty_face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_230

    .line 1270
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 1272
    :cond_230
    const-string v0, "beautyface"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23b

    .line 1274
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 1276
    :cond_23b
    const-string/jumbo v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_248

    .line 1278
    const/16 v0, 0x8

    goto/16 :goto_9

    .line 1280
    :cond_248
    const-string/jumbo v0, "zoom in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 1282
    const/16 v0, 0x9

    goto/16 :goto_9

    .line 1284
    :cond_255
    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_262

    .line 1286
    const/16 v0, 0x9

    goto/16 :goto_9

    .line 1288
    :cond_262
    const-string/jumbo v0, "zoomin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26f

    .line 1290
    const/16 v0, 0x9

    goto/16 :goto_9

    .line 1292
    :cond_26f
    const-string/jumbo v0, "zoom out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27c

    .line 1294
    const/16 v0, 0xa

    goto/16 :goto_9

    .line 1296
    :cond_27c
    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 1298
    const/16 v0, 0xa

    goto/16 :goto_9

    .line 1300
    :cond_289
    const-string/jumbo v0, "zoomout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_296

    .line 1302
    const/16 v0, 0xa

    goto/16 :goto_9

    .line 1304
    :cond_296
    const-string v0, "flash on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a2

    .line 1306
    const/16 v0, 0xb

    goto/16 :goto_9

    .line 1308
    :cond_2a2
    const-string v0, "flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    .line 1310
    const/16 v0, 0xb

    goto/16 :goto_9

    .line 1312
    :cond_2ae
    const-string v0, "flashon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ba

    .line 1314
    const/16 v0, 0xb

    goto/16 :goto_9

    .line 1316
    :cond_2ba
    const-string v0, "flash off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 1318
    const/16 v0, 0xc

    goto/16 :goto_9

    .line 1320
    :cond_2c6
    const-string v0, "flash_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d2

    .line 1322
    const/16 v0, 0xc

    goto/16 :goto_9

    .line 1324
    :cond_2d2
    const-string v0, "flashoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2de

    .line 1326
    const/16 v0, 0xc

    goto/16 :goto_9

    .line 1328
    :cond_2de
    const-string/jumbo v0, "upload pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2eb

    .line 1330
    const/16 v0, 0xd

    goto/16 :goto_9

    .line 1332
    :cond_2eb
    const-string/jumbo v0, "upload_pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f8

    .line 1334
    const/16 v0, 0xd

    goto/16 :goto_9

    .line 1336
    :cond_2f8
    const-string/jumbo v0, "uploadpics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_305

    .line 1338
    const/16 v0, 0xd

    goto/16 :goto_9

    .line 1340
    :cond_305
    const-string v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1342
    const/16 v0, 0xe

    goto/16 :goto_9

    .line 1346
    :pswitch_311
    const-string v5, "buddy photo share"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1350
    const-string v5, "buddy_photo_share"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1354
    const-string v5, "buddyphotoshare"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1358
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_335

    move v0, v1

    .line 1360
    goto/16 :goto_9

    .line 1362
    :cond_335
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_341

    move v0, v2

    .line 1364
    goto/16 :goto_9

    .line 1366
    :cond_341
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34d

    .line 1368
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 1370
    :cond_34d
    const-string/jumbo v0, "slideshow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_359

    move v0, v3

    .line 1372
    goto/16 :goto_9

    .line 1374
    :cond_359
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_365

    move v0, v4

    .line 1376
    goto/16 :goto_9

    .line 1378
    :cond_365
    const-string v0, "camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1380
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 1384
    :pswitch_370
    const-string v1, "cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_9

    .line 1390
    :pswitch_37a
    const-string/jumbo v2, "yes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1394
    const-string/jumbo v0, "no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1396
    goto/16 :goto_9

    .line 1060
    nop

    :pswitch_data_390
    .packed-switch 0x0
        :pswitch_a
        :pswitch_14
        :pswitch_28
        :pswitch_3b
        :pswitch_4f
        :pswitch_c0
        :pswitch_135
        :pswitch_1aa
        :pswitch_311
        :pswitch_370
        :pswitch_37a
    .end packed-switch
.end method

.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;II)V
    .registers 13
    .param p2, "block_size"    # I
    .param p3, "listener"    # Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "command"    # I
    .param p6, "Language"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;I",
            "Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p1, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<[S>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Language : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-boolean v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 118
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 119
    iput p2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 120
    iput p5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 123
    invoke-virtual {p0, p6, p5}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setSensoryFilePath(II)V

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSensoryBargeInEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableSamsungOOVResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_a6

    .line 130
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_a6

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_a6
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v1, :cond_cd

    .line 153
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_cd
    iput-object p3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 165
    iput-object p4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    .line 166
    iput p6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setEmbeddedEngineLanguage()V

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v2, -0x1

    aput-short v2, v1, v5

    .line 172
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 174
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    if-eqz v1, :cond_f7

    .line 176
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log"

    const-string/jumbo v3, "testPCM.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    .line 179
    :try_start_ed
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_f7
    .catch Ljava/io/FileNotFoundException; {:try_start_ed .. :try_end_f7} :catch_275

    .line 187
    :cond_f7
    :goto_f7
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v1, :cond_27b

    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v1, :cond_27b

    .line 189
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 190
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->getInstance()Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 202
    :goto_10b
    const/16 v1, 0xa0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    .line 203
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    .line 206
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v1, :cond_2e9

    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v1, :cond_2e9

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_138

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SetSRLanguage(I)I

    .line 215
    :cond_138
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setFilePath(I)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_16b

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    .line 223
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    if-nez v1, :cond_16b

    .line 225
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 228
    :cond_16b
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Model result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    packed-switch v1, :pswitch_data_44e

    .line 266
    :goto_18a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2dc

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wordlist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_1c5
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_1fd

    .line 280
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_1f7

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRInit(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    .line 286
    :cond_1f7
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    if-nez v1, :cond_1fd

    .line 288
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 291
    :cond_1fd
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Wordlist result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_224

    .line 295
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_224

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 400
    :cond_224
    :goto_224
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultSASRLoadModel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultSASRInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSASRInitProblem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 181
    :catch_275
    move-exception v0

    .line 183
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f7

    .line 192
    .end local v0    # "e1":Ljava/io/FileNotFoundException;
    :cond_27b
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_287

    .line 194
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    goto/16 :goto_10b

    .line 198
    :cond_287
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->getInstance()Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    goto/16 :goto_10b

    .line 232
    :pswitch_28f
    const-string/jumbo v1, "nameList_voicetalk_all.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 235
    :pswitch_296
    const-string/jumbo v1, "nameList_voicetalk_schedule.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 238
    :pswitch_29d
    const-string/jumbo v1, "nameList_call.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 241
    :pswitch_2a4
    const-string/jumbo v1, "nameList_alarm.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 244
    :pswitch_2ab
    const-string/jumbo v1, "nameList_music.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 247
    :pswitch_2b2
    const-string/jumbo v1, "nameList_radio.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 250
    :pswitch_2b9
    const-string/jumbo v1, "nameList_video.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 253
    :pswitch_2c0
    const-string/jumbo v1, "nameList_camera.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 256
    :pswitch_2c7
    const-string/jumbo v1, "nameList_gallery.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 259
    :pswitch_2ce
    const-string/jumbo v1, "nameList_cancel.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 262
    :pswitch_2d5
    const-string/jumbo v1, "nameList_yesno.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_18a

    .line 272
    :cond_2dc
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Wordlist is not exist. So set default wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultloadNameList:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1c5

    .line 301
    :cond_2e9
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_2fb

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    goto/16 :goto_224

    .line 307
    :cond_2fb
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_306

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SetSRLanguage(I)I

    .line 312
    :cond_306
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setFilePath(I)V

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_339

    .line 318
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    .line 320
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    if-nez v1, :cond_339

    .line 322
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 325
    :cond_339
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Model result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    packed-switch v1, :pswitch_data_468

    .line 363
    :goto_358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_441

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wordlist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_393
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_3cb

    .line 377
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_3c5

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRInit(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    .line 383
    :cond_3c5
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    if-nez v1, :cond_3cb

    .line 385
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 388
    :cond_3cb
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Wordlist result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_224

    .line 392
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_224

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    goto/16 :goto_224

    .line 329
    :pswitch_3f4
    const-string/jumbo v1, "nameList_voicetalk_all.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 332
    :pswitch_3fb
    const-string/jumbo v1, "nameList_voicetalk_schedule.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 335
    :pswitch_402
    const-string/jumbo v1, "nameList_call.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 338
    :pswitch_409
    const-string/jumbo v1, "nameList_alarm.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 341
    :pswitch_410
    const-string/jumbo v1, "nameList_music.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 344
    :pswitch_417
    const-string/jumbo v1, "nameList_radio.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 347
    :pswitch_41e
    const-string/jumbo v1, "nameList_video.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 350
    :pswitch_425
    const-string/jumbo v1, "nameList_camera.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 353
    :pswitch_42c
    const-string/jumbo v1, "nameList_gallery.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 356
    :pswitch_433
    const-string/jumbo v1, "nameList_cancel.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 359
    :pswitch_43a
    const-string/jumbo v1, "nameList_yesno.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_358

    .line 369
    :cond_441
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Wordlist is not exist. So set default wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultloadNameList:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_393

    .line 230
    :pswitch_data_44e
    .packed-switch 0x0
        :pswitch_28f
        :pswitch_296
        :pswitch_29d
        :pswitch_2a4
        :pswitch_2ab
        :pswitch_2b2
        :pswitch_2b9
        :pswitch_2c0
        :pswitch_2c7
        :pswitch_2ce
        :pswitch_2d5
    .end packed-switch

    .line 327
    :pswitch_data_468
    .packed-switch 0x0
        :pswitch_3f4
        :pswitch_3fb
        :pswitch_402
        :pswitch_409
        :pswitch_410
        :pswitch_417
        :pswitch_41e
        :pswitch_425
        :pswitch_42c
        :pswitch_433
        :pswitch_43a
    .end packed-switch
.end method

.method public isBargeInFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 1050
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1052
    const/4 v1, 0x1

    .line 1055
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method readByteBlock()I
    .registers 13

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-eqz v0, :cond_11

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : isSASRInitProblem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 520
    const/4 v0, -0x1

    .line 839
    :goto_10
    return v0

    .line 523
    :cond_11
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_22

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 527
    const/4 v0, -0x1

    goto :goto_10

    .line 530
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-nez v0, :cond_38

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 535
    :cond_38
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_49

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 539
    const/4 v0, -0x1

    goto :goto_10

    .line 542
    :cond_49
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    const/16 v1, 0x140

    if-ge v0, v1, :cond_81

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecord Read problem : nshorts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_81
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_bc

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nshorts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_bc
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 554
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c3
    const/16 v0, 0x140

    if-ge v10, v0, :cond_de

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    div-int/lit8 v1, v10, 0x2

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    aget-byte v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    add-int/lit8 v4, v10, 0x1

    aget-byte v3, v3, v4

    invoke-static {v2, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->twoBytesToShort(BB)S

    move-result v2

    aput-short v2, v0, v1

    .line 554
    add-int/lit8 v10, v10, 0x2

    goto :goto_c3

    .line 559
    :cond_de
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_f0

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 563
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 566
    :cond_f0
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    if-lez v0, :cond_5a8

    .line 568
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    if-eqz v0, :cond_ff

    .line 571
    :try_start_f8
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_ff} :catch_111

    .line 578
    :cond_ff
    :goto_ff
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_116

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 582
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 572
    :catch_111
    move-exception v9

    .line 574
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ff

    .line 585
    .end local v9    # "e":Ljava/io/IOException;
    :cond_116
    const/4 v11, 0x0

    .line 587
    .local v11, "result":I
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_186

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_186

    .line 589
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_131

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 593
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 596
    :cond_131
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v0, :cond_14d

    .line 598
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_14d

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    .line 604
    :cond_14d
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_15f

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 608
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 611
    :cond_15f
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_171

    .line 613
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_171

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->RECThread([S)I

    move-result v11

    .line 659
    :cond_171
    :goto_171
    const/4 v0, -0x2

    if-ne v11, v0, :cond_20d

    .line 661
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_1f8

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 665
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 619
    :cond_186
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v0, :cond_1d2

    .line 621
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_19c

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section7"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 625
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 628
    :cond_19c
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v0, :cond_171

    .line 630
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1b9

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    goto :goto_171

    .line 634
    :cond_1b9
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_171

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    goto :goto_171

    .line 642
    :cond_1d2
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_1e4

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section8"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 646
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 649
    :cond_1e4
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_171

    .line 651
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_171

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->RECThread([S)I

    move-result v11

    goto/16 :goto_171

    .line 668
    :cond_1f8
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_20d

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Barge-in : Too long input so Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->ResetFx()I

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 676
    :cond_20d
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_21f

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section10"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 680
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 683
    :cond_21f
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    if-eqz v0, :cond_2d1

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getSensoryBargeInAct(ILjava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consoleResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensoryCMscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_2ea

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2ea

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    if-nez v0, :cond_2ea

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanShootCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2ea

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_2ce
    :goto_2ce
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    .line 737
    :cond_2d1
    const/4 v0, 0x2

    if-ne v11, v0, :cond_5a4

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_57b

    .line 741
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_3e4

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section11"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 745
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 699
    :cond_2ea
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_30b

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_30b

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30b

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseCaptureCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30b

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Chinese capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ce

    .line 703
    :cond_30b
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_32c

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32c

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_32c

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryJapaneseShootCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32c

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Japanese shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ce

    .line 707
    :cond_32c
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_34e

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34e

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34e

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_34e

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ce

    .line 711
    :cond_34e
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_371

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_371

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_371

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_371

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English snooze score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ce

    .line 715
    :cond_371
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_395

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_395

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_395

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUKEnglishStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_395

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "UK English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ce

    .line 719
    :cond_395
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b8

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b8

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b8

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3b8

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Chinese stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ce

    .line 725
    :cond_3b8
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 727
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_2ce

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_2ce

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set isSensoryResult = true. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ce

    .line 748
    :cond_3e4
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->ResetFx()I

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sasr/input.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    iget-object v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->numRecogResult:I

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 755
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    if-eqz v0, :cond_429

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_445

    .line 757
    :cond_429
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 761
    :cond_445
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4de

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4de

    .line 767
    const-wide v0, -0x4003333333333333L

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    .line 778
    :goto_4b2
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_4ed

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section12"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 784
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 769
    :cond_4de
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4e8

    .line 771
    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    goto :goto_4b2

    .line 775
    :cond_4e8
    const-wide/high16 v0, -0x4008000000000000L

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    goto :goto_4b2

    .line 787
    :cond_4ed
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_52f

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_52f

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    if-eqz v0, :cond_52f

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "isSensoryCameraBargeIn is true and isSensoryResult is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmbeddedEngine Recognizer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_51d
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_576

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section13"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 817
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 792
    :cond_52f
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_551

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_551

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "isSensoryCameraBargeIn is true and keyword is not detected by sensory and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TH-Reject"

    aput-object v2, v0, v1

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_51d

    .line 802
    :cond_551
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_563

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_51d

    .line 808
    :cond_563
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TH-Reject"

    aput-object v2, v0, v1

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_51d

    .line 820
    :cond_576
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 824
    :cond_57b
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_5a4

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_5a4

    .line 826
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    if-eqz v0, :cond_5a4

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set isSensoryResult = false. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .end local v11    # "result":I
    :cond_5a4
    :goto_5a4
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    goto/16 :goto_10

    .line 836
    :cond_5a8
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readNshorts is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " So do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a4
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_b0

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call rec.startRecording start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call startRecording end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_20
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-nez v1, :cond_2b

    .line 462
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readByteBlock()I

    .line 464
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v1, :cond_aa

    .line 480
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stopBargeInAudioRecord()V

    .line 482
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_62

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "SASRClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_5b

    .line 487
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRClose()I

    move-result v0

    .line 488
    .local v0, "SASRCloseReturn":I
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SASRCloseReturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v0    # "SASRCloseReturn":I
    :cond_5b
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "SASRClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_62
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v1, :cond_85

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7d

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    .line 500
    :cond_7d
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_85
    iput-object v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 504
    iput-object v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 505
    iput-object v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "aMMUIRecognizer = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "aSensoryBargeInEngine = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "m_listener = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 469
    :cond_aa
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    if-gtz v1, :cond_20

    goto/16 :goto_2b

    .line 477
    :cond_b0
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Bargein fail to start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b
.end method

.method public setBlockSize(I)V
    .registers 2
    .param p1, "block_size"    # I

    .prologue
    .line 411
    iput p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 412
    return-void
.end method

.method public setEmbeddedEngineLanguage()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1449
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    .line 1451
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_2b

    .line 1453
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    .line 1468
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEmbeddedEngineLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return-void

    .line 1455
    :cond_2b
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_34

    .line 1457
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_10

    .line 1459
    :cond_34
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3e

    .line 1461
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_10

    .line 1463
    :cond_3e
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    .line 1465
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_10
.end method

.method public setFilePath(I)V
    .registers 3
    .param p1, "language"    # I

    .prologue
    .line 871
    packed-switch p1, :pswitch_data_70

    .line 923
    :goto_3
    return-void

    .line 873
    :pswitch_4
    const-string v0, "/sasr/kor/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 874
    const-string v0, "/sasr/kor/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 877
    :pswitch_d
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 878
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 881
    :pswitch_16
    const-string v0, "/sasr/chi/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 882
    const-string v0, "/sasr/chi/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 885
    :pswitch_1f
    const-string v0, "/sasr/spa/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 886
    const-string v0, "/sasr/spa/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 889
    :pswitch_28
    const-string v0, "/sasr/fra/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 890
    const-string v0, "/sasr/fra/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 893
    :pswitch_31
    const-string v0, "/sasr/ger/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 894
    const-string v0, "/sasr/ger/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 897
    :pswitch_3a
    const-string v0, "/sasr/ita/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 898
    const-string v0, "/sasr/ita/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 901
    :pswitch_43
    const-string v0, "/sasr/jap/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 902
    const-string v0, "/sasr/jap/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 905
    :pswitch_4c
    const-string v0, "/sasr/rus/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 906
    const-string v0, "/sasr/rus/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 909
    :pswitch_55
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 910
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 913
    :pswitch_5e
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 914
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 917
    :pswitch_67
    const-string v0, "/sasr/spa/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 918
    const-string v0, "/sasr/spa/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 871
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_4
        :pswitch_d
        :pswitch_16
        :pswitch_1f
        :pswitch_28
        :pswitch_31
        :pswitch_3a
        :pswitch_43
        :pswitch_4c
        :pswitch_55
        :pswitch_5e
        :pswitch_67
    .end packed-switch
.end method

.method public setSensoryFilePath(II)V
    .registers 8
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .prologue
    const/4 v4, 0x1

    .line 927
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultSensoryModelPath:Ljava/lang/String;

    .line 928
    .local v1, "sensoryModelPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultSensoryModelPath:Ljava/lang/String;

    .line 930
    .local v0, "sensoryGrammarPath":Ljava/lang/String;
    packed-switch p1, :pswitch_data_3d0

    .line 983
    :goto_8
    packed-switch p2, :pswitch_data_3ec

    .line 1032
    :goto_b
    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1034
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 1035
    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 1036
    const-string v2, "/system/lib/libSensoryBargeInEngine.so"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1038
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    .line 1040
    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2c

    .line 1042
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    .line 1047
    :cond_2c
    return-void

    .line 932
    :pswitch_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ko_kr/samsung_bargein_am_ko_kr_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ko_kr/samsung_bargein_grammar_ko_kr_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    goto :goto_8

    .line 936
    :pswitch_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/en_us/samsung_bargein_am_en_us_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/en_us/samsung_bargein_grammar_en_us_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 938
    goto :goto_8

    .line 940
    :pswitch_7b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zh_cn/samsung_bargein_am_zh_cn_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zh_cn/samsung_bargein_grammar_zh_cn_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    goto/16 :goto_8

    .line 944
    :pswitch_a3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/es_es/samsung_bargein_am_es_es_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/es_es/samsung_bargein_grammar_es_es_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 946
    goto/16 :goto_8

    .line 948
    :pswitch_cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/fr_fr/samsung_bargein_am_fr_fr_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/fr_fr/samsung_bargein_grammar_fr_fr_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 950
    goto/16 :goto_8

    .line 952
    :pswitch_f3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/de_de/samsung_bargein_am_de_de_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/de_de/samsung_bargein_grammar_de_de_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    goto/16 :goto_8

    .line 956
    :pswitch_11b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/it_it/samsung_bargein_am_it_it_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/it_it/samsung_bargein_grammar_it_it_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    goto/16 :goto_8

    .line 960
    :pswitch_143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ja_jp/samsung_bargein_am_ja_jp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ja_jp/samsung_bargein_grammar_ja_jp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    goto/16 :goto_8

    .line 964
    :pswitch_16b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ru_ru/samsung_bargein_am_ru_ru_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ru_ru/samsung_bargein_grammar_ru_ru_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 966
    goto/16 :goto_8

    .line 968
    :pswitch_193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/pt_br/samsung_bargein_am_pt_br_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/pt_br/samsung_bargein_grammar_pt_br_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    goto/16 :goto_8

    .line 972
    :pswitch_1bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/en_uk/samsung_bargein_am_en_uk_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/en_uk/samsung_bargein_grammar_en_uk_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 974
    goto/16 :goto_8

    .line 976
    :pswitch_1e3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/es_la/samsung_bargein_am_es_la_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/es_la/samsung_bargein_grammar_es_la_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    goto/16 :goto_8

    .line 985
    :pswitch_20b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "stop_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "stop_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    goto/16 :goto_b

    .line 989
    :pswitch_235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "schedule_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "schedule_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    goto/16 :goto_b

    .line 993
    :pswitch_25f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "call_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "call_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    goto/16 :goto_b

    .line 997
    :pswitch_287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "alarm_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "alarm_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    goto/16 :goto_b

    .line 1001
    :pswitch_2af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "music_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "music_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    goto/16 :goto_b

    .line 1005
    :pswitch_2d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "radio_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "radio_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    goto/16 :goto_b

    .line 1009
    :pswitch_303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "video_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "video_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    goto/16 :goto_b

    .line 1013
    :pswitch_32d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "camera_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "camera_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    goto/16 :goto_b

    .line 1017
    :pswitch_355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gallery_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gallery_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    goto/16 :goto_b

    .line 1021
    :pswitch_37d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cancel_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cancel_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    goto/16 :goto_b

    .line 1025
    :pswitch_3a5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yesno_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yesno_v2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    goto/16 :goto_b

    .line 930
    nop

    :pswitch_data_3d0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_54
        :pswitch_7b
        :pswitch_a3
        :pswitch_cb
        :pswitch_f3
        :pswitch_11b
        :pswitch_143
        :pswitch_16b
        :pswitch_193
        :pswitch_1bb
        :pswitch_1e3
    .end packed-switch

    .line 983
    :pswitch_data_3ec
    .packed-switch 0x0
        :pswitch_20b
        :pswitch_235
        :pswitch_25f
        :pswitch_287
        :pswitch_2af
        :pswitch_2d9
        :pswitch_303
        :pswitch_32d
        :pswitch_355
        :pswitch_37d
        :pswitch_3a5
    .end packed-switch
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method public stopBargeInAudioRecord()V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3d

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method
