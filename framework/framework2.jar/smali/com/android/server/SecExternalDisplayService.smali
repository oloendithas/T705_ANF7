.class public Lcom/android/server/SecExternalDisplayService;
.super Landroid/os/ISecExternalDisplayService$Stub;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayService$6;,
        Lcom/android/server/SecExternalDisplayService$SettingsObserver;,
        Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;,
        Lcom/android/server/SecExternalDisplayService$EDSToast;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayService_Java"

.field private static bIsLogEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;


# instance fields
.field public CALL_CONNECT:Z

.field private bDreamsEnabledByDefaultConfig:Z

.field private bIsAlarmRecieved:Z

.field private bIsDayDreamEnabled:Z

.field private bIsHomeTheatreConnected:Z

.field private cpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private gpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private mDockSurfaceHeight:I

.field private mDockSurfaceWidth:I

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private final mHandlerHT:Landroid/os/Handler;

.field private mHandlerSPC:Landroid/os/Handler;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSettingsObserver:Lcom/android/server/SecExternalDisplayService$SettingsObserver;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private supportedCPUFreqTable:[I

.field private supportedGPUFreqTable:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x500

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 78
    iput v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    .line 79
    iput v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    .line 80
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 81
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 91
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 92
    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 166
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerSPC:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerHT:Landroid/os/Handler;

    .line 191
    new-instance v0, Lcom/android/server/SecExternalDisplayService$3;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$3;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x500

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 78
    iput v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    .line 79
    iput v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    .line 80
    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 81
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 91
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 92
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 166
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerSPC:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerHT:Landroid/os/Handler;

    .line 191
    new-instance v0, Lcom/android/server/SecExternalDisplayService$3;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$3;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 206
    const-string/jumbo v0, "persist.sys.SecEDS.Logs"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    .line 207
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "SecExternalDisplayService +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sput-object p1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    .line 210
    new-instance v0, Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-direct {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;-><init>()V

    sput-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    .line 215
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/mhl_event_switch"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V

    .line 235
    invoke-static {p0}, Lcom/android/server/SecExternalDisplayIntents;->StartEDSIntents(Lcom/android/server/SecExternalDisplayService;)V

    .line 238
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v1, 0xc

    invoke-direct {v0, p1, v1}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    .line 239
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    .line 240
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    .line 241
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    .line 242
    return-void
.end method

.method private SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nMode"    # I

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "wakelockHeld":Z
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_22

    .line 257
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_11

    .line 258
    const-string v2, "SecExternalDisplayService_Java"

    const-string/jumbo v3, "mWakeLock is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_11
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 261
    const/4 v1, 0x1

    .line 262
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 264
    :cond_1f
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 267
    :cond_22
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_2d

    .line 268
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "SecExternalDisplayInitWakeMode is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2d
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 271
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-string v3, "SecExternalDisplayService_Java"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 273
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_5d

    .line 274
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecExternalDisplayInitWakeMode set the mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_5d
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 278
    if-eqz v1, :cond_6a

    .line 280
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 282
    :cond_6a
    return-void
.end method

.method private SecExternalDisplaySetWakeLock(Z)V
    .registers 4
    .param p1, "bStatus"    # Z

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3b

    .line 303
    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 305
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_19

    .line 306
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Acquire the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_19
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 321
    :cond_1e
    :goto_1e
    return-void

    .line 309
    :cond_1f
    if-nez p1, :cond_1e

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 311
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_35

    .line 312
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "release the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_35
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1e

    .line 318
    :cond_3b
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_1e

    .line 319
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method static synthetic access$000(Lcom/android/server/SecExternalDisplayService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SecExternalDisplayService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/SecExternalDisplayService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/SecExternalDisplayService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    return v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/SecExternalDisplayService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bDreamsEnabledByDefaultConfig:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/SecExternalDisplayService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/SecExternalDisplayService;->bDreamsEnabledByDefaultConfig:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/SecExternalDisplayService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsDayDreamEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/SecExternalDisplayService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/SecExternalDisplayService;->bIsDayDreamEnabled:Z

    return p1
.end method

.method public static dispatchacquireCpuMinLock(I)V
    .registers 5
    .param p0, "value"    # I

    .prologue
    .line 785
    const-string v2, "SecExternalDisplayService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 787
    .local v1, "secExternalDisplayService":Landroid/os/ISecExternalDisplayService;
    :try_start_a
    invoke-interface {v1, p0}, Landroid/os/ISecExternalDisplayService;->acquireCpuMinLock(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_15

    .line 792
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "dispatchacquireCpuMinLock: "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :goto_14
    return-void

    .line 788
    :catch_15
    move-exception v0

    .line 789
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "acquireCpuMinLock() -  fail!!! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public static dispatchacquireGpuMinLock(I)V
    .registers 5
    .param p0, "value"    # I

    .prologue
    .line 807
    const-string v2, "SecExternalDisplayService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 809
    .local v1, "secExternalDisplayService":Landroid/os/ISecExternalDisplayService;
    :try_start_a
    invoke-interface {v1, p0}, Landroid/os/ISecExternalDisplayService;->acquireGpuMinLock(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_15

    .line 814
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "dispatchacquireGpuMinLock: "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :goto_14
    return-void

    .line 810
    :catch_15
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "acquireGpuMinLock() -  fail!!! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public static dispatchreleaseCpuMinLock()V
    .registers 4

    .prologue
    .line 796
    const-string v2, "SecExternalDisplayService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 798
    .local v1, "secExternalDisplayService":Landroid/os/ISecExternalDisplayService;
    :try_start_a
    invoke-interface {v1}, Landroid/os/ISecExternalDisplayService;->releaseCpuMinLock()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_15

    .line 803
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "dispatchreleaseCpuMinLock: "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :goto_14
    return-void

    .line 799
    :catch_15
    move-exception v0

    .line 800
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SecExternalDisplayService_Java"

    const-string/jumbo v3, "releaseCpuMinLock() -  fail!!! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public static dispatchreleaseGpuMinLock()V
    .registers 4

    .prologue
    .line 818
    const-string v2, "SecExternalDisplayService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 820
    .local v1, "secExternalDisplayService":Landroid/os/ISecExternalDisplayService;
    :try_start_a
    invoke-interface {v1}, Landroid/os/ISecExternalDisplayService;->releaseGpuMinLock()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_15

    .line 825
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "dispatchreleaseGpuMinLock: "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :goto_14
    return-void

    .line 821
    :catch_15
    move-exception v0

    .line 822
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SecExternalDisplayService_Java"

    const-string/jumbo v3, "releaseGpuMinLock() -  fail!!! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public static setAidDim(I)V
    .registers 9
    .param p0, "value"    # I

    .prologue
    .line 670
    const/16 v2, 0x1f4a

    .line 671
    .local v2, "serviceNum":I
    const/16 v4, 0x90

    .line 673
    .local v4, "what":I
    const-string v5, "SecExternalDisplayService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tvout HMT_AID: 144, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :try_start_1c
    const-string v5, "TvoutService_C"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 677
    .local v3, "tvout":Landroid/os/IBinder;
    if-eqz v3, :cond_3f

    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "data":Landroid/os/Parcel;
    const-string v5, "android.hardware.ISecExternalDisplayService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    const/16 v5, 0x90

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/16 v5, 0x1f4a

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v0, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3f} :catch_40

    .line 688
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v3    # "tvout":Landroid/os/IBinder;
    :cond_3f
    :goto_3f
    return-void

    .line 685
    :catch_40
    move-exception v1

    .line 686
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "SecExternalDisplayService_Java"

    const-string/jumbo v6, "setHmtAid failed: TvoutService_C is dead!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public static setEnableDualScanMode(I)V
    .registers 9
    .param p0, "value"    # I

    .prologue
    .line 691
    const/16 v2, 0x1f4b

    .line 692
    .local v2, "serviceNum":I
    const/16 v4, 0x91

    .line 695
    .local v4, "what":I
    const-string v5, "SecExternalDisplayService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tvout DUAL_SCAN: 145, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :try_start_1c
    const-string v5, "TvoutService_C"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 699
    .local v3, "tvout":Landroid/os/IBinder;
    if-eqz v3, :cond_3f

    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 701
    .local v0, "data":Landroid/os/Parcel;
    const-string v5, "android.hardware.ISecExternalDisplayService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 702
    const/16 v5, 0x91

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/16 v5, 0x1f4b

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v0, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3f} :catch_40

    .line 710
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v3    # "tvout":Landroid/os/IBinder;
    :cond_3f
    :goto_3f
    return-void

    .line 707
    :catch_40
    move-exception v1

    .line 708
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "SecExternalDisplayService_Java"

    const-string/jumbo v6, "setDualScan failed: TvoutService_C is dead!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public static setHmtOn(I)V
    .registers 9
    .param p0, "value"    # I

    .prologue
    .line 714
    const/16 v2, 0x1f4c

    .line 715
    .local v2, "serviceNum":I
    const/16 v4, 0x92

    .line 717
    .local v4, "what":I
    const-string v5, "SecExternalDisplayService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tvout HMT_ON: 146, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :try_start_1c
    const-string v5, "TvoutService_C"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 721
    .local v3, "tvout":Landroid/os/IBinder;
    if-eqz v3, :cond_3f

    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 723
    .local v0, "data":Landroid/os/Parcel;
    const-string v5, "android.hardware.ISecExternalDisplayService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 724
    const/16 v5, 0x92

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/16 v5, 0x1f4c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v0, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3f} :catch_40

    .line 732
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v3    # "tvout":Landroid/os/IBinder;
    :cond_3f
    :goto_3f
    return-void

    .line 729
    :catch_40
    move-exception v1

    .line 730
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "SecExternalDisplayService_Java"

    const-string/jumbo v6, "setHmtOn failed: TvoutService_C is dead!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method


# virtual methods
.method public SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 606
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 611
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGet3DMode()I
    .registers 2

    .prologue
    .line 596
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGet3DMode()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetResolution()I
    .registers 2

    .prologue
    .line 585
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetResolution()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetStatus(I)Z
    .registers 3
    .param p1, "param"    # I

    .prologue
    .line 633
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayRegisterEVF(Z)I
    .registers 3
    .param p1, "bStatus"    # Z

    .prologue
    .line 616
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayRegisterEVF(Z)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySet3DMode(I)I
    .registers 3
    .param p1, "nS3DMode"    # I

    .prologue
    .line 601
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySet3DMode(I)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetExternalUITransform(I)Z
    .registers 3
    .param p1, "transform"    # I

    .prologue
    .line 647
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetForceMirrorMode(Z)Z
    .registers 3
    .param p1, "bEnable"    # Z

    .prologue
    .line 639
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetForceMirrorMode(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 664
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetOutputMode(I)Z
    .registers 3
    .param p1, "nOutputMode"    # I

    .prologue
    .line 590
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetPause(Z)Z
    .registers 3
    .param p1, "bStatus"    # Z

    .prologue
    .line 622
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetPause(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetResolution(I)Z
    .registers 3
    .param p1, "nResolution"    # I

    .prologue
    .line 580
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetResolution(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetStatus(IZ)Z
    .registers 4
    .param p1, "param"    # I
    .param p2, "status"    # Z

    .prologue
    .line 628
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayToast(I)V
    .registers 11
    .param p1, "nIndex"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 332
    sget-boolean v4, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v4, :cond_1e

    .line 333
    const-string v4, "SecExternalDisplayService_Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SecExternalDisplayToast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1e
    const/4 v0, 0x0

    .line 337
    .local v0, "strDefault":Ljava/lang/String;
    sget-object v4, Lcom/android/server/SecExternalDisplayService$6;->$SwitchMap$com$android$server$SecExternalDisplayService$EDSToast:[I

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_88

    .line 378
    :goto_2e
    if-eqz v0, :cond_39

    .line 379
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 380
    :cond_39
    return-void

    .line 341
    :pswitch_3a
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040758

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    goto :goto_2e

    .line 346
    :pswitch_48
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040759

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    goto :goto_2e

    .line 351
    :pswitch_56
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104075a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    goto :goto_2e

    .line 356
    :pswitch_64
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104075b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "strDefault2":Ljava/lang/String;
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 359
    .local v3, "theatre":Landroid/widget/Toast;
    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 360
    iput-boolean v7, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 361
    new-instance v2, Lcom/android/server/SecExternalDisplayService$4;

    invoke-direct {v2, p0, v3}, Lcom/android/server/SecExternalDisplayService$4;-><init>(Lcom/android/server/SecExternalDisplayService;Landroid/widget/Toast;)V

    .line 370
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2e

    .line 374
    .end local v1    # "strDefault2":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "theatre":Landroid/widget/Toast;
    :pswitch_85
    iput-boolean v8, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    goto :goto_2e

    .line 337
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_48
        :pswitch_56
        :pswitch_64
        :pswitch_85
    .end packed-switch
.end method

.method public SecExternalDisplayType(Z)Z
    .registers 3
    .param p1, "bIsTablet"    # Z

    .prologue
    .line 652
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayType(Z)Z

    move-result v0

    return v0
.end method

.method public acquireCpuMinLock(I)V
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 736
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tvout CPUMINLOCK_ACQUIRE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    if-eqz v0, :cond_5a

    .line 739
    if-ltz p1, :cond_5b

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    array-length v0, v0

    if-ge p1, v0, :cond_5b

    .line 740
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    aget v2, v2, p1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 741
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 742
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tvout CPU_MIN_LOCK was acquired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_5a
    :goto_5a
    return-void

    .line 744
    :cond_5b
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unsuitable value for supportedCPUFreqTable. Please put number : 0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method public acquireGpuMinLock(I)V
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 761
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tvout GPUMINLOCK_ACQUIRE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_5a

    .line 764
    if-ltz p1, :cond_5b

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    array-length v0, v0

    if-ge p1, v0, :cond_5b

    .line 765
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    aget v2, v2, p1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 766
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 767
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tvout GPU_MIN_LOCK was acquired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_5a
    :goto_5a
    return-void

    .line 769
    :cond_5b
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unsuitable value for supportedGPUFreqTable. Please put number : 0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method public getEDSContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleAlarm(Z)Z
    .registers 6
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    .line 483
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_1d

    .line 484
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Alarm : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1d
    if-eqz p1, :cond_46

    .line 487
    iput-boolean v3, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 488
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 489
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_3c

    .line 490
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Destroy SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_3c
    const-string v0, "Internal"

    iget v1, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    .line 504
    :cond_45
    :goto_45
    return v3

    .line 497
    :cond_46
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 498
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_61

    .line 499
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Create SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_61
    const-string v0, "Internal"

    iget v1, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    goto :goto_45
.end method

.method public handleHDMIConnection(Z)Z
    .registers 8
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    .line 418
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_1d

    .line 419
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " handleHDMIConnection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1d
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    .line 421
    .local v0, "cable_status":Z
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 422
    invoke-direct {p0, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    .line 423
    if-ne p1, v5, :cond_81

    .line 425
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 426
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_WFD_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    .line 427
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 428
    .local v1, "msg":Landroid/os/Message;
    const-string v2, "HDMI connected. AllShare Cast turned off"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerSPC:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 436
    .end local v1    # "msg":Landroid/os/Message;
    :goto_5a
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 438
    const-string v2, "Internal"

    iget v3, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v4, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    .line 455
    :cond_6f
    :goto_6f
    return v5

    .line 432
    :cond_70
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, " HDMI Connected : "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    goto :goto_5a

    .line 442
    :cond_81
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, " HDMI DisConnected : "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 445
    const-string v2, "Internal"

    iget v3, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v4, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    .line 447
    :cond_9d
    if-ne v0, v5, :cond_6f

    .line 449
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    goto :goto_6f
.end method

.method handleHTPluggedEvent(Z)V
    .registers 7
    .param p1, "plugged"    # Z

    .prologue
    const/4 v4, 0x1

    .line 389
    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_1d

    .line 390
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event received as  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_1d
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 392
    .local v0, "msg":Landroid/os/Message;
    if-ne p1, v4, :cond_2c

    .line 394
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 395
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerHT:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    :goto_2b
    return-void

    .line 400
    :cond_2c
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 401
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerHT:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2b
.end method

.method public handleSmartDockConnection(I)Z
    .registers 8
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 515
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleSmartDockConnection status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Intent.EXTRA_USB_HID_STATE_ATTACHED value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    if-ne v4, p1, :cond_8d

    .line 518
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 521
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_57

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_57

    .line 523
    const-string v1, "Internal"

    iget v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v3, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    .line 535
    :cond_57
    :goto_57
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 536
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_74

    .line 537
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 538
    :cond_74
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_8c

    .line 540
    :try_start_78
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_83

    .line 541
    new-instance v1, Lcom/android/server/SecExternalDisplayService$5;

    invoke-direct {v1, p0}, Lcom/android/server/SecExternalDisplayService$5;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 558
    :cond_83
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_8c
    .catch Ljava/lang/SecurityException; {:try_start_78 .. :try_end_8c} :catch_b5

    .line 568
    :cond_8c
    :goto_8c
    return v4

    .line 525
    :cond_8d
    if-nez p1, :cond_57

    .line 526
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 530
    const-string v1, "Internal"

    iget v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v3, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    .line 531
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_57

    .line 559
    :catch_b5
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Phone window manager doesn\'t have the permssion READ_PHONE_STATE. please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 565
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_be
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_8c

    .line 566
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_8c
.end method

.method public handleWFDConnection(I)Z
    .registers 6
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x1

    .line 465
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllShare Cast Connected Status : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    if-ne p1, v3, :cond_26

    .line 468
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    .line 470
    :goto_25
    return v0

    :cond_26
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    goto :goto_25
.end method

.method public releaseCpuMinLock()V
    .registers 3

    .prologue
    .line 751
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Tvout CPUMINLOCK_RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_17

    .line 754
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 755
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Tvout CPU_MIN_LOCK was released."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_17
    return-void
.end method

.method public releaseGpuMinLock()V
    .registers 3

    .prologue
    .line 776
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Tvout GPUMINLOCK_RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_17

    .line 779
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 780
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Tvout GPU_MIN_LOCK was released."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_17
    return-void
.end method

.method public setFpsLevel(I)V
    .registers 8
    .param p1, "level"    # I

    .prologue
    .line 877
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 878
    .local v2, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v2, :cond_1e

    .line 879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 880
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    const/16 v3, 0x3fe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 889
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "surfaceFlinger":Landroid/os/IBinder;
    :cond_1e
    :goto_1e
    return-void

    .line 885
    :catch_1f
    move-exception v1

    .line 886
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "SecExternalDisplayService_Java"

    const-string/jumbo v4, "setFpsLevel failed: SurfaceFlinger is dead!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public setHMTParams(FFF[F)Z
    .registers 6
    .param p1, "esd"    # F
    .param p2, "lsd"    # F
    .param p3, "ipd"    # F
    .param p4, "hmdWarpParams"    # [F

    .prologue
    .line 658
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/SecExternalDisplayJNIInterface;->setHMTParams(FFF[F)Z

    move-result v0

    return v0
.end method
