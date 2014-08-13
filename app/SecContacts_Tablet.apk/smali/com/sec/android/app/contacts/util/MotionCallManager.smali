.class public Lcom/sec/android/app/contacts/util/MotionCallManager;
.super Ljava/lang/Object;
.source "MotionCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    }
.end annotation


# static fields
.field private static final CALL_CONNECT_TONE:Ljava/lang/String; = "call_conn_tone"

.field private static final EXTRA_CALL_DIRECTCALL_DIRECTION:Ljava/lang/String; = "android.phone.extra.CALL_DIRECTCALL_DIRECTION"

.field private static final LEFT:Ljava/lang/String; = "left"

.field public static final REGISTER:I = 0x1

.field private static final RIGHT:Ljava/lang/String; = "right"

.field private static final TAG:Ljava/lang/String; = "MotionCallManager"

.field public static final UNREGISTER:I = 0x2

.field public static final UPDATE_NUMBER:I = 0x3

.field private static sMotionCallManager:Lcom/sec/android/app/contacts/util/MotionCallManager;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDirectCallPhoneNumber:Ljava/lang/String;

.field private mEnableTts:Z

.field private mEnableVibrator:Z

.field private mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private myHashAlarm:Ljava/util/HashMap;
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

.field private unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/util/MotionCallManager;->sMotionCallManager:Lcom/sec/android/app/contacts/util/MotionCallManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mEnableVibrator:Z

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mEnableTts:Z

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    .line 58
    new-instance v1, Lcom/sec/android/app/contacts/util/MotionCallManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/util/MotionCallManager$1;-><init>(Lcom/sec/android/app/contacts/util/MotionCallManager;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 119
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/contacts/activities/ContactDetailActivity;

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mActivity:Landroid/app/Activity;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/util/MotionCallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/util/MotionCallManager;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/util/MotionCallManager;Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MRListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/util/MotionCallManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/util/MotionCallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->isKeyGuardOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getMotionCallManager(Landroid/content/Context;)Lcom/sec/android/app/contacts/util/MotionCallManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-class v1, Lcom/sec/android/app/contacts/util/MotionCallManager;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/sec/android/app/contacts/util/MotionCallManager;->sMotionCallManager:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/contacts/util/MotionCallManager;->sMotionCallManager:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    sget-object v0, Lcom/sec/android/app/contacts/util/MotionCallManager;->sMotionCallManager:Lcom/sec/android/app/contacts/util/MotionCallManager;

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasAnyActiveCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 162
    const-string v2, "MotionCallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasAnyActiveCall: Call state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return v1

    .line 164
    :cond_1
    const-string v2, "MotionCallManager"

    const-string v3, "telephony manager is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    const-string v3, "phone2"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 171
    .local v0, "tmSevice2":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_3

    .line 172
    const-string v2, "MotionCallManager"

    const-string v3, "Sevice2 object is null!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    const-string v2, "MotionCallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sevice2 call state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0    # "tmSevice2":Landroid/telephony/TelephonyManager;
    :cond_4
    new-instance v1, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;->hasActiveImsCall()Z

    move-result v1

    goto :goto_0
.end method

.method private isKeyGuardOn()Z
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v0, "unlockReceiverfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    new-instance v1, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;-><init>(Lcom/sec/android/app/contacts/util/MotionCallManager;Lcom/sec/android/app/contacts/util/MotionCallManager$1;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    const/4 v1, 0x1

    .line 304
    .end local v0    # "unlockReceiverfilter":Landroid/content/IntentFilter;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeVibrate()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    .line 211
    .local v0, "vibrator":Landroid/os/SystemVibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 212
    return-void
.end method

.method private registerMotionCallListener()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/contacts/util/MotionCallManager$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/util/MotionCallManager$3;-><init>(Lcom/sec/android/app/contacts/util/MotionCallManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->isKeyGuardOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    goto :goto_0
.end method

.method private speakMakeCallMsg()V
    .locals 4

    .prologue
    .line 216
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 218
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    const-string v2, "streamType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/sec/android/app/contacts/util/MotionCallManager$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/contacts/util/MotionCallManager$2;-><init>(Lcom/sec/android/app/contacts/util/MotionCallManager;Ljava/util/Locale;)V

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 246
    return-void
.end method

.method private unregisterMotionCallListener()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    if-eqz v1, :cond_1

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    .line 294
    :cond_1
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MotionCallManager"

    const-string v2, "unlock receiver is not registered."

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 3
    .param p1, "direction"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v1, "MotionCallManager"

    const-string v2, "Calling by motion"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 187
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->hasAnyActiveCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.phone.extra.CALL_DIRECTCALL"

    const-string v2, "Contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "android.phone.extra.CALL_DIRECTCALL_DIRECTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const-string v1, "directcall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    const-string v2, "0040"

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 202
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mEnableTts:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->speakMakeCallMsg()V

    .line 203
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mEnableVibrator:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->makeVibrate()V

    goto :goto_0

    .line 205
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v1, "MotionCallManager"

    const-string v2, "No number"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public updateDirectCall(ILjava/lang/String;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 153
    const-string v0, "MotionCallManager"

    const-string v1, "Default"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 141
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->registerMotionCallListener()V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->unregisterMotionCallListener()V

    goto :goto_0

    .line 149
    :pswitch_2
    iput-object p2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
