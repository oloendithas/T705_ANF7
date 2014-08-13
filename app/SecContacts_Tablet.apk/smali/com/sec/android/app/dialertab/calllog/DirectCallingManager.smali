.class public Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;,
        Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$DirectCallingEvent;,
        Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
    }
.end annotation


# static fields
.field private static final ACCELLEROMETER_OVER_THRESHOLD:F = 60.0f

.field private static final ACCELLEROMETER_UNDER_THRESHOLD:F = 20.0f

.field private static CALL_CONNECT_TONE:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final MOVING_THRESHOLD_TIME:I = 0x12c

.field public static final NORMAL:I = 0x0

.field private static final PROXIMITY_CLOSE_DISTANCE:I = 0x40

.field public static final PROXIMITY_DISABLE:I = 0x0

.field public static final PROXIMITY_ENABLE:I = 0x1

.field private static final PROXIMITY_FALSE:F = 5.0f

.field public static final PROXIMITY_FORCE_STOP:I = 0x2

.field private static final PROXIMITY_TRUE:F = 0.0f

.field private static final ROCOGNITION_ERROR_KEY:Ljava/lang/String; = "recognition_error"

.field private static final SPEECH_RECOGNITION_PARTIAL:I = 0x30

.field private static final SPEECH_RECORGNITION_COMPLETE:I = 0x20

.field private static final SPEECH_ROCORGNITION_ERROR:I = 0x50

.field private static final SPEECH_YES:Ljava/lang/String; = "yes"

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static final START_RPOXIMITY_SENSOR:I = 0x60

.field private static final STOP_PROXIMITY_SENSOR:I = 0x70

.field private static final TAG:Ljava/lang/String; = "Logs/DirectCallingManager"

.field private static final TEXT_TO_SPEECH_COMPLETE:I = 0x10

.field public static final TUTORIAL:I = 0x1

.field private static bErrorSpeech:Z = false

.field private static final checkCallConnectTone:Z = false

.field private static mCheckTryToCall:Z = false

.field private static mCheckTwiceEvent:Z = false

.field private static mIsStartedProximitySensor:Z = false

.field private static final usingMotionRecognition:Z = true

.field private static final usingTTS:Z

.field private static final usingVoiceRecognizer:Z


# instance fields
.field private IsTTSInitiated:Z

.field acceleration:[F

.field gravity:[F

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field mAccelerormeterListener:Landroid/hardware/SensorEventListener;

.field private mActiveMode:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mFinishTutorial:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$DirectCallingEvent;

.field private mHandler:Landroid/os/Handler;

.field public mIsProximityCloseDistance:Z

.field private mIsSpeechRecorgnizing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastTime:J

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRecognizer:Landroid/speech/SpeechRecognizer;

.field private mRegisteredAccelerometer:Z

.field private mRegisteredMotionRecognition:Z

.field private mRegisteredProximity:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechListener:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;

.field private unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v0, "call_conn_tone"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->CALL_CONNECT_TONE:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%s"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->SRC_TAGS:[Ljava/lang/String;

    .line 79
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z

    .line 80
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 81
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 82
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activeMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->IsTTSInitiated:Z

    .line 115
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;

    .line 671
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 711
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    .line 759
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 156
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    .line 157
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    .line 158
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 159
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    .line 161
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activeMode"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->IsTTSInitiated:Z

    .line 115
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;

    .line 671
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 711
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    .line 759
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 168
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    .line 169
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    .line 170
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 171
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    .line 173
    invoke-virtual {p0, p3}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setPhoneNumber(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p4}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setName(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method private SpeakCallQuestion()V
    .locals 0

    .prologue
    .line 832
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;)Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerAccelerometer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterAccelerometer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->x:F

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->x:F

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->y:F

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->y:F

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 45
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->z:F

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->z:F

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastX:F

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastX:F

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastY:F

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastY:F

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastZ:F

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastZ:F

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->IsTTSInitiated:Z

    return p1
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 45
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->updateProximitySensorMode(I)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 45
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->isCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerMotionRecognition()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setTextToSpeech()V

    return-void
.end method

.method private getWakeLockProximity()V
    .locals 3

    .prologue
    .line 431
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 434
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x20

    const-string v2, "Logs/DirectCallingManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 439
    :cond_0
    return-void
.end method

.method private isCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 970
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 971
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 979
    :cond_0
    :goto_0
    return v1

    .line 974
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 975
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "User is calling..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 947
    if-nez p0, :cond_1

    .line 966
    :cond_0
    :goto_0
    return v2

    .line 952
    :cond_1
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 954
    .local v1, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 955
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v2, v3

    .line 964
    goto :goto_0

    :sswitch_1
    move v2, v3

    .line 960
    goto :goto_0

    :sswitch_2
    move v2, v3

    .line 962
    goto :goto_0

    .line 958
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isSensorReadyForDirectCall(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 928
    const/4 v2, 0x0

    .line 929
    .local v2, "isProximitySensor":Z
    const/4 v1, 0x0

    .line 931
    .local v1, "isAccelerometerSensor":Z
    const-string v6, "sensor"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 932
    .local v4, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 934
    .local v3, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 935
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    .line 936
    .local v5, "sensorType":I
    if-ne v5, v7, :cond_1

    .line 937
    const/4 v1, 0x1

    .line 934
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    :cond_1
    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 939
    const/4 v2, 0x1

    goto :goto_1

    .line 942
    .end local v5    # "sensorType":I
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v6, v7

    :goto_2
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private makeVibrate()V
    .locals 3

    .prologue
    .line 568
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    .line 569
    .local v0, "vibrator":Landroid/os/SystemVibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 570
    return-void
.end method

.method private proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readyForCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "direction"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 532
    return-void
.end method

.method private registerAccelerometer()V
    .locals 4

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-eqz v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerAccelerometer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private registerMotionRecognition()V
    .locals 3

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 377
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerMotionRecognition"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private registerProximitySensor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredProximity:Z

    if-eqz v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerProximitySensor"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredProximity:Z

    .line 415
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private setIsSpeechRecorgnizing(Z)V
    .locals 3
    .param p1, "set"    # Z

    .prologue
    .line 876
    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSpeechRecorgnizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    .line 878
    return-void
.end method

.method private setMotionSensor(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    .line 196
    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 199
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 255
    return-void
.end method

.method private setTextToSpeech()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method private setVolumeForTTS()V
    .locals 4

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 857
    :cond_1
    return-void
.end method

.method private speakText(Ljava/lang/String;)V
    .locals 7
    .param p1, "textForSpeech"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 807
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 808
    .local v0, "myHashAlarm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "streamType"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setTextToSpeech()V

    .line 811
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speakText, mTextToSpeech : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_1

    .line 813
    const/4 v1, 0x0

    .line 815
    .local v1, "nRet":I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1, v6, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    .line 816
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speak, ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v2, "utteranceId"

    const-string v3, "DirectCalling ended"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4, v6, v0}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v1

    .line 819
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playSilence     ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-gez v1, :cond_0

    .line 821
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 822
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 829
    .end local v1    # "nRet":I
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 827
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    goto :goto_0
.end method

.method private startSpeechRecognize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 859
    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSpeechRecognize... recongnition Available : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_0

    .line 874
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 864
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "calling_package"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v1, "android.speech.extra.LANGUAGE"

    const-string v2, "en-US"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 869
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "start Listening... "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_0

    .line 872
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "stop listtening... "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopSpeechRecognition()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method private stopTTS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 655
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "stopTTS"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 659
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 660
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 661
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeechListener:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;

    if-eqz v1, :cond_1

    .line 668
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeechListener:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;

    .line 670
    :cond_1
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "TTS is shutdown"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryToCall(Ljava/lang/String;)V
    .locals 6
    .param p1, "direction"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 534
    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToCall, mActiveMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "0038"

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    const/4 v0, 0x0

    .line 546
    .local v0, "callConnectTone":I
    if-nez v0, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->makeVibrate()V

    .line 549
    :cond_0
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    if-nez v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v2, v5, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCallForResult(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 551
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "tryToCall, mCheckTwiceEvent is false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 553
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 554
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    .line 565
    :cond_1
    return-void
.end method

.method private unregisterAccelerometer()V
    .locals 2

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterAccelerometer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private unregisterMotionRecognition()V
    .locals 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterMotionRecognition"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private unregisterProximity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredProximity:Z

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 424
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterProximity"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 426
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredProximity:Z

    .line 427
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private updateProximitySensorMode(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 596
    packed-switch p1, :pswitch_data_0

    .line 628
    :goto_0
    return-void

    .line 604
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerProximitySensor()V

    goto :goto_0

    .line 608
    :pswitch_1
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 609
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "PROXIMITY_DISABLE, mCheckTwiceEvent is true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 616
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    .line 620
    :pswitch_2
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 621
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "PROXIMITY_FORCE_STOP, mCheckTwiceEvent is true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 623
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private wakeLockProximity()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 447
    :cond_0
    return-void
.end method

.method private wakeUnlockProximity()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 455
    :cond_0
    return-void
.end method


# virtual methods
.method protected AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 583
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 584
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionPartialResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    .line 587
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected AnalizeRecorgnitionResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 503
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 504
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    .line 507
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPickupToCallOut()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 284
    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    if-ne v4, v2, :cond_0

    .line 293
    :goto_0
    return v2

    .line 287
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 288
    .local v1, "motionState":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 290
    .local v0, "directCallState":I
    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 292
    .local v2, "state":Z
    :goto_1
    const-string v3, "Logs/DirectCallingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPickupToCallOut() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "state":Z
    :cond_1
    move v2, v3

    .line 290
    goto :goto_1
.end method

.method protected onResultErrorCode(I)V
    .locals 6
    .param p1, "error"    # I

    .prologue
    const/4 v5, 0x0

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 460
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResultErrorCode : error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    packed-switch p1, :pswitch_data_0

    .line 490
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_0
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResultErrorCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->speakText(Ljava/lang/String;)V

    .line 497
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 499
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z

    .line 500
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 501
    return-void

    .line 463
    :pswitch_0
    const v2, 0x7f0e035e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    goto :goto_0

    .line 466
    :pswitch_1
    const v2, 0x7f0e035f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    goto :goto_0

    .line 469
    :pswitch_2
    const v2, 0x7f0e0360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    goto :goto_0

    .line 472
    :pswitch_3
    const v2, 0x7f0e0361

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    goto :goto_0

    .line 475
    :pswitch_4
    const v2, 0x7f0e0362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    goto :goto_0

    .line 478
    :pswitch_5
    const v2, 0x7f0e0363

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    goto :goto_0

    .line 481
    :pswitch_6
    const v2, 0x7f0e0364

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    goto :goto_0

    .line 484
    :pswitch_7
    const v2, 0x7f0e0365

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    goto :goto_0

    .line 487
    :pswitch_8
    const v2, 0x7f0e0366

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 488
    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    .line 321
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->getPickupToCallOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->stopTTS()V

    .line 325
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->stopSpeechRecognition()V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    .line 331
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterMotionRecognition()V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->getPickupToCallOut()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 344
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v0, "unlockReceiverfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 356
    .end local v0    # "unlockReceiverfilter":Landroid/content/IntentFilter;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerMotionRecognition()V

    .line 360
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setTextToSpeech()V

    goto :goto_0
.end method

.method public setActiveMode(I)V
    .locals 0
    .param p1, "activeMode"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    .line 184
    return-void
.end method

.method public setFinishTutorialListener(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$DirectCallingEvent;)V
    .locals 0
    .param p1, "finishEvent"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$DirectCallingEvent;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mFinishTutorial:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$DirectCallingEvent;

    .line 576
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 636
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mName:Ljava/lang/String;

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public setPickupToCallOut(I)V
    .locals 3
    .param p1, "set"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pick_up_to_call_out"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPickupToCallOut() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->getPickupToCallOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 310
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "start DirectCAllingManager"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerMotionRecognition()V

    goto :goto_0
.end method
