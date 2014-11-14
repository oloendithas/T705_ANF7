.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$ScanThread;,
        Lcom/android/server/FMRadioService$ListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTINON_ALARM_PLAY:Ljava/lang/String; = "com.sec.android.app.voicecommand"

.field private static final ACTION_ALL_SOUND_OFF:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final ACTION_BACKGROUND_PLAY:Ljava/lang/String; = "com.android.backgroung.playing"

.field private static final ACTION_DNS_PAUSE_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.pause_internet_stream"

.field private static final ACTION_DNS_RESUME_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.resume_internet_stream"

.field private static final ACTION_DNS_STOP_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.stop_internet_stream"

.field private static final ACTION_MUSIC_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final ACTION_RECORDING_SAVE:Ljava/lang/String; = "com.samsung.media.fmradio.rec_save"

.field private static final ACTION_VOLUME_LOCK:Ljava/lang/String; = "com.android.fm.volume_lock"

.field private static final ACTION_VOLUME_UNLOCK:Ljava/lang/String; = "com.android.fm.volume_unlock"

.field private static final APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final CODE_SCAN_PROGRESS:I = 0x1

.field public static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DELAY_WAITING_STREAM_STOPPED:I = 0x96

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field static final EVENT_AF_RECEIVED:I = 0xe

.field static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field static final EVENT_RDS_EVENT:I = 0xa

.field static final EVENT_REC_FINISH:I = 0x11

.field static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field public static final EVENT_VOLUME_LOCK:I = 0xf

.field private static final KEY_RETURNBACK_VOLUME:Ljava/lang/String; = "com.android.fm.return_back_volume"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_MOTION_LISTENER:I = 0x15

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field public static final OFF_TV_OUT:I = 0xa

.field public static final PAUSED:I = 0xb

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x64

.field private static final VOLUME_UP_DOWN:Ljava/lang/String; = "114,115"

.field private static final audioMute:Ljava/lang/String; = "fm_radio_mute=1"

.field private static final audioUnMute:Ljava/lang/String; = "fm_radio_mute=0"

.field private static mIsSetWakeKey:Z

.field private static mIsTransientPaused:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private alarmTTSPlay:Z

.field private fos:Ljava/io/FileOutputStream;

.field private isFMBackGroundPlaying:Z

.field private mAFEnable:Z

.field private mAirPlaneEnabled:Z

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlgo_type:I

.field private final mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

.field final mAudioFocusHandler:Landroid/os/Handler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mBand:I

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mCf0_th12:I

.field public mChannelSpacing:I

.field private mCnt_th:I

.field private mCnt_th_2:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFoundFreq:J

.field private mCurrentResumeVol:J

.field public mDEConstant:I

.field private mDNSEnable:Z

.field private mFmOff:Ljava/lang/String;

.field private mFmOn:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field private mInternetStreamingMode:Z

.field public mIsAudioFocusAlive:Z

.field private mIsBatteryLow:Z

.field private mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

.field private mIsForcestop:Z

.field private mIsHeadsetPlugged:Z

.field private mIsKeepRecoding:Z

.field private mIsMute:Z

.field private mIsOn:Z

.field private mIsSeeking:Z

.field private mIsSkipTunigVal:Z

.field private mIsSpeakerOn:Z

.field private mIsTestMode:Z

.field private mIsTvOutPlugged:Z

.field private mIsphoneCall:Z

.field private mIsphoneCallRinging:Z

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mNeedResumeToFreq:J

.field private mOnProgress:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPlayerNative:Lcom/android/server/FMPlayerNative;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousFoundFreq:J

.field private mRDSEnable:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeVol:J

.field private mReturnBackVolume:I

.field private mRssi_th:I

.field private mRssi_th_2:I

.field private mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFreq:J

.field private mScanProgress:Z

.field private mScanThread:Ljava/lang/Thread;

.field private mScanVolume:I

.field private final mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

.field private mSnr_th:I

.field private mSnr_th_2:I

.field private final mSurfaceTouchReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitPidDuringScanning:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpKeyFileName:Ljava/lang/String;

.field private mWakeUpKeyFilePath:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private volumeLock:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_b
    sput-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    .line 148
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 212
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    return-void

    :cond_15
    move v0, v1

    .line 61
    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1300
    invoke-direct {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    .line 125
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 135
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    .line 136
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    .line 137
    const-wide/16 v5, -0x2

    iput-wide v5, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 147
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    .line 151
    iput-wide v8, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    .line 152
    iput-wide v8, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    .line 155
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    .line 162
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    .line 178
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    .line 183
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    .line 188
    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 189
    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 190
    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 191
    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 192
    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 193
    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 194
    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 195
    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 198
    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 199
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 200
    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    .line 206
    iput-object v7, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    .line 207
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 208
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 209
    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 210
    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    .line 215
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    .line 217
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    .line 218
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    .line 222
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 226
    new-instance v2, Lcom/android/server/FMRadioService$1;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v2, Lcom/android/server/FMRadioService$2;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 382
    new-instance v2, Lcom/android/server/FMRadioService$3;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v2, Lcom/android/server/FMRadioService$4;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    .line 410
    new-instance v2, Lcom/android/server/FMRadioService$5;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 423
    new-instance v2, Lcom/android/server/FMRadioService$6;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    .line 656
    new-instance v2, Lcom/android/server/FMRadioService$7;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 702
    new-instance v2, Lcom/android/server/FMRadioService$8;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    .line 723
    new-instance v2, Lcom/android/server/FMRadioService$9;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 816
    new-instance v2, Lcom/android/server/FMRadioService$10;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    .line 844
    new-instance v2, Lcom/android/server/FMRadioService$11;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 865
    new-instance v2, Lcom/android/server/FMRadioService$12;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$12;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 907
    new-instance v2, Lcom/android/server/FMRadioService$13;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$13;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    .line 934
    new-instance v2, Lcom/android/server/FMRadioService$14;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$14;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 978
    new-instance v2, Lcom/android/server/FMRadioService$15;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$15;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSurfaceTouchReceiver:Landroid/content/BroadcastReceiver;

    .line 1004
    new-instance v2, Lcom/android/server/FMRadioService$16;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$16;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    .line 1031
    new-instance v2, Lcom/android/server/FMRadioService$17;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$17;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 2168
    iput-object v7, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 3059
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    .line 3071
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    .line 1306
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    .line 1307
    new-instance v2, Lcom/android/server/FMPlayerNative;

    invoke-direct {v2, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    .line 1308
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    .line 1309
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1318
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1320
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "FMRadio Service"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1324
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1328
    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1329
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1332
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1333
    .local v1, "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1336
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.android.fm.volume_lock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1337
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1339
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.android.fm.volume_unlock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1340
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1343
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_249

    move v2, v3

    :goto_14b
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    .line 1345
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAirPlaneEnabled flag :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1346
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1347
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1349
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1350
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1352
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.media.fmradio.rec_save"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1353
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1355
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSystemListener()V

    .line 1356
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    .line 1358
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSetPropertyListener()V

    .line 1360
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readTuningParameters()V

    .line 1361
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readParametersForCurrentRegion()V

    .line 1363
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "platform : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1366
    iget-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v2, :cond_1e6

    .line 1367
    const-string v2, "exynos4"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    const-string/jumbo v2, "msm8960"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24c

    .line 1368
    :cond_1d5
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1369
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1370
    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1371
    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    .line 1390
    :cond_1e6
    :goto_1e6
    const-string/jumbo v2, "rhea"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string v2, "capri"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string v2, "hawaii"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string v2, "java"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string/jumbo v2, "sc8810"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string/jumbo v2, "sc8825"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string/jumbo v2, "sc6820i"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string/jumbo v2, "scx15"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string/jumbo v2, "u2"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_248

    .line 1393
    :cond_246
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    .line 1395
    :cond_248
    return-void

    :cond_249
    move v2, v4

    .line 1343
    goto/16 :goto_14b

    .line 1372
    :cond_24c
    const-string/jumbo v2, "msm7627a"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_262

    const-string/jumbo v2, "msm7k"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_275

    .line 1373
    :cond_262
    const-string v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1374
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1375
    const-string v2, "1"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1376
    const-string v2, "0"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_1e6

    .line 1377
    :cond_275
    const-string/jumbo v2, "montblanc"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_293

    .line 1378
    const-string v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1379
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1380
    const-string v2, "114,115,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1381
    const-string v2, "172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_1e6

    .line 1382
    :cond_293
    const-string/jumbo v2, "mrvl"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e6

    .line 1383
    const-string v2, "/sys/devices/platform/pxa27x-keypad/power/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1384
    const-string/jumbo v2, "wakeup"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1385
    const-string v2, "enabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1386
    const-string v2, "disabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_1e6
.end method

.method static synthetic access$000(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/FMRadioService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/FMRadioService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/FMRadioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->responedFocusEvent(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/FMRadioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/FMRadioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->clearMessageQueue()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/server/FMRadioService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/server/FMRadioService;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->queueUpdate(IJ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/FMRadioService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/FMRadioService;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700()Z
    .registers 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 58
    sput-boolean p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/FMRadioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/FMRadioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/FMRadioService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/FMRadioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->stopInternetStreaming()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/FMRadioService;ZIZ)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1997
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1998
    const-string v0, "Lock is held"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2000
    :cond_12
    return-void
.end method

.method private checkForWakeLockRelease()V
    .registers 2

    .prologue
    .line 2291
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-nez v0, :cond_14

    .line 2292
    const-string v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2293
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 2295
    :cond_14
    return-void
.end method

.method private clearMessageQueue()V
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    return-void
.end method

.method private closeFile()V
    .registers 3

    .prologue
    .line 2791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_9

    .line 2792
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2798
    :cond_9
    :goto_9
    return-void

    .line 2794
    :catch_a
    move-exception v0

    .line 2796
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method private convertToPrimitives([Ljava/lang/Long;)[J
    .registers 6
    .param p1, "longObArray"    # [Ljava/lang/Long;

    .prologue
    .line 2567
    if-eqz p1, :cond_14

    .line 2568
    array-length v2, p1

    new-array v1, v2, [J

    .line 2569
    .local v1, "longArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 2570
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2569
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2575
    .end local v0    # "i":I
    .end local v1    # "longArray":[J
    :cond_14
    const/4 v1, 0x0

    :cond_15
    return-object v1
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1293
    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return-void
.end method

.method private declared-synchronized offInternal(ZIZ)Z
    .registers 14
    .param p1, "isModeToSet"    # Z
    .param p2, "reasonCode"    # I
    .param p3, "needToRemoveFocusListener"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2013
    monitor-enter p0

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offInternal :: reasonCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2016
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v6, :cond_30

    .line 2018
    if-eqz p3, :cond_2e

    .line 2019
    const-string/jumbo v5, "offInternal :: remove audiofocus "

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2020
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_13a

    .line 2119
    :cond_2e
    :goto_2e
    monitor-exit p0

    return v4

    .line 2027
    :cond_30
    if-nez p3, :cond_13d

    move v6, v4

    :goto_33
    :try_start_33
    sput-boolean v6, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 2028
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2029
    if-eqz p1, :cond_140

    .line 2038
    iget v6, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    if-eq v6, v8, :cond_6c

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 2039
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offInternal :: mReturnBackVolume="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2040
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v7, 0xa

    iget v8, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2042
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    .line 2044
    :cond_6c
    const-string v2, "fmradio_turnon=false"

    .line 2045
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2046
    const-string/jumbo v6, "offInternal Turning off FM radio"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2052
    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :goto_79
    if-nez p3, :cond_152

    move v6, v4

    :goto_7c
    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 2053
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v6}, Lcom/android/server/FMPlayerNative;->off()V

    .line 2055
    const-string/jumbo v6, "off returned from native"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2056
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2057
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2058
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2059
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 2061
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 2063
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    if-nez v6, :cond_c5

    .line 2064
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterMusicCommandRec()V

    .line 2065
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V

    .line 2067
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 2068
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->unregisterMotionListener()V

    .line 2071
    :cond_b1
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v6, :cond_b8

    .line 2072
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAlarmListener()V

    .line 2074
    :cond_b8
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAllSoundOffListener()V

    .line 2075
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2076
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->unregisterSurfaceTouchListener()V

    .line 2078
    :cond_c5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    .line 2080
    if-eqz p3, :cond_d1

    .line 2081
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2083
    :cond_d1
    const/4 v6, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2086
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->sendFMOFFBroadcast()V

    .line 2090
    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v6, :cond_176

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "exynos4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_116

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v7, "msm7627a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_116

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v7, "msm7k"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_116

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v7, "montblanc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_116

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v7, "msm8960"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_176

    .line 2094
    :cond_116
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v7, "input"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 2096
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v7, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_124} :catch_148
    .catchall {:try_start_33 .. :try_end_124} :catchall_171

    if-eq v6, v7, :cond_135

    if-eqz v1, :cond_135

    .line 2098
    :try_start_128
    const-string v6, "com.sec.android.app.fm"

    iget-boolean v7, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v8, "114,115"

    invoke-virtual {v1, v6, v7, v8}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_131
    .catch Ljava/lang/SecurityException; {:try_start_128 .. :try_end_131} :catch_155
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_131} :catch_148
    .catchall {:try_start_128 .. :try_end_131} :catchall_171

    .line 2102
    :goto_131
    :try_start_131
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v6, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_135} :catch_148
    .catchall {:try_start_131 .. :try_end_135} :catchall_171

    .line 2117
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_135
    :goto_135
    :try_start_135
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_13a

    goto/16 :goto_2e

    .line 2013
    :catchall_13a
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_13d
    move v6, v5

    .line 2027
    goto/16 :goto_33

    .line 2049
    :cond_140
    :try_start_140
    const-string/jumbo v6, "offInternal NOT Turning off FM radio"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_146} :catch_148
    .catchall {:try_start_140 .. :try_end_146} :catchall_171

    goto/16 :goto_79

    .line 2113
    :catch_148
    move-exception v0

    .line 2114
    .local v0, "e":Ljava/lang/Exception;
    :try_start_149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14c
    .catchall {:try_start_149 .. :try_end_14c} :catchall_171

    .line 2117
    :try_start_14c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_13a

    move v4, v5

    .line 2119
    goto/16 :goto_2e

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_152
    move v6, v5

    .line 2052
    goto/16 :goto_7c

    .line 2099
    .restart local v1    # "inputManager":Landroid/hardware/input/InputManager;
    :catch_155
    move-exception v3

    .line 2100
    .local v3, "se":Ljava/lang/SecurityException;
    :try_start_156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_170} :catch_148
    .catchall {:try_start_156 .. :try_end_170} :catchall_171

    goto :goto_131

    .line 2117
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v3    # "se":Ljava/lang/SecurityException;
    :catchall_171
    move-exception v4

    :try_start_172
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    throw v4
    :try_end_176
    .catchall {:try_start_172 .. :try_end_176} :catchall_13a

    .line 2104
    :cond_176
    :try_start_176
    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v6, :cond_135

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v7, "mrvl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_135

    .line 2106
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    .line 2107
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v6}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    .line 2108
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_190} :catch_148
    .catchall {:try_start_176 .. :try_end_190} :catchall_171

    goto :goto_135
.end method

.method private declared-synchronized on(Z)Z
    .registers 14
    .param p1, "isAudioFocusNeeded"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1715
    monitor-enter p0

    :try_start_4
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_90

    if-nez v8, :cond_a

    .line 1869
    :cond_8
    :goto_8
    monitor-exit p0

    return v6

    .line 1719
    :cond_a
    :try_start_a
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    if-nez v8, :cond_8

    .line 1722
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    if-nez v8, :cond_8

    .line 1727
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    .line 1729
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    if-nez v8, :cond_8

    .line 1733
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eq v8, v7, :cond_8

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eq v8, v9, :cond_8

    .line 1740
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v8, :cond_8

    .line 1744
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_90

    if-eqz v8, :cond_33

    move v6, v7

    .line 1745
    goto :goto_8

    .line 1747
    :cond_33
    :try_start_33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1748
    .local v0, "caller":I
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1749
    .local v4, "pkgName":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v3, v4, v8

    .line 1752
    .local v3, "mPackageName":Ljava/lang/String;
    if-nez p1, :cond_4c

    sget-boolean v8, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-nez v8, :cond_93

    .line 1753
    :cond_4c
    const-string v8, "AudioFocusListener registered"

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1756
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1763
    :goto_5b
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1764
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v8}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_17a

    .line 1765
    const-string/jumbo v8, "on returned from native"

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1767
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1768
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1771
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-nez v8, :cond_99

    .line 1772
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_80} :catch_81
    .catchall {:try_start_33 .. :try_end_80} :catchall_90

    goto :goto_8

    .line 1863
    .end local v0    # "caller":I
    .end local v3    # "mPackageName":Ljava/lang/String;
    .end local v4    # "pkgName":[Ljava/lang/String;
    :catch_81
    move-exception v1

    .line 1864
    .local v1, "e":Ljava/lang/Exception;
    :try_start_82
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1865
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1866
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 1867
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_90

    goto/16 :goto_8

    .line 1715
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_90
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1760
    .restart local v0    # "caller":I
    .restart local v3    # "mPackageName":Ljava/lang/String;
    .restart local v4    # "pkgName":[Ljava/lang/String;
    :cond_93
    :try_start_93
    const-string v8, "AudioFocusListener : skip the requestAudioFocus"

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5b

    .line 1786
    :cond_99
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1806
    iget v8, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v9, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v10, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    .line 1811
    iget v8, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setBand(I)V

    .line 1812
    iget v8, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setChannelSpacing(I)V

    .line 1813
    iget v8, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    int-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    .line 1815
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMusicCommandRec()V

    .line 1817
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    .line 1818
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    .line 1820
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 1821
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->registerMotionListener()V

    .line 1824
    :cond_cf
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.android.backgroung.playing"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1826
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1830
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->registerSurfaceTouchListener()V

    .line 1834
    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v8, :cond_15f

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v9, "exynos4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11e

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v9, "msm7627a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11e

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v9, "msm7k"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11e

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v9, "montblanc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11e

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v9, "msm8960"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15f

    .line 1839
    :cond_11e
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v9, "input"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 1841
    .local v2, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v9, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_12c} :catch_81
    .catchall {:try_start_93 .. :try_end_12c} :catchall_90

    if-eq v8, v9, :cond_13d

    if-eqz v2, :cond_13d

    .line 1843
    :try_start_130
    const-string v8, "com.sec.android.app.fm"

    iget-boolean v9, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v10, "114,115"

    invoke-virtual {v2, v8, v9, v10}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_139
    .catch Ljava/lang/SecurityException; {:try_start_130 .. :try_end_139} :catch_143
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_139} :catch_81
    .catchall {:try_start_130 .. :try_end_139} :catchall_90

    .line 1847
    :goto_139
    :try_start_139
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v8, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    .line 1855
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_13d
    :goto_13d
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    move v6, v7

    .line 1857
    goto/16 :goto_8

    .line 1844
    .restart local v2    # "inputManager":Landroid/hardware/input/InputManager;
    :catch_143
    move-exception v5

    .line 1845
    .local v5, "se":Ljava/lang/SecurityException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_139

    .line 1849
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_15f
    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v8, :cond_13d

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v9, "mrvl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13d

    .line 1850
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    .line 1851
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v8}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    .line 1852
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V

    goto :goto_13d

    .line 1860
    :cond_17a
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_17d} :catch_81
    .catchall {:try_start_139 .. :try_end_17d} :catchall_90

    goto/16 :goto_8
.end method

.method private openFile()V
    .registers 5

    .prologue
    .line 2770
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2772
    .local v1, "fileFMRadio":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2774
    :try_start_20
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2b

    .line 2782
    :cond_23
    :goto_23
    :try_start_23
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2a} :catch_30

    .line 2787
    :goto_2a
    return-void

    .line 2775
    :catch_2b
    move-exception v0

    .line 2777
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23

    .line 2783
    .end local v0    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v0

    .line 2785
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2a
.end method

.method private queueUpdate(IJ)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1274
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_36

    .line 1275
    const-string/jumbo v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1278
    :cond_36
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1279
    return-void
.end method

.method private readParametersForCurrentRegion()V
    .registers 6

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1219
    :try_start_3
    const-string v1, "87500_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1221
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1232
    :goto_10
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    sparse-switch v1, :sswitch_data_5e

    .line 1242
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1248
    :goto_19
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DECONSTANT:I

    sparse-switch v1, :sswitch_data_68

    .line 1258
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    .line 1270
    :goto_21
    return-void

    .line 1222
    :cond_22
    const-string v1, "76000_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1224
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_30

    goto :goto_10

    .line 1263
    :catch_30
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1266
    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1267
    iput v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1268
    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_21

    .line 1225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    :try_start_3b
    const-string v1, "76000_90000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1227
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_10

    .line 1229
    :cond_49
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_10

    .line 1234
    :sswitch_4d
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_19

    .line 1238
    :sswitch_51
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_19

    .line 1250
    :sswitch_56
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_21

    .line 1254
    :sswitch_5a
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5d} :catch_30

    goto :goto_21

    .line 1232
    :sswitch_data_5e
    .sparse-switch
        0x32 -> :sswitch_4d
        0x64 -> :sswitch_51
    .end sparse-switch

    .line 1248
    :sswitch_data_68
    .sparse-switch
        0x32 -> :sswitch_56
        0x4b -> :sswitch_5a
    .end sparse-switch
.end method

.method private readTuningParameters()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1065
    const-string v1, ""

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1215
    :goto_d
    return-void

    .line 1123
    :cond_e
    sget-object v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "Local_Tunning_vals":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuning value size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1126
    array-length v1, v0

    packed-switch v1, :pswitch_data_d8

    .line 1210
    :pswitch_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuning value size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_d

    .line 1163
    :pswitch_49
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1164
    iput v3, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1165
    iput v3, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_d

    .line 1171
    :pswitch_56
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1172
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1173
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_d

    .line 1178
    :pswitch_6f
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1179
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1180
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_d

    .line 1187
    :pswitch_88
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1188
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1189
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_d

    .line 1198
    :pswitch_a2
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1199
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1200
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1203
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1204
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1205
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    goto/16 :goto_d

    .line 1126
    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_49
        :pswitch_31
        :pswitch_56
        :pswitch_6f
        :pswitch_88
        :pswitch_a2
    .end packed-switch
.end method

.method private registerAlarmListener()V
    .registers 4

    .prologue
    .line 1053
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1054
    .local v0, "intentAlarmFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1055
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1056
    const-string/jumbo v1, "registering Alarm play listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method private registerAllSoundOffListener()V
    .registers 4

    .prologue
    .line 1020
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1021
    .local v0, "intentAllSoundOffFilter":Landroid/content/IntentFilter;
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1023
    const-string/jumbo v1, "registering AllSoundOff listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method private registerBatteryListener()V
    .registers 4

    .prologue
    .line 1398
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1401
    .local v0, "intentFilterBattery":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1402
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1403
    const-string/jumbo v1, "registering low battery listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1404
    return-void
.end method

.method private registerMusicCommandRec()V
    .registers 4

    .prologue
    .line 1875
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1876
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1877
    const-string/jumbo v1, "music command reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1884
    return-void
.end method

.method private registerSetPropertyListener()V
    .registers 4

    .prologue
    .line 1428
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1429
    .local v0, "intentFilterSetProperty":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.set_property"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1430
    const-string v1, "com.sec.android.app.fm.set_volume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1431
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1432
    const-string/jumbo v1, "registering set property listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1433
    return-void
.end method

.method private registerSystemListener()V
    .registers 4

    .prologue
    .line 1412
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1413
    .local v0, "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1414
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1416
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1417
    .restart local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1418
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1419
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1420
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1421
    return-void
.end method

.method private registerTelephonyListener()V
    .registers 6

    .prologue
    .line 1895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1897
    .local v0, "id":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_17

    .line 1903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1910
    const-string/jumbo v2, "registering telephony listener.."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1911
    return-void

    .line 1903
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1989
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1990
    const-string v0, "Lock is released"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1992
    :cond_12
    return-void
.end method

.method private remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 2153
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 2166
    :cond_c
    :goto_c
    return-void

    .line 2156
    :cond_d
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    monitor-enter v4

    .line 2157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    :try_start_11
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_4f

    .line 2158
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2159
    .local v2, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v3, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_4c

    .line 2160
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2161
    .local v0, "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2162
    monitor-exit v4

    goto :goto_c

    .line 2165
    .end local v0    # "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_49

    throw v3

    .line 2157
    .restart local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2165
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_4f
    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_49

    goto :goto_c
.end method

.method private respondAudioFocusChangeForDns(I)V
    .registers 5
    .param p1, "focusChange"    # I

    .prologue
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "respondAudioFocusChangeForDns()-focusChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 491
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v1, :cond_28

    .line 509
    :goto_27
    return-void

    .line 493
    :cond_28
    const/4 v0, 0x0

    .line 494
    .local v0, "action":Ljava/lang/String;
    packed-switch p1, :pswitch_data_40

    .line 508
    :goto_2c
    :pswitch_2c
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_27

    .line 496
    :pswitch_37
    const-string v0, "com.sec.android.app.dns.action.stop_internet_stream"

    .line 497
    goto :goto_2c

    .line 500
    :pswitch_3a
    const-string v0, "com.sec.android.app.dns.action.pause_internet_stream"

    .line 501
    goto :goto_2c

    .line 503
    :pswitch_3d
    const-string v0, "com.sec.android.app.dns.action.resume_internet_stream"

    .line 504
    goto :goto_2c

    .line 494
    :pswitch_data_40
    .packed-switch -0x3
        :pswitch_3a
        :pswitch_3a
        :pswitch_37
        :pswitch_2c
        :pswitch_3d
    .end packed-switch
.end method

.method private responedFocusEvent(I)V
    .registers 10
    .param p1, "focusEvent"    # I

    .prologue
    const/16 v7, 0x11

    const/16 v4, 0xb

    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 513
    packed-switch p1, :pswitch_data_1b4

    .line 654
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 516
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 517
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_2e

    .line 518
    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 523
    :goto_1a
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_35

    .line 524
    const-string v1, "AUDIOFOCUS_LOSS - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 525
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 531
    :goto_27
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 532
    invoke-direct {p0, v3, v4, v3}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    goto :goto_b

    .line 520
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1a

    .line 529
    :cond_35
    const-string v1, "AUDIOFOCUS_LOSS - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_27

    .line 533
    :cond_3b
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_b

    .line 534
    const-string v1, "aditya"

    const-string/jumbo v2, "still in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 542
    :pswitch_52
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 543
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_72

    .line 544
    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 556
    :goto_60
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_89

    .line 557
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    if-eqz v1, :cond_79

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    if-eqz v1, :cond_79

    .line 558
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O - call Ringing"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 546
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_60

    .line 561
    :cond_79
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 563
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 564
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    goto :goto_b

    .line 567
    :cond_89
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 569
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_b

    .line 581
    :pswitch_96
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 582
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_a7

    .line 583
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 585
    :cond_a7
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 586
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_bc

    .line 587
    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 591
    :goto_b4
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 592
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_b

    .line 589
    :cond_bc
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_b4

    .line 599
    :pswitch_c3
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-nez v1, :cond_b

    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    if-nez v1, :cond_b

    .line 600
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 601
    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 616
    sget-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-eqz v1, :cond_1a1

    .line 617
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slowly increase the volume till :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 619
    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_198

    .line 620
    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    .line 621
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 622
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 629
    :goto_148
    sput-boolean v5, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 638
    :goto_14a
    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_157

    .line 639
    const-wide/32 v1, 0x155cc

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 641
    :cond_157
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 642
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    long-to-float v3, v3

    const/high16 v4, 0x447a0000

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    const-wide/16 v1, -0x2

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto/16 :goto_b

    .line 625
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_198
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    long-to-int v2, v2

    invoke-virtual {v1, v6, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_148

    .line 631
    :cond_1a1
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v6, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_14a

    .line 648
    :cond_1ad
    const-string v1, "Not able to resume FM player"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 513
    :pswitch_data_1b4
    .packed-switch -0x3
        :pswitch_96
        :pswitch_52
        :pswitch_c
        :pswitch_b
        :pswitch_c3
    .end packed-switch
.end method

.method private sendFMOFFBroadcast()V
    .registers 3

    .prologue
    .line 2125
    const-string v1, "Sending broadcast FM is in OFF state"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2127
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2128
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2129
    return-void
.end method

.method private sendStopMusicCommandBroadcast()V
    .registers 4

    .prologue
    .line 1887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1888
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    const-string/jumbo v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1889
    const-string v1, "from"

    const-string v2, "com.sec.android.app.fm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1890
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1891
    const-string/jumbo v1, "music command stop sent .."

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1892
    return-void
.end method

.method private setSignalSetting(III)V
    .registers 5
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "cnt"    # I

    .prologue
    .line 2844
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_5

    .line 2850
    :goto_4
    return-void

    .line 2847
    :cond_5
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRSSI_th(I)V

    .line 2848
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNative;->setSNR_th(I)V

    .line 2849
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNative;->setCnt_th(I)V

    goto :goto_4
.end method

.method private stopInternetStreaming()V
    .registers 3

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopInternetStreaming() - streamingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method private unRegisterBatteryListener()V
    .registers 3

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1408
    const-string/jumbo v0, "unregistering low battery listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1409
    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .registers 3

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2149
    const-string/jumbo v0, "music command reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2150
    return-void
.end method

.method private unRegisterSetPropertyListener()V
    .registers 3

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1437
    const-string/jumbo v0, "unregistering set property listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1438
    return-void
.end method

.method private unRegisterTelephonyListener()V
    .registers 6

    .prologue
    .line 1914
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1916
    .local v0, "id":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_16

    .line 1922
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1926
    const-string/jumbo v2, "unregistering telephony listener"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1927
    return-void

    .line 1922
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unregisterAlarmListener()V
    .registers 3

    .prologue
    .line 1060
    const-string v0, "Unregistering Alarm play listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1062
    return-void
.end method

.method private unregisterAllSoundOffListener()V
    .registers 3

    .prologue
    .line 1027
    const-string v0, "Unregistering AllSoundOff listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1029
    return-void
.end method

.method private unregisterSystemListener()V
    .registers 3

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1425
    return-void
.end method

.method private writeFile(Z)V
    .registers 7
    .param p1, "isFmRadioOn"    # Z

    .prologue
    .line 2801
    if-eqz p1, :cond_44

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 2803
    .local v2, "value":Ljava/lang/String;
    :goto_4
    sget-boolean v3, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v3, :cond_1f

    .line 2804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2807
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_43

    .line 2808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2809
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2810
    .local v0, "bvalue":[B
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_43} :catch_47

    .line 2815
    .end local v0    # "bvalue":[B
    :cond_43
    :goto_43
    return-void

    .line 2801
    .end local v2    # "value":Ljava/lang/String;
    :cond_44
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_4

    .line 2812
    .restart local v2    # "value":Ljava/lang/String;
    :catch_47
    move-exception v1

    .line 2813
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_43
.end method


# virtual methods
.method public SetIsOn(Z)V
    .registers 2
    .param p1, "IsOn"    # Z

    .prologue
    .line 2007
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2008
    return-void
.end method

.method public SkipTuning_Value()V
    .registers 3

    .prologue
    .line 2615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 2616
    const-string v0, "FMRadioService"

    const-string v1, "SkipTuning_Value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    return-void
.end method

.method public cancelAFSwitching()V
    .registers 2

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelAFSwitching()V

    .line 2316
    return-void
.end method

.method public cancelScan()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2199
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_1f

    .line 2200
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2201
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    .line 2203
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    .line 2204
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_20

    .line 2206
    :cond_1e
    const/4 v1, 0x1

    .line 2215
    :cond_1f
    :goto_1f
    return v1

    .line 2212
    :catch_20
    move-exception v0

    .line 2213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f
.end method

.method public cancelSeek()V
    .registers 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    .line 1575
    return-void
.end method

.method public disableAF()V
    .registers 2

    .prologue
    .line 2285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2286
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableAF()V

    .line 2287
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2288
    return-void
.end method

.method public disableDNS()V
    .registers 2

    .prologue
    .line 2265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2266
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableDNS()V

    .line 2267
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2268
    return-void
.end method

.method public disableRDS()V
    .registers 3

    .prologue
    .line 2248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2249
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableRDS()V

    .line 2250
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2251
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2252
    return-void
.end method

.method public enableAF()V
    .registers 2

    .prologue
    .line 2275
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-eqz v0, :cond_a

    .line 2276
    const-string v0, "AF is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2282
    :goto_9
    return-void

    .line 2279
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableAF()V

    .line 2280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2281
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_9
.end method

.method public enableDNS()V
    .registers 2

    .prologue
    .line 2255
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-eqz v0, :cond_a

    .line 2256
    const-string v0, "DNS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2262
    :goto_9
    return-void

    .line 2259
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableDNS()V

    .line 2260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2261
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_9
.end method

.method public enableRDS()V
    .registers 3

    .prologue
    .line 2237
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_a

    .line 2238
    const-string v0, "RDS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2245
    :goto_9
    return-void

    .line 2241
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableRDS()V

    .line 2242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2243
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2244
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_9
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2820
    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    .line 2822
    :try_start_3
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2823
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2826
    :cond_14
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterSystemListener()V

    .line 2827
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterSetPropertyListener()V

    .line 2829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    .line 2832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 2833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    .line 2834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    .line 2836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    :try_end_2f
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_2f} :catch_30

    .line 2841
    :goto_2f
    return-void

    .line 2838
    :catch_30
    move-exception v0

    goto :goto_2f
.end method

.method public getAFRMSSISamples()I
    .registers 2

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSISamples()I

    move-result v0

    return v0
.end method

.method public getAFRMSSIThreshold()I
    .registers 2

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method public getAFValid_th()I
    .registers 2

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFValid_th()I

    move-result v0

    return v0
.end method

.method public getAF_th()I
    .registers 2

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAF_th()I

    move-result v0

    return v0
.end method

.method public getCFOTh12()I
    .registers 2

    .prologue
    .line 2723
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCFOTh12()I

    move-result v0

    return v0
.end method

.method public getCnt_th()I
    .registers 2

    .prologue
    .line 2628
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method public getCnt_th_2()I
    .registers 2

    .prologue
    .line 2640
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentChannel()J
    .registers 3

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .registers 3

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSNR()J
    .registers 3

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGoodChannelRMSSIThreshold()I
    .registers 2

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method public getLastScanResult()[J
    .registers 4

    .prologue
    .line 1514
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    .line 1516
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 1517
    .local v0, "arryL":[Ljava/lang/Long;
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    .line 1520
    .end local v0    # "arryL":[Ljava/lang/Long;
    :goto_13
    return-object v1

    .line 1519
    :cond_14
    const-string v1, "getLastScanResult - mScanChannelList null"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1520
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getMaxVolume()J
    .registers 3

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffChannelThreshold()I
    .registers 2

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOffChannelThreshold()I

    move-result v0

    return v0
.end method

.method public getOnChannelThreshold()I
    .registers 2

    .prologue
    .line 2699
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOnChannelThreshold()I

    move-result v0

    return v0
.end method

.method public getRMSSIFirstStage()I
    .registers 2

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getRMSSIFirstStage()I

    move-result v0

    return v0
.end method

.method public getRSSI_th()I
    .registers 2

    .prologue
    .line 2620
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method public getRSSI_th_2()I
    .registers 2

    .prologue
    .line 2632
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return v0
.end method

.method public getSINRFirstStage()I
    .registers 2

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRFirstStage()I

    move-result v0

    return v0
.end method

.method public getSINRSamples()I
    .registers 2

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRSamples()I

    move-result v0

    return v0
.end method

.method public getSINRThreshold()I
    .registers 2

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRThreshold()I

    move-result v0

    return v0
.end method

.method public getSNR_th()I
    .registers 2

    .prologue
    .line 2624
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method public getSNR_th_2()I
    .registers 2

    .prologue
    .line 2636
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return v0
.end method

.method public getSearchAlgoType()I
    .registers 2

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method public getSoftMuteMode()Z
    .registers 2

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSoftMuteMode()Z

    move-result v0

    return v0
.end method

.method public getVolume()J
    .registers 3

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAFEnable()Z
    .registers 2

    .prologue
    .line 2311
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    return v0
.end method

.method public isAirPlaneMode()Z
    .registers 2

    .prologue
    .line 1619
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method public isBatteryLow()Z
    .registers 2

    .prologue
    .line 1595
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return v0
.end method

.method public isBusy()I
    .registers 2

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_6

    .line 1580
    const/4 v0, 0x1

    .line 1582
    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public isDNSEnable()Z
    .registers 2

    .prologue
    .line 2271
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .registers 2

    .prologue
    .line 1586
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOn()Z
    .registers 2

    .prologue
    .line 2003
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method public isRDSEnable()Z
    .registers 2

    .prologue
    .line 2307
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    return v0
.end method

.method public isScanning()Z
    .registers 2

    .prologue
    .line 2179
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method public isSeeking()Z
    .registers 2

    .prologue
    .line 2184
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method public isTvOutPlugged()Z
    .registers 2

    .prologue
    .line 1590
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method public mute(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1499
    if-eqz p1, :cond_29

    .line 1500
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOn()V

    .line 1503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 1511
    :goto_28
    return-void

    .line 1505
    :cond_29
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOff()V

    .line 1506
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_28
.end method

.method public notifyEvent(ILjava/lang/Object;)V
    .registers 24
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2350
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v1, :cond_25

    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_25

    .line 2359
    const-string v14, "fmradio_turnon=true"

    .line 2360
    .local v14, "keyValuePairs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v14}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2361
    const-string/jumbo v1, "notifyEvent Turning on FM radio"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2365
    if-eqz p2, :cond_25

    move-object/from16 v1, p2

    .line 2366
    check-cast v1, Ljava/lang/Long;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService;->sendFMStatusBroadcast(Ljava/lang/Long;)V

    .line 2369
    .end local v14    # "keyValuePairs":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v1, :cond_35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_36

    .line 2564
    :cond_35
    :goto_35
    return-void

    .line 2373
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2374
    :try_start_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v19

    .line 2376
    .local v19, "size":I
    add-int/lit8 v13, v19, -0x1

    .local v13, "i":I
    :goto_65
    if-ltz v13, :cond_651

    .line 2377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_3d .. :try_end_7d} :catchall_120

    .line 2379
    packed-switch p1, :pswitch_data_654

    .line 2376
    :goto_80
    add-int/lit8 v13, v13, -0x1

    goto :goto_65

    .line 2382
    :pswitch_83
    :try_start_83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onOn()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_c3} :catch_c4
    .catchall {:try_start_83 .. :try_end_c3} :catchall_120

    goto :goto_80

    .line 2554
    :catch_c4
    move-exception v9

    .line 2555
    .local v9, "e":Ljava/lang/Exception;
    :try_start_c5
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2556
    const-string v2, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "we loose "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " listener--ignore it :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    .line 2560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove done go for next i\'s value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2563
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "i":I
    .end local v19    # "size":I
    :catchall_120
    move-exception v1

    monitor-exit v20
    :try_end_122
    .catchall {:try_start_c5 .. :try_end_122} :catchall_120

    throw v1

    .line 2388
    .restart local v13    # "i":I
    .restart local v19    # "size":I
    :pswitch_123
    :try_start_123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2390
    const/16 v17, -0x1

    .line 2391
    .local v17, "reasonCode":I
    if-eqz p2, :cond_161

    .line 2392
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 2393
    :cond_161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move/from16 v0, v17

    invoke-interface {v1, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onOff(I)V

    goto/16 :goto_80

    .line 2398
    .end local v17    # "reasonCode":I
    :pswitch_174
    const-wide/16 v10, 0x0

    .line 2399
    .local v10, "freq":J
    if-eqz p2, :cond_181

    .line 2400
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2402
    :cond_181
    sget-boolean v1, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v1, :cond_1c0

    .line 2403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : with freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2406
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v10, v11}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V

    goto/16 :goto_80

    .line 2410
    .end local v10    # "freq":J
    :pswitch_1d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    goto/16 :goto_80

    .line 2419
    :pswitch_213
    if-eqz p2, :cond_271

    .line 2420
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v1, v0

    move-object v0, v1

    check-cast v0, [Ljava/lang/Long;

    move-object v8, v0

    .line 2421
    .local v8, "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v12

    .line 2422
    .local v12, "freqArry":[J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : with data array:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v12}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    goto/16 :goto_80

    .line 2427
    .end local v8    # "Ifreq":[Ljava/lang/Long;
    .end local v12    # "freqArry":[J
    :cond_271
    const-string/jumbo v1, "notifying : EVENT_SCAN_STOPPED : data is null !!!"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2432
    :pswitch_279
    if-eqz p2, :cond_2d7

    .line 2433
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v1, v0

    move-object v0, v1

    check-cast v0, [Ljava/lang/Long;

    move-object v8, v0

    .line 2434
    .restart local v8    # "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v12

    .line 2435
    .restart local v12    # "freqArry":[J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : with data array:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v12}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    goto/16 :goto_80

    .line 2440
    .end local v8    # "Ifreq":[Ljava/lang/Long;
    .end local v12    # "freqArry":[J
    :cond_2d7
    const-string/jumbo v1, "notifying : EVENT_SCAN_FINISHED : data is null !!!"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2445
    :pswitch_2df
    if-eqz p2, :cond_33a

    .line 2446
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2447
    .restart local v10    # "freq":J
    sget-boolean v1, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v1, :cond_329

    .line 2448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : with data array:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2451
    :cond_329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v10, v11}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onTune(J)V

    goto/16 :goto_80

    .line 2453
    .end local v10    # "freq":J
    :cond_33a
    const-string/jumbo v1, "notifying : EVENT_TUNE : data is null !!!"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2458
    :pswitch_342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->earPhoneConnected()V

    goto/16 :goto_80

    .line 2464
    :pswitch_384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->earPhoneDisconnected()V

    goto/16 :goto_80

    .line 2470
    :pswitch_3c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying : EVENT_RDS_EVENT : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2472
    if-eqz p2, :cond_41c

    .line 2473
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RDSData;

    move-object/from16 v16, v0

    .line 2474
    .local v16, "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/android/server/FMPlayerNative$RDSData;->mFreq:J

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/FMPlayerNative$RDSData;->mChannelName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/FMPlayerNative$RDSData;->mRadioText:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2477
    .end local v16    # "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    :cond_41c
    const-string/jumbo v1, "notifying : EVENT_RDS_EVENT : data is null !!!"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2482
    :pswitch_424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_RTPLUS_EVENT to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2484
    if-eqz p2, :cond_486

    .line 2485
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RTPlusData;

    move-object/from16 v18, v0

    .line 2486
    .local v18, "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType1:I

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos1:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen1:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType2:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos2:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen2:I

    invoke-interface/range {v1 .. v7}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRTPlusReceived(IIIIII)V

    goto/16 :goto_80

    .line 2491
    .end local v18    # "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    :cond_486
    const-string/jumbo v1, "notifying : EVENT_RTPLUS_EVENT : data is null !!!"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2496
    :pswitch_48e
    if-eqz p2, :cond_4aa

    .line 2497
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$PIECCData;

    move-object v15, v0

    .line 2498
    .local v15, "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    iget v2, v15, Lcom/android/server/FMPlayerNative$PIECCData;->mPI:I

    iget v3, v15, Lcom/android/server/FMPlayerNative$PIECCData;->mECC:I

    invoke-interface {v1, v2, v3}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onPIECCReceived(II)V

    goto/16 :goto_80

    .line 2506
    .end local v15    # "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    :cond_4aa
    const-string/jumbo v1, "notifying : EVENT_PIECC_EVENT : data is null !!!"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2511
    :pswitch_4b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSEnabled()V

    goto/16 :goto_80

    .line 2517
    :pswitch_4f4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSDisabled()V

    goto/16 :goto_80

    .line 2523
    :pswitch_536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onAFStarted()V

    goto/16 :goto_80

    .line 2529
    :pswitch_578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2531
    if-eqz p2, :cond_5c5

    .line 2532
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2533
    .restart local v10    # "freq":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v10, v11}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onAFReceived(J)V

    goto/16 :goto_80

    .line 2535
    .end local v10    # "freq":J
    :cond_5c5
    const-string/jumbo v1, "notifying : EVENT_AF_RECEIVED : data is null !!!"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2540
    :pswitch_5cd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_VOLUME_LOCK to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->volumeLock()V

    goto/16 :goto_80

    .line 2546
    :pswitch_60f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifying :EVENT_REC_FINISH to : listener -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v1, v1, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->recFinish()V
    :try_end_64f
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_64f} :catch_c4
    .catchall {:try_start_123 .. :try_end_64f} :catchall_120

    goto/16 :goto_80

    .line 2563
    :cond_651
    :try_start_651
    monitor-exit v20
    :try_end_652
    .catchall {:try_start_651 .. :try_end_652} :catchall_120

    goto/16 :goto_35

    .line 2379
    :pswitch_data_654
    .packed-switch 0x1
        :pswitch_174
        :pswitch_1d1
        :pswitch_279
        :pswitch_213
        :pswitch_83
        :pswitch_123
        :pswitch_2df
        :pswitch_342
        :pswitch_384
        :pswitch_3c6
        :pswitch_4b2
        :pswitch_4f4
        :pswitch_536
        :pswitch_578
        :pswitch_5cd
        :pswitch_424
        :pswitch_60f
        :pswitch_48e
    .end packed-switch
.end method

.method public off()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2144
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method public on()Z
    .registers 2

    .prologue
    .line 1710
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized on_in_testmode()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1653
    monitor-enter p0

    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5a

    if-eqz v4, :cond_9

    .line 1706
    :cond_7
    :goto_7
    monitor-exit p0

    return v2

    .line 1656
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eq v4, v3, :cond_7

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 1663
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_5a

    if-eqz v4, :cond_20

    move v2, v3

    .line 1664
    goto :goto_7

    .line 1671
    :cond_20
    :try_start_20
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4e

    .line 1674
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    .line 1675
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1676
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    .line 1677
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1679
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1689
    const-string v1, "fmradio_turnon=true"

    .line 1690
    .local v1, "keyValuePairs":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1691
    const-string/jumbo v4, "on_in_testmode Turning on FM radio"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move v2, v3

    .line 1696
    goto :goto_7

    .line 1699
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_51} :catch_52
    .catchall {:try_start_20 .. :try_end_51} :catchall_5a

    goto :goto_7

    .line 1702
    :catch_52
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/Exception;
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1704
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_5a

    goto :goto_7

    .line 1653
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method registerMotionListener()V
    .registers 5

    .prologue
    .line 956
    const-string v0, "[FMRadioService] registerMotionListener "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 958
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    monitor-enter v1

    .line 959
    :try_start_8
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_19

    .line 960
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "motion_recognition"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 963
    :cond_19
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 965
    monitor-exit v1

    .line 966
    return-void

    .line 965
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v0
.end method

.method registerSurfaceTouchListener()V
    .registers 4

    .prologue
    .line 991
    const-string/jumbo v1, "register SurfaceTouchListener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 992
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 993
    .local v0, "intentSurfaceFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSurfaceTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 996
    return-void
.end method

.method public removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1642
    if-nez p1, :cond_19

    .line 1645
    :goto_18
    return-void

    .line 1644
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    goto :goto_18
.end method

.method public scan()V
    .registers 2

    .prologue
    .line 2171
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_5

    .line 2176
    :goto_4
    return-void

    .line 2173
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2174
    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 2175
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method public searchAll()J
    .registers 3

    .prologue
    .line 2226
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_b

    .line 2227
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchAll()J

    move-result-wide v0

    .line 2228
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public searchDown()J
    .registers 3

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchDown()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchUp()J
    .registers 3

    .prologue
    .line 2219
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_b

    .line 2220
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchUp()J

    move-result-wide v0

    .line 2221
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public seekDown()J
    .registers 5

    .prologue
    .line 1549
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1553
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "fm_radio_mute=1"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1559
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->seekDown()J

    move-result-wide v0

    .line 1562
    .local v0, "freq":J
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-lez v2, :cond_21

    .line 1564
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "fm_radio_mute=0"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1567
    :cond_21
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1568
    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1569
    return-wide v0
.end method

.method public seekUp()J
    .registers 5

    .prologue
    .line 1525
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1529
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "fm_radio_mute=1"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1535
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->seekUp()J

    move-result-wide v0

    .line 1538
    .local v0, "freq":J
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-lez v2, :cond_21

    .line 1540
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "fm_radio_mute=0"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1543
    :cond_21
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1544
    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1545
    return-wide v0
.end method

.method sendFMStatusBroadcast(Ljava/lang/Long;)V
    .registers 7
    .param p1, "freq"    # Ljava/lang/Long;

    .prologue
    .line 2132
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000

    div-float v0, v2, v3

    .line 2133
    .local v0, "currentFreq":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_10

    .line 2134
    const/high16 v0, 0x42af0000

    .line 2135
    :cond_10
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_2a

    .line 2136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending broadcast tune currentFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2137
    :cond_2a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player_lock.tune.channel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2138
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2139
    const-string v2, "freq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2140
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2141
    return-void
.end method

.method public setAFRMSSISamples(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSISamples(I)V

    .line 2752
    return-void
.end method

.method public setAFRMSSIThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSIThreshold(I)V

    .line 2744
    return-void
.end method

.method public setAFValid_th(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFValid_th(I)V

    .line 2654
    return-void
.end method

.method public setAF_th(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAF_th(I)V

    .line 2646
    return-void
.end method

.method public setBand(I)V
    .registers 3
    .param p1, "band"    # I

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBand(I)V

    .line 2299
    iput p1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 2300
    return-void
.end method

.method public setCFOTh12(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setCFOTh12(I)V

    .line 2720
    return-void
.end method

.method public setChannelSpacing(I)V
    .registers 3
    .param p1, "spacing"    # I

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setChannelSpacing(I)V

    .line 2304
    return-void
.end method

.method public setCnt_th(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2599
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 2600
    return-void
.end method

.method public setCnt_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2611
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 2612
    return-void
.end method

.method public setDEConstant(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setDEConstant(J)V

    .line 2580
    return-void
.end method

.method public setFMIntenna(Z)V
    .registers 3
    .param p1, "setFMIntenna"    # Z

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setFMIntenna(Z)V

    .line 2663
    return-void
.end method

.method public setFeatureWaitPidDuringScanning(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 3075
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    .line 3076
    return-void
.end method

.method public setGoodChannelRMSSIThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setGoodChannelRMSSIThreshold(I)V

    .line 2760
    return-void
.end method

.method public setInternetStreamingMode(Z)V
    .registers 4
    .param p1, "mode"    # Z

    .prologue
    .line 3062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInternetStreamingMode :: mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3063
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    .line 3064
    if-eqz p1, :cond_21

    .line 3065
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 3069
    :goto_20
    return-void

    .line 3067
    :cond_21
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_20
.end method

.method public setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService] setListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1628
    if-eqz p1, :cond_50

    .line 1629
    monitor-enter p1

    .line 1630
    :try_start_19
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-nez v1, :cond_24

    .line 1631
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 1633
    :cond_24
    new-instance v0, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    .line 1634
    .local v0, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no of listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1636
    monitor-exit p1

    .line 1638
    .end local v0    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_50
    return-void

    .line 1636
    :catchall_51
    move-exception v1

    monitor-exit p1
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public setMono()V
    .registers 2

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setMono()V

    .line 2324
    return-void
.end method

.method public setOffChannelThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOffChannelThreshold(I)V

    .line 2704
    return-void
.end method

.method public setOnChannelThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOnChannelThreshold(I)V

    .line 2696
    return-void
.end method

.method public setRMSSIFirstStage(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRMSSIFirstStage(I)V

    .line 2728
    return-void
.end method

.method public setRSSI_th(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2591
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 2592
    return-void
.end method

.method public setRSSI_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2603
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 2604
    return-void
.end method

.method public setRecordMode(I)V
    .registers 3
    .param p1, "is_record"    # I

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRecordMode(I)V

    .line 1981
    return-void
.end method

.method public setSINRFirstStage(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRFirstStage(I)V

    .line 2736
    return-void
.end method

.method public setSINRSamples(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRSamples(I)V

    .line 2688
    return-void
.end method

.method public setSINRThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRThreshold(I)V

    .line 2712
    return-void
.end method

.method public setSNR_th(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2595
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 2596
    return-void
.end method

.method public setSNR_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2607
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 2608
    return-void
.end method

.method public setSearchAlgoType(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSearchAlgoType(I)V

    .line 2680
    return-void
.end method

.method public setSeekRSSI(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekRSSI(J)V

    .line 2584
    return-void
.end method

.method public setSeekSNR(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekSNR(J)V

    .line 2588
    return-void
.end method

.method public setSoftMuteControl(III)V
    .registers 5
    .param p1, "min_RSSI"    # I
    .param p2, "max_RSSI"    # I
    .param p3, "max_attenuation"    # I

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/FMPlayerNative;->setSoftMuteControl(III)V

    .line 2675
    return-void
.end method

.method public setSoftmute(Z)V
    .registers 3
    .param p1, "setSoftmute"    # Z

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSoftmute(Z)V

    .line 2667
    return-void
.end method

.method public setSpeakerOn(Z)V
    .registers 3
    .param p1, "bSpeakerOn"    # Z

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSpeakerOn(Z)V

    .line 1977
    return-void
.end method

.method public setStereo()V
    .registers 2

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setStereo()V

    .line 2320
    return-void
.end method

.method public setVolume(J)V
    .registers 11
    .param p1, "val"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 1930
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v2, :cond_8

    .line 1969
    :cond_7
    :goto_7
    return-void

    .line 1933
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_13

    .line 1934
    const-string/jumbo v2, "setVolume :: unset on ScanProgress"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 1939
    :cond_13
    :try_start_13
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v2, :cond_58

    .line 1940
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    .line 1941
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 1943
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "all_sound_off"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1946
    .local v0, "IsEnabledAllSoundOff":I
    if-ne v0, v5, :cond_41

    .line 1947
    const-string/jumbo v2, "setVolume :: AllSoundOff is enabled. So FMRadio is muted."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1948
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_7

    .line 1949
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_3b} :catch_3c

    goto :goto_7

    .line 1965
    .end local v0    # "IsEnabledAllSoundOff":I
    :catch_3c
    move-exception v1

    .line 1966
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 1952
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "IsEnabledAllSoundOff":I
    :cond_41
    cmp-long v2, p1, v6

    if-gtz v2, :cond_4a

    .line 1953
    const/4 v2, 0x1

    :try_start_46
    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_7

    .line 1954
    :cond_4a
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v2, :cond_7

    .line 1955
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1956
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    goto :goto_7

    .line 1960
    .end local v0    # "IsEnabledAllSoundOff":I
    :cond_58
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_7

    .line 1961
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    .line 1962
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_67
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_67} :catch_3c

    goto :goto_7
.end method

.method public tune(J)V
    .registers 6
    .param p1, "freq"    # J

    .prologue
    .line 1475
    const-string/jumbo v0, "tune mute - "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 1486
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    .line 1488
    const-string/jumbo v0, "tune unmute - "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1493
    :cond_39
    const/4 v0, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1494
    return-void
.end method

.method unregisterMotionListener()V
    .registers 4

    .prologue
    .line 969
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-nez v0, :cond_9

    .line 976
    :cond_8
    :goto_8
    return-void

    .line 972
    :cond_9
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    monitor-enter v1

    .line 973
    :try_start_c
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_17

    .line 974
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 975
    :cond_17
    monitor-exit v1

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v0
.end method

.method unregisterSurfaceTouchListener()V
    .registers 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSurfaceTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1000
    const-string/jumbo v0, "unregister SurfaceTouchListener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1002
    return-void
.end method
