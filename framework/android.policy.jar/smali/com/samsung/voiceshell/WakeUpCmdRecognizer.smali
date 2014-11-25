.class public Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"


# static fields
.field public static final AL_Enroll:I = 0x65

.field public static final CHECK_Enroll_END:I = 0x67

.field public static final CHECK_Enroll_START:I = 0x66

.field static final ENROLL_CNT:I = 0x4

.field static final ERROR_CONFLICT_COMMAND:I = -0x4

.field static final ERROR_MIC_BUSY:I = -0x5

.field public static final Enroll_ConflictCommand:I = 0x68

.field public static final MODEL_STATUS_ENROLLED:I = 0x3

.field public static final MODEL_STATUS_NONE:I = 0x0

.field public static final MODEL_STATUS_NOTENROLLED:I = 0x2

.field public static final MODEL_STATUS_NOUSERS:I = 0x1

.field static final NUM_MODELS:I = 0x6

.field public static ROOT:Ljava/lang/String; = null

.field public static final Recording_Fail:I = 0x69

.field public static UDTAlwaysAPrecog:Ljava/lang/String; = null

.field public static UDTAlwaysAPsearch:Ljava/lang/String; = null

.field public static UDTMultiAPrecog:Ljava/lang/String; = null

.field public static UDTMultiAPsearch:Ljava/lang/String; = null

.field static final UDTSID_ENROLL_CNT:I = 0x4

.field static final UDTSID_NUM_USERS:I = 0x5

.field public static customVoiceTalkEnablePath:Ljava/lang/String; = null

.field private static isEnrollReady:Z = false

.field public static mExist:[I = null

.field public static m_lastEnroll_0:Ljava/lang/String; = null

.field public static m_lastEnroll_1:Ljava/lang/String; = null

.field public static m_lastEnroll_2:Ljava/lang/String; = null

.field public static m_lastEnroll_3:Ljava/lang/String; = null

.field public static m_lastEnroll_4:Ljava/lang/String; = null

.field public static m_lastEnroll_5:Ljava/lang/String; = null

.field public static final m_strModelX86:Ljava/lang/String; = "/system/wakeupdata/samsung/models_x86.bin"

.field public static m_strSensoryCustomModelPath:Ljava/lang/String;

.field private static sVoiceLanguageFilePath:Ljava/lang/String;

.field public static typeDefine:Ljava/lang/String;


# instance fields
.field public CommandNumber:S

.field private final PACKAGENAME:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public WType:I

.field private absBeam:F

.field private acousticModelPathname:Ljava/lang/String;

.field private aoffset:F

.field private background_enroll:Ljava/lang/Thread;

.field private beam:F

.field private final brNewAcousticModelPathname:Ljava/lang/String;

.field private final brNewSearchGrammarPathname:Ljava/lang/String;

.field private final chAcousticModelPathname:Ljava/lang/String;

.field private final chNewAcousticModelPathname:Ljava/lang/String;

.field private final chNewSearchGrammarPathname:Ljava/lang/String;

.field private final chSearchGrammarPathname:Ljava/lang/String;

.field conflictCommandType:[S

.field public consoleInitReturn:J

.field private final deAcousticModelPathname:Ljava/lang/String;

.field private final deNewAcousticModelPathname:Ljava/lang/String;

.field private final deNewSearchGrammarPathname:Ljava/lang/String;

.field private final deSearchGrammarPathname:Ljava/lang/String;

.field private debugSessionPathname:Ljava/lang/String;

.field private delay:F

.field private doLoggingParam:I

.field private final elNewAcousticModelPathname:Ljava/lang/String;

.field private final elNewSearchGrammarPathname:Ljava/lang/String;

.field private final esAcousticModelPathname:Ljava/lang/String;

.field private final esNewAcousticModelPathname:Ljava/lang/String;

.field private final esNewSearchGrammarPathname:Ljava/lang/String;

.field private final esSearchGrammarPathname:Ljava/lang/String;

.field private final frAcousticModelPathname:Ljava/lang/String;

.field private final frNewAcousticModelPathname:Ljava/lang/String;

.field private final frNewSearchGrammarPathname:Ljava/lang/String;

.field private final frSearchGrammarPathname:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field protected isAudioFocus:Z

.field private isCustomVoiceTalkEnable:Z

.field public isEnableChineseWakeUp:Z

.field public isEnableJapaneseWakeUp:Z

.field public isEnableRussianWakeUp:Z

.field private isMultipleWakeUpEnable:Z

.field public isNewVersionSensoryWakeUpLibExist:Z

.field private isRecording:Z

.field private isRunning_all:Z

.field private isRunning_enroll:Z

.field private isSamsungWakeUpLibExist:Z

.field private isSensoryInitialize:Z

.field public isSensoryUDTSIDExist:Z

.field private isSensoryWakeUpLibExist:Z

.field private final itAcousticModelPathname:Ljava/lang/String;

.field private final itNewAcousticModelPathname:Ljava/lang/String;

.field private final itNewSearchGrammarPathname:Ljava/lang/String;

.field private final itSearchGrammarPathname:Ljava/lang/String;

.field private final jpAcousticModelPathname:Ljava/lang/String;

.field private final jpNewAcousticModelPathname:Ljava/lang/String;

.field private final jpNewSearchGrammarPathname:Ljava/lang/String;

.field private final jpSearchGrammarPathname:Ljava/lang/String;

.field private final koAcousticModelPathname:Ljava/lang/String;

.field private final koNewAcousticModelPathname:Ljava/lang/String;

.field private final koNewSearchGrammarPathname:Ljava/lang/String;

.field private final koSearchGrammarPathname:Ljava/lang/String;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field public mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

.field private mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

.field public mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

.field public mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

.field public mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

.field public mVElib:Lcom/samsung/voiceshell/VoiceEngine;

.field private final m_UBMpath:Ljava/lang/String;

.field private final newVersionSensorySoFilePath:Ljava/lang/String;

.field public returnLoadUser:I

.field private final ruAcousticModelPathname:Ljava/lang/String;

.field private final ruNewAcousticModelPathname:Ljava/lang/String;

.field private final ruNewSearchGrammarPathname:Ljava/lang/String;

.field private final ruSearchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname:Ljava/lang/String;

.field private final sensorySoFilePath:Ljava/lang/String;

.field private final sensoryUDTSIDSoFilePath:Ljava/lang/String;

.field public sensoryUDTSIDThreadEnable:Z

.field private final ukAcousticModelPathname:Ljava/lang/String;

.field private final ukNewAcousticModelPathname:Ljava/lang/String;

.field private final ukNewSearchGrammarPathname:Ljava/lang/String;

.field private final ukSearchGrammarPathname:Ljava/lang/String;

.field private final usAcousticModelPathname:Ljava/lang/String;

.field private final usNewAcousticModelPathname:Ljava/lang/String;

.field private final usNewSearchGrammarPathname:Ljava/lang/String;

.field private final usSearchGrammarPathname:Ljava/lang/String;

.field private final voiceEngineSoFilePath:Ljava/lang/String;

.field private weHaveNoModel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_0.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    .line 33
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_1.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    .line 34
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_2.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    .line 35
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_3.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    .line 36
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_4.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    .line 37
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_5.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    .line 39
    const-string v0, "/data/data/com.vlingo.midas/"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 40
    const-string v0, "/data/data/com.vlingo.midas/typeDefine.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    .line 41
    const-string v0, "/data/data/com.vlingo.midas/kwd_1.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    .line 42
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_Deep_search.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    .line 170
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 182
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_AP_recog.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 183
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_AP_search.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 185
    const-string v0, "/data/data/com.vlingo.midas/UDT_Multi_AP_recog.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    .line 186
    const-string v0, "/data/data/com.vlingo.midas/UDT_Multi_AP_search.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPsearch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .prologue
    .line 192
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: WakeUpCmdRecognizer default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;Ljava/lang/String;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .param p2, "strRootPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_UBMpath:Ljava/lang/String;

    .line 43
    const-string v0, "com.vlingo.midas"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->PACKAGENAME:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 48
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 49
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 51
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 55
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 56
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 58
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 60
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 61
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 76
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 78
    iput-short v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 80
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    .line 86
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 87
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    .line 89
    const-string v0, "WakeUpCmdRecognizer"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    .line 91
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 93
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 95
    const-string v0, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 96
    const-string v0, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 98
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    .line 99
    const/high16 v0, 0x42200000

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    .line 101
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    .line 102
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    .line 103
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    .line 105
    const-string v0, "/system/lib/libSamsungVoiceEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->voiceEngineSoFilePath:Ljava/lang/String;

    .line 106
    const-string v0, "/system/lib/libWakeUpSensory.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensorySoFilePath:Ljava/lang/String;

    .line 107
    const-string v0, "/system/lib/libSensoryWakeUpEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->newVersionSensorySoFilePath:Ljava/lang/String;

    .line 108
    const-string v0, "/system/lib/libSensoryUDTSIDEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDSoFilePath:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    .line 114
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 115
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    .line 117
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 120
    const-string v0, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koAcousticModelPathname:Ljava/lang/String;

    .line 121
    const-string v0, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usAcousticModelPathname:Ljava/lang/String;

    .line 122
    const-string v0, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukAcousticModelPathname:Ljava/lang/String;

    .line 123
    const-string v0, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esAcousticModelPathname:Ljava/lang/String;

    .line 124
    const-string v0, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frAcousticModelPathname:Ljava/lang/String;

    .line 125
    const-string v0, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deAcousticModelPathname:Ljava/lang/String;

    .line 126
    const-string v0, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itAcousticModelPathname:Ljava/lang/String;

    .line 127
    const-string v0, "/system/wakeupdata/sensory/nn_zh_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chAcousticModelPathname:Ljava/lang/String;

    .line 128
    const-string v0, "/system/wakeupdata/sensory/nn_ja_mfcc_16k_15_big_250_v4_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpAcousticModelPathname:Ljava/lang/String;

    .line 129
    const-string v0, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruAcousticModelPathname:Ljava/lang/String;

    .line 131
    const-string v0, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koSearchGrammarPathname:Ljava/lang/String;

    .line 132
    const-string v0, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usSearchGrammarPathname:Ljava/lang/String;

    .line 133
    const-string v0, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukSearchGrammarPathname:Ljava/lang/String;

    .line 134
    const-string v0, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esSearchGrammarPathname:Ljava/lang/String;

    .line 135
    const-string v0, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frSearchGrammarPathname:Ljava/lang/String;

    .line 136
    const-string v0, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deSearchGrammarPathname:Ljava/lang/String;

    .line 137
    const-string v0, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itSearchGrammarPathname:Ljava/lang/String;

    .line 138
    const-string v0, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chSearchGrammarPathname:Ljava/lang/String;

    .line 139
    const-string v0, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpSearchGrammarPathname:Ljava/lang/String;

    .line 140
    const-string v0, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruSearchGrammarPathname:Ljava/lang/String;

    .line 143
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koNewAcousticModelPathname:Ljava/lang/String;

    .line 144
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usNewAcousticModelPathname:Ljava/lang/String;

    .line 145
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukNewAcousticModelPathname:Ljava/lang/String;

    .line 146
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esNewAcousticModelPathname:Ljava/lang/String;

    .line 147
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->elNewAcousticModelPathname:Ljava/lang/String;

    .line 148
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frNewAcousticModelPathname:Ljava/lang/String;

    .line 149
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deNewAcousticModelPathname:Ljava/lang/String;

    .line 150
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itNewAcousticModelPathname:Ljava/lang/String;

    .line 151
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chNewAcousticModelPathname:Ljava/lang/String;

    .line 152
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpNewAcousticModelPathname:Ljava/lang/String;

    .line 153
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruNewAcousticModelPathname:Ljava/lang/String;

    .line 154
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->brNewAcousticModelPathname:Ljava/lang/String;

    .line 156
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koNewSearchGrammarPathname:Ljava/lang/String;

    .line 157
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usNewSearchGrammarPathname:Ljava/lang/String;

    .line 158
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukNewSearchGrammarPathname:Ljava/lang/String;

    .line 159
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esNewSearchGrammarPathname:Ljava/lang/String;

    .line 160
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->elNewSearchGrammarPathname:Ljava/lang/String;

    .line 161
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frNewSearchGrammarPathname:Ljava/lang/String;

    .line 162
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deNewSearchGrammarPathname:Ljava/lang/String;

    .line 163
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itNewSearchGrammarPathname:Ljava/lang/String;

    .line 164
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chNewSearchGrammarPathname:Ljava/lang/String;

    .line 165
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpNewSearchGrammarPathname:Ljava/lang/String;

    .line 166
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruNewSearchGrammarPathname:Ljava/lang/String;

    .line 167
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->brNewSearchGrammarPathname:Ljava/lang/String;

    .line 171
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 173
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    .line 174
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    .line 176
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    .line 177
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    .line 178
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    .line 180
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 279
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    .line 1368
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 198
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/voiceshell/WakeUpUtils;->GetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: WakeUpCmdRecognizer Create, Set data, policy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, p2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SetDataPath(Ljava/lang/String;)V

    .line 202
    invoke-static {p2}, Lcom/samsung/voiceshell/MultipleWakeUp;->SetDataPath(Ljava/lang/String;)V

    .line 203
    invoke-static {p2}, Lcom/samsung/voiceshell/VoiceEngine;->SetDataPath(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    .line 206
    const-string v0, "/system/lib/libSensoryUDTSIDEngine.so"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    .line 208
    const-string v0, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    .line 209
    const-string v0, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    .line 210
    const-string v0, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    .line 212
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_23f

    .line 214
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 221
    :goto_194
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 222
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungVoiceLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 223
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    .line 225
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acousticModelPathname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchGrammarPathname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSamsungWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSensoryWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewVersionSensoryWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSensoryUDTSIDExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 218
    :cond_23f
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setLanguage()V

    goto/16 :goto_194
.end method

.method private InitializeVerify()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1123
    const/4 v1, 0x0

    .line 1124
    .local v1, "iResult":I
    const/4 v0, 0x0

    .line 1126
    .local v0, "NumSets":I
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_c

    .line 1159
    :goto_7
    invoke-static {v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    move v2, v1

    .line 1161
    :goto_b
    return v2

    .line 1131
    :cond_c
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    move-result v0

    .line 1133
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of complete sets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    if-nez v0, :cond_35

    .line 1137
    const/16 v2, -0xa

    goto :goto_b

    .line 1140
    :cond_35
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v2, :cond_53

    .line 1142
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECURE LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_53
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v6, :cond_71

    .line 1146
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NORMAL LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_71
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_90

    .line 1150
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOICE-TALK with Wtype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_90
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    .line 1154
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v3, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    sget-object v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->initializeVerify(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1156
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    goto/16 :goto_7
.end method

.method private StartVerify()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1166
    const/4 v0, 0x0

    .line 1168
    .local v0, "iResult":I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1170
    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    .line 1172
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_60

    .line 1174
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v1, v2, :cond_24

    .line 1176
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v1

    iput v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 1178
    :cond_24
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: StartVerify, loadUsers returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_47

    .line 1183
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1192
    :cond_47
    :goto_47
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    if-nez v1, :cond_4f

    .line 1194
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_6d

    .line 1204
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 1206
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: StartVerify, Failed to do startRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/4 v0, -0x2

    .line 1210
    :cond_5f
    return v0

    .line 1188
    :cond_60
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 1189
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->setAdaptationModelPath(Ljava/lang/String;)V

    goto :goto_47

    .line 1199
    :cond_6d
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->startVerify()I

    move-result v0

    .line 1200
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: startVerify result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method private TerminateVerify()I
    .registers 3

    .prologue
    .line 1214
    const/4 v0, 0x0

    .line 1216
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_a

    .line 1218
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 1221
    :cond_a
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_f

    .line 1229
    :cond_e
    :goto_e
    return v0

    .line 1224
    :cond_f
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_e

    .line 1226
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    move-result v0

    goto :goto_e
.end method

.method static synthetic access$000(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkFile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1297
    if-nez p1, :cond_4

    .line 1309
    :cond_3
    :goto_3
    return v1

    .line 1301
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1309
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private isNewVersionSensoryLib()Z
    .registers 4

    .prologue
    .line 1356
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSensoryWakeUpEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1359
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v1, 0x0

    .line 1364
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private isSamsungVoiceLib()Z
    .registers 4

    .prologue
    .line 1315
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSamsungVoiceEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1318
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const/4 v1, 0x0

    .line 1323
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private isSensoryLib()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1329
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/lib/libWakeUpSensory.so"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v0, "mFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v1, "sensoryAcousticModelFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1333
    .local v2, "sensorySearchGrammarFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-nez v4, :cond_28

    .line 1335
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find libWakeUpSensory.so or libSensoryWakeUpEngine.so"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :goto_27
    return v3

    .line 1338
    :cond_28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_36

    .line 1340
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find sensoryAcousticModelFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1343
    :cond_36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1345
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find sensorySearchGrammarFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1350
    :cond_44
    const/4 v3, 0x1

    goto :goto_27
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1683
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1684
    .local v3, "mFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 1685
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1687
    .local v0, "data":[B
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 1690
    :try_start_e
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_26

    .line 1691
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v5, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 1692
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    .line 1693
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1695
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_38

    move-object v4, v5

    .line 1714
    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :goto_25
    return-object v6

    .line 1697
    :catch_26
    move-exception v1

    .line 1699
    .local v1, "e":Ljava/io/IOException;
    :goto_27
    if-eqz v4, :cond_2c

    .line 1702
    :try_start_29
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_31

    .line 1708
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .line 1710
    goto :goto_25

    .line 1703
    :catch_31
    move-exception v2

    .line 1705
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2c

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_36
    move-object v6, v7

    .line 1714
    goto :goto_25

    .line 1697
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_38
    move-exception v1

    move-object v4, v5

    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_27
.end method

.method private waitForBackgroundEnroll()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 909
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 910
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 912
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    if-eqz v1, :cond_17

    .line 914
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waitForBackgroundEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :try_start_10
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_17} :catch_18

    .line 923
    :cond_17
    :goto_17
    return-void

    .line 918
    :catch_18
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17
.end method


# virtual methods
.method protected InitializeEnroll()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 999
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: InitializeEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v0, 0x0

    .line 1003
    .local v0, "iResult":I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1005
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_3c

    .line 1008
    sput-boolean v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1010
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-short v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v1

    iput v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 1011
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: loadUsers returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :goto_39
    sput-boolean v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1024
    return v0

    .line 1015
    :cond_3c
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    .line 1017
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v5}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 1018
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->initializeEnroll(Ljava/lang/String;)I

    move-result v0

    goto :goto_39
.end method

.method protected ProcessEnroll()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1029
    const/4 v0, -0x3

    .line 1031
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_16

    .line 1033
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1035
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: ProcessEnroll, Failed to do startRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/4 v0, -0x5

    .line 1040
    :cond_16
    sget-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    if-eqz v1, :cond_3c

    const/4 v1, -0x5

    if-eq v0, v1, :cond_3c

    .line 1042
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aput-short v5, v1, v5

    .line 1044
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-short v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->processEnroll(Ljava/lang/String;S[S)I

    move-result v0

    .line 1046
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    iget-short v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    if-eq v1, v2, :cond_3c

    .line 1048
    const/4 v0, -0x4

    .line 1052
    :cond_3c
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_45

    .line 1054
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 1057
    :cond_45
    return v0
.end method

.method public SendHandlerMessage(III)V
    .registers 7
    .param p1, "job"    # I
    .param p2, "count"    # I
    .param p3, "check"    # I

    .prologue
    .line 298
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 299
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "job"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v2, "Enroll_Count"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const-string v2, "EnrollCheck_Count"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 304
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    return-void
.end method

.method public SetDataPath(Ljava/lang/String;)V
    .registers 4
    .param p1, "strRootPath"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: SetDataPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sput-object p1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_0.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_1.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_2.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_3.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_4.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_5.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_AP_recog.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_AP_search.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Multi_AP_recog.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Multi_AP_search.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPsearch:Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "typeDefine.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kwd_1.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_Deep_search.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/language.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 331
    return-void
.end method

.method protected TerminateEnroll()I
    .registers 4

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: TerminateEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v0, 0x0

    .line 1105
    .local v0, "iResult":I
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_10

    .line 1116
    :cond_c
    :goto_c
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1118
    return v0

    .line 1110
    :cond_10
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_c

    .line 1112
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateEnroll()I

    move-result v0

    goto :goto_c
.end method

.method public choiceMultipleWakeUpIntent(I)Landroid/content/Intent;
    .registers 12
    .param p1, "resultCommand"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1234
    const/4 v2, 0x0

    .line 1235
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 1237
    .local v1, "assignCommandArray":[I
    invoke-virtual {p0, v1, v6}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->functionAssignment([II)I

    move-result v3

    if-ne v3, v5, :cond_1e

    .line 1239
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: choiceMultipleWakeUpIntent, functionAssignment error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    aput v5, v1, v6

    .line 1241
    aput v5, v1, v7

    .line 1242
    aput v5, v1, v8

    .line 1243
    aput v5, v1, v9

    .line 1246
    :cond_1e
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    packed-switch p1, :pswitch_data_be

    .line 1273
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand is none : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :goto_51
    :pswitch_51
    if-eqz v2, :cond_b5

    .line 1279
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :goto_6f
    return-object v2

    .line 1252
    :pswitch_70
    const-string v0, "custom.wakeup.screen"

    .line 1253
    .local v0, "EXTRA_CUSTOM_WAKEUP":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.vlingo.midas"

    const-string v5, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1256
    const v3, 0x10208000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1258
    const-string v3, "custom.wakeup.screen"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_51

    .line 1261
    .end local v0    # "EXTRA_CUSTOM_WAKEUP":Ljava/lang/String;
    :pswitch_91
    aget v3, v1, v6

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1262
    goto :goto_51

    .line 1264
    :pswitch_9a
    aget v3, v1, v7

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1265
    goto :goto_51

    .line 1267
    :pswitch_a3
    aget v3, v1, v8

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1268
    goto :goto_51

    .line 1270
    :pswitch_ac
    aget v3, v1, v9

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1271
    goto :goto_51

    .line 1283
    :cond_b5
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: choiceMultipleWakeUpIntent, intent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 1247
    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_51
        :pswitch_70
        :pswitch_91
        :pswitch_9a
        :pswitch_a3
        :pswitch_ac
    .end packed-switch
.end method

.method public destroy()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 927
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 930
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 932
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 933
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 935
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopEnroll()I

    .line 936
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 938
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-eqz v0, :cond_87

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_87

    .line 941
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->waitForBackgroundEnroll()V

    .line 943
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v0, :cond_3f

    .line 946
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 947
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mVElib = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_3f
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_57

    .line 952
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 954
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v0, :cond_4e

    .line 956
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeModels()V

    .line 958
    :cond_4e
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 959
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mSensoryUDTSIDEngine = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_57
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_95

    .line 964
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    if-eqz v0, :cond_75

    .line 966
    iget-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_73

    .line 968
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-wide v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotClose(J)V

    .line 969
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iput-wide v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 971
    :cond_73
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 983
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v0, :cond_87

    .line 984
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->destroy()V

    .line 985
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 986
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mDummyRecorder = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_87
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_94

    .line 992
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 993
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mResultListener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_94
    return-void

    .line 976
    :cond_95
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    if-eqz v0, :cond_75

    .line 978
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 979
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mSensoryJNI = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method

.method public functionAssignment([II)I
    .registers 6
    .param p1, "AssignArray"    # [I
    .param p2, "RW"    # I

    .prologue
    .line 1291
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/voiceshell/VoiceEngine;->functionAssignment(Ljava/lang/String;[II)I

    move-result v0

    .line 1293
    .local v0, "result":I
    return v0
.end method

.method public getEnableWakeUp()Z
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    return v0
.end method

.method public init()I
    .registers 10

    .prologue
    const/16 v8, 0x3e80

    const/4 v7, 0x1

    const/4 v3, -0x1

    .line 335
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: init"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_3b

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_3b

    .line 339
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSensoryUDTSIDExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 615
    :goto_3a
    return v2

    .line 344
    :cond_3b
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-nez v2, :cond_5b

    .line 346
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: Not exist library, isSensoryWakeUpLibExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 347
    goto :goto_3a

    .line 350
    :cond_5b
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_6b

    .line 352
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 355
    :cond_6b
    new-instance v2, Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    iget-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-direct {v2, v4, v5, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;ZZ)V

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 356
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-nez v2, :cond_85

    .line 358
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: init, Failed to allocate AudioRecordHaydn"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 359
    goto :goto_3a

    .line 362
    :cond_85
    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngineWrapper;->getInstance()Lcom/samsung/voiceshell/VoiceEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 364
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_cf

    .line 366
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 368
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v2, :cond_c8

    .line 370
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v0

    .line 371
    .local v0, "lTrig":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_bd

    .line 373
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, pre-trig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_bd
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initSession()J

    move-result-wide v0

    .line 377
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->setSessionValue(J)V

    .line 380
    .end local v0    # "lTrig":J
    :cond_c8
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: SensoryUDTSIDEngine init complete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_cf
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_ff

    .line 389
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 396
    :goto_d9
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_106

    .line 398
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v8}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    .line 417
    :goto_e9
    iput-boolean v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 419
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;

    invoke-direct {v3, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 613
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 615
    const/4 v2, 0x0

    goto/16 :goto_3a

    .line 393
    :cond_ff
    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->getInstance()Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    goto :goto_d9

    .line 403
    :cond_106
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2, v7}, Lcom/samsung/voiceshell/VoiceEngine;->setIsRunningVoiceEngine(Z)V

    .line 405
    const-string v2, "/system/wakeupdata/samsung/models_x86.bin"

    invoke-virtual {p0, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 407
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v8}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_e9

    .line 412
    :cond_120
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 44100"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_e9
.end method

.method public isWakeUpFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 1718
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1719
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1720
    const/4 v1, 0x1

    .line 1723
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected sensoryProcessEnroll()I
    .registers 7

    .prologue
    .line 1062
    const/4 v0, -0x3

    .line 1063
    .local v0, "iResult":I
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v2, :cond_5b

    .line 1065
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1067
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: sensoryProcessEnroll, Failed to do startRecord"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/4 v0, -0x5

    .line 1077
    :cond_15
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: start sensoryProcessEnroll, trig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    sget-boolean v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    if-eqz v2, :cond_49

    const/4 v2, -0x5

    if-eq v0, v2, :cond_49

    .line 1081
    :cond_3a
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    if-nez v2, :cond_44

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-nez v2, :cond_3a

    .line 1085
    :cond_44
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    .line 1088
    :cond_49
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: stop sensoryProcessEnroll"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v2, :cond_59

    .line 1092
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    :cond_59
    move v1, v0

    .line 1095
    .end local v0    # "iResult":I
    .local v1, "iResult":I
    :goto_5a
    return v1

    .line 1073
    .end local v1    # "iResult":I
    .restart local v0    # "iResult":I
    :cond_5b
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: sensoryProcessEnroll, mDummyRecorder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1074
    .end local v0    # "iResult":I
    .restart local v1    # "iResult":I
    goto :goto_5a
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 237
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-nez v2, :cond_3e

    .line 239
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: setContext, mContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 247
    .local v0, "nUserID":I
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: setContext, userID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-nez v0, :cond_5d

    .line 253
    const-string v1, "/data/data/com.vlingo.midas/"

    .line 260
    .local v1, "strRootPath":Ljava/lang/String;
    :goto_2d
    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SetDataPath(Ljava/lang/String;)V

    .line 261
    invoke-static {v1}, Lcom/samsung/voiceshell/MultipleWakeUp;->SetDataPath(Ljava/lang/String;)V

    .line 262
    invoke-static {v1}, Lcom/samsung/voiceshell/VoiceEngine;->SetDataPath(Ljava/lang/String;)V

    .line 264
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_83

    .line 266
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 272
    :goto_3d
    return-void

    .line 243
    .end local v0    # "nUserID":I
    .end local v1    # "strRootPath":Ljava/lang/String;
    :cond_3e
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: setContext, mContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 257
    .restart local v0    # "nUserID":I
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "strRootPath":Ljava/lang/String;
    goto :goto_2d

    .line 270
    :cond_83
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setLanguage()V

    goto :goto_3d
.end method

.method public setLanguage()V
    .registers 7

    .prologue
    .line 1390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1391
    .local v2, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1392
    .local v1, "stringCountry":Ljava/lang/String;
    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, "sVoiceLanguage":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Country : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sVoiceLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    if-eqz v0, :cond_12a

    .line 1400
    const-string v3, "ko-KR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1402
    const-string v3, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1403
    const-string v3, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1515
    :cond_70
    :goto_70
    return-void

    .line 1405
    :cond_71
    const-string v3, "en-GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1407
    const-string v3, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1408
    const-string v3, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1410
    :cond_82
    const-string v3, "en-US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1412
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1413
    const-string v3, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1415
    :cond_93
    const-string v3, "es-ES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 1417
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1418
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1420
    :cond_a4
    const-string v3, "v-es-LA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 1422
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1423
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1425
    :cond_b5
    const-string v3, "fr-FR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 1427
    const-string v3, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1428
    const-string v3, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1430
    :cond_c6
    const-string v3, "de-DE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 1432
    const-string v3, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1433
    const-string v3, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1435
    :cond_d7
    const-string v3, "it-IT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 1437
    const-string v3, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1438
    const-string v3, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1440
    :cond_e8
    const-string v3, "zh-CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    if-eqz v3, :cond_fe

    .line 1442
    const-string v3, "/system/wakeupdata/sensory/nn_zh_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1443
    const-string v3, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1445
    :cond_fe
    const-string v3, "ja-JP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    if-eqz v3, :cond_114

    .line 1447
    const-string v3, "/system/wakeupdata/sensory/nn_ja_mfcc_16k_15_big_250_v4_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1448
    const-string v3, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1450
    :cond_114
    const-string v3, "ru-RU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    if-eqz v3, :cond_70

    .line 1452
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1453
    const-string v3, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1458
    :cond_12a
    if-eqz v2, :cond_70

    .line 1460
    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 1462
    const-string v3, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1463
    const-string v3, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1465
    :cond_142
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 1467
    const-string v3, "GB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_160

    .line 1469
    const-string v3, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1470
    const-string v3, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1474
    :cond_160
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1475
    const-string v3, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1478
    :cond_16a
    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 1480
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1481
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1483
    :cond_17c
    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_192

    .line 1485
    const-string v3, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1486
    const-string v3, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1488
    :cond_192
    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a8

    .line 1490
    const-string v3, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1491
    const-string v3, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1493
    :cond_1a8
    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 1495
    const-string v3, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1496
    const-string v3, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1498
    :cond_1be
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    if-eqz v3, :cond_1d8

    .line 1500
    const-string v3, "/system/wakeupdata/sensory/nn_zh_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1501
    const-string v3, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1503
    :cond_1d8
    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    if-eqz v3, :cond_1f2

    .line 1505
    const-string v3, "/system/wakeupdata/sensory/nn_ja_mfcc_16k_15_big_250_v4_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1506
    const-string v3, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1508
    :cond_1f2
    const-string v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    if-eqz v3, :cond_70

    .line 1510
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1511
    const-string v3, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70
.end method

.method public setNewVersionLanguage()V
    .registers 7

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1520
    .local v1, "modelPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1522
    .local v0, "grammarPath":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1523
    .local v4, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 1524
    .local v3, "stringCountry":Ljava/lang/String;
    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1526
    .local v2, "sVoiceLanguage":Ljava/lang/String;
    if-eqz v2, :cond_e5

    .line 1528
    const-string v5, "ko-KR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1530
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    .line 1531
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    .line 1665
    :cond_28
    :goto_28
    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v5, :cond_40

    .line 1667
    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1669
    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 1670
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 1674
    :cond_40
    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1676
    iput-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1677
    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1679
    :cond_50
    return-void

    .line 1533
    :cond_51
    const-string v5, "en-GB"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1535
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    .line 1536
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    goto :goto_28

    .line 1538
    :cond_5e
    const-string v5, "en-US"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1540
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    .line 1541
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    goto :goto_28

    .line 1543
    :cond_6b
    const-string v5, "es-ES"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 1545
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    .line 1546
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    goto :goto_28

    .line 1548
    :cond_78
    const-string v5, "v-es-LA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1550
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    .line 1551
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    goto :goto_28

    .line 1553
    :cond_85
    const-string v5, "fr-FR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1555
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    .line 1556
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    goto :goto_28

    .line 1558
    :cond_92
    const-string v5, "de-DE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 1560
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    .line 1561
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    goto :goto_28

    .line 1563
    :cond_9f
    const-string v5, "it-IT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 1565
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    .line 1566
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    goto/16 :goto_28

    .line 1568
    :cond_ad
    const-string v5, "zh-CN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 1570
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    .line 1571
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    goto/16 :goto_28

    .line 1573
    :cond_bb
    const-string v5, "ja-JP"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 1575
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    .line 1576
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    goto/16 :goto_28

    .line 1578
    :cond_c9
    const-string v5, "ru-RU"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 1580
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    .line 1581
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    goto/16 :goto_28

    .line 1583
    :cond_d7
    const-string v5, "pt-BR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1585
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    .line 1586
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    goto/16 :goto_28

    .line 1591
    :cond_e5
    if-eqz v4, :cond_28

    .line 1593
    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 1595
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    .line 1596
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    goto/16 :goto_28

    .line 1598
    :cond_f9
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 1600
    const-string v5, "GB"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_113

    .line 1602
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    .line 1603
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    goto/16 :goto_28

    .line 1607
    :cond_113
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    .line 1608
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    goto/16 :goto_28

    .line 1611
    :cond_119
    const-string v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 1613
    const-string v5, "ES"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 1615
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    .line 1616
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    goto/16 :goto_28

    .line 1620
    :cond_12f
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    .line 1621
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    goto/16 :goto_28

    .line 1624
    :cond_135
    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 1626
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    .line 1627
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    goto/16 :goto_28

    .line 1629
    :cond_147
    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    .line 1631
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    .line 1632
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    goto/16 :goto_28

    .line 1634
    :cond_159
    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 1636
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    .line 1637
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    goto/16 :goto_28

    .line 1639
    :cond_16b
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17d

    .line 1641
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    .line 1642
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    goto/16 :goto_28

    .line 1644
    :cond_17d
    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18f

    .line 1646
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    .line 1647
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    goto/16 :goto_28

    .line 1649
    :cond_18f
    const-string v5, "ru"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 1651
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    .line 1652
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    goto/16 :goto_28

    .line 1654
    :cond_19d
    const-string v5, "pt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1656
    const-string v5, "BR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1658
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    .line 1659
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    goto/16 :goto_28
.end method

.method public startEnroll(S)I
    .registers 3
    .param p1, "cmNumber"    # S

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startEnroll(SS)I

    move-result v0

    return v0
.end method

.method public startEnroll(SS)I
    .registers 10
    .param p1, "cmNumber"    # S
    .param p2, "wakeUpType"    # S

    .prologue
    const/16 v6, 0x3e80

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 626
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: startEnroll, cmNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wakeUpType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_56

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_56

    .line 630
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSensoryUDTSIDExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_55
    return v0

    .line 635
    :cond_56
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-nez v2, :cond_75

    .line 637
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSensoryWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 641
    :cond_75
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 643
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_97

    .line 645
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    .line 647
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 663
    :goto_8a
    iput p2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 664
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 666
    iput-short p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 667
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    move v0, v1

    .line 669
    goto :goto_55

    .line 651
    :cond_97
    const-string v2, "/system/wakeupdata/samsung/models_x86.bin"

    invoke-virtual {p0, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 653
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_8a

    .line 658
    :cond_ac
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 44100"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_8a
.end method

.method public startVerify(I)I
    .registers 15
    .param p1, "wakeType"    # I

    .prologue
    const/4 v0, -0x1

    const/16 v7, -0xa

    const/16 v1, -0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 700
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: startVerify, wakeType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v11, 0x0

    .line 704
    .local v11, "iResult":I
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_4f

    .line 706
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSensoryUDTSIDExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :goto_4e
    return v0

    .line 711
    :cond_4f
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-nez v2, :cond_6e

    .line 713
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSensoryWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 717
    :cond_6e
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_75

    .line 719
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 722
    :cond_75
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a3

    .line 724
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-nez v0, :cond_a3

    .line 726
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 734
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 736
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 738
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    if-eqz v0, :cond_a3

    .line 740
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 741
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waiting for recording start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-wide/16 v2, 0x1f4

    :try_start_99
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9c
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_9c} :catch_c4

    .line 747
    :goto_9c
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waiting for recording end"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_a3
    iput p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 753
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v0, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 755
    new-instance v12, Ljava/io/File;

    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    .local v12, "mFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c9

    .line 759
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_c2

    .line 761
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v0, v1, v5}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    :cond_c2
    move v0, v1

    .line 763
    goto :goto_4e

    .line 744
    .end local v12    # "mFile":Ljava/io/File;
    :catch_c4
    move-exception v10

    .line 745
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9c

    .line 766
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v12    # "mFile":Ljava/io/File;
    :cond_c9
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeVerify()I

    move-result v11

    .line 768
    if-ne v11, v7, :cond_15d

    .line 770
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eqz v0, :cond_d8

    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ed

    .line 772
    :cond_d8
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 773
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 774
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_ea

    .line 776
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v0, v7, v5}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    :cond_ea
    move v0, v11

    .line 778
    goto/16 :goto_4e

    .line 782
    :cond_ed
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 783
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 792
    :goto_f6
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_167

    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    :goto_fc
    invoke-direct {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->checkFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 795
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: isCustomVoiceTalkEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setCustomVoiceTalkFlag(Z)V

    .line 798
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_133

    .line 800
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    if-eqz v0, :cond_133

    .line 802
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 803
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 807
    :cond_133
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-lez v0, :cond_182

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_182

    .line 809
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    if-nez v0, :cond_156

    .line 811
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_16a

    .line 813
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 814
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 874
    :cond_156
    :goto_156
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->StartVerify()I

    move-result v11

    move v0, v11

    .line 876
    goto/16 :goto_4e

    .line 788
    :cond_15d
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 789
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    goto :goto_f6

    .line 792
    :cond_167
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    goto :goto_fc

    .line 818
    :cond_16a
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    sget v3, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    iget v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    iget v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    invoke-virtual/range {v0 .. v9}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z

    goto :goto_156

    .line 832
    :cond_182
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v0, v6, :cond_156

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    if-nez v0, :cond_156

    .line 834
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    if-nez v0, :cond_1a5

    .line 836
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_1b9

    .line 838
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 839
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 857
    :cond_1a5
    :goto_1a5
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-nez v0, :cond_156

    .line 863
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    invoke-virtual {v0}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->MakeReady()Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 865
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "SensoryEngine Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 843
    :cond_1b9
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    sget v3, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    iget v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    iget v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    invoke-virtual/range {v0 .. v9}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z

    goto :goto_1a5

    .line 869
    :cond_1d1
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "SensoryEngine Not Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156
.end method

.method public stopEnroll()I
    .registers 5

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 674
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: stopEnroll"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_12

    .line 694
    :cond_11
    :goto_11
    return v0

    .line 681
    :cond_12
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_11

    .line 686
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_23

    .line 688
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 689
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Set sensoryUDTSIDThreadEnable false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_23
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 693
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    move v0, v1

    .line 694
    goto :goto_11
.end method

.method public stopVerify()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 881
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "stopVerify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_12

    .line 904
    :cond_11
    :goto_11
    return v0

    .line 888
    :cond_12
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_11

    .line 893
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateVerify()I

    .line 895
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2a

    .line 897
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-eqz v0, :cond_2a

    .line 899
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 900
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    :cond_2a
    move v0, v1

    .line 904
    goto :goto_11
.end method
