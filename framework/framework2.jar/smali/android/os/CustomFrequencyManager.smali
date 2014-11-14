.class public Landroid/os/CustomFrequencyManager;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;,
        Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;,
        Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;,
        Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;,
        Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$FrequencyRequest;
    }
.end annotation


# static fields
.field public static final CPU_CORE_NUM_MAX_LIMIT:I = 0x5

.field public static final CPU_CORE_NUM_MIN_LIMIT:I = 0x4

.field private static final DEBUG:Z

.field public static final DVFS_MAX_LIMIT:I = 0x2

.field public static final DVFS_MIN_LIMIT:I = 0x1

.field public static final FREQUENCY_BUS_TYPE_BOOST_MAX_LIMIT:I = 0xb

.field public static final FREQUENCY_BUS_TYPE_BOOST_MIN_LIMIT:I = 0xa

.field public static final FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT:I = 0x7

.field public static final FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT:I = 0x6

.field public static final FREQUENCY_LCD_FRAME_RATE:I = 0x3

.field public static final FREQUENCY_MMC_TYPE_BURST_MODE:I = 0x8

.field public static final FREQUENCY_REQ_TYPE_GPU:I = 0x1

.field public static final FREQUENCY_REQ_TYPE_GPU_MAX:I = 0x9

.field public static final PERSISTENT_DVFSLOCK_FOR_IME:I = 0x2

.field public static final PERSISTENT_DVFSLOCK_SYSTEM_POWER_SAVING_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManager"

.field private static infinitCPUBoostServing:Z

.field private static infinitCPUCoreServing:Z

.field private static infinitGPUServing:Z

.field private static infinitLCDFrameReqServing:Z

.field private static infinitSysBusReqServing:Z

.field private static final lock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field public static mServerAppToken:Landroid/os/IBinder;


# instance fields
.field mHandler:Landroid/os/Handler;

.field mHeld:Z

.field mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    .line 541
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/CustomFrequencyManager;->lock:Ljava/lang/Object;

    .line 615
    sput-boolean v2, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    .line 616
    sput-boolean v2, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    .line 617
    sput-boolean v2, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    .line 618
    sput-boolean v2, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    .line 619
    sput-boolean v2, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->mHeld:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/ICustomFrequencyManager;Landroid/os/Handler;)V
    .registers 4
    .param p1, "service"    # Landroid/os/ICustomFrequencyManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->mHeld:Z

    .line 53
    iput-object p1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 54
    iput-object p2, p0, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 22
    sput-boolean p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 22
    sput-boolean p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 22
    sput-boolean p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    return p0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 22
    sput-boolean p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 22
    sput-boolean p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    return p0
.end method

.method static declared-synchronized createServerAppToken()V
    .registers 2

    .prologue
    .line 231
    const-class v1, Landroid/os/CustomFrequencyManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    if-nez v0, :cond_e

    .line 232
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 234
    :cond_e
    monitor-exit v1

    return-void

    .line 231
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 622
    sget-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 623
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_7
    return-void
.end method

.method private newFrequencyRequest(IIJLjava/lang/String;)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .registers 13
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "timeout"    # J
    .param p5, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 555
    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newFrequencyRequest  - mFrequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeoutMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x1

    if-eq p1, v0, :cond_34

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3f

    .line 558
    :cond_34
    new-instance v0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 570
    :goto_3e
    return-object v0

    .line 559
    :cond_3f
    const/16 v0, 0xa

    if-eq p1, v0, :cond_47

    const/16 v0, 0xb

    if-ne p1, v0, :cond_52

    .line 560
    :cond_47
    new-instance v0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_3e

    .line 561
    :cond_52
    const/4 v0, 0x3

    if-ne p1, v0, :cond_60

    .line 562
    new-instance v0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_3e

    .line 563
    :cond_60
    const/4 v0, 0x4

    if-eq p1, v0, :cond_66

    const/4 v0, 0x5

    if-ne p1, v0, :cond_71

    .line 564
    :cond_66
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_3e

    .line 565
    :cond_71
    const/4 v0, 0x7

    if-eq p1, v0, :cond_77

    const/4 v0, 0x6

    if-ne p1, v0, :cond_82

    .line 566
    :cond_77
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_3e

    .line 567
    :cond_82
    const/16 v0, 0x8

    if-ne p1, v0, :cond_91

    .line 568
    new-instance v0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_3e

    .line 570
    :cond_91
    const/4 v0, 0x0

    goto :goto_3e
.end method


# virtual methods
.method public getRemainUsageTime(I)I
    .registers 7
    .param p1, "mode"    # I

    .prologue
    const/4 v1, -0x1

    .line 84
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_6

    .line 92
    :goto_5
    return v1

    .line 89
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getRemainUsageTime(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 90
    :catch_d
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemainUsageTime:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getStandbyTimeInPowerSavingMode()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 71
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_6

    .line 79
    :goto_5
    return v1

    .line 76
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInPowerSavingMode()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 77
    :catch_d
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStandbyTimeInPowerSavingMode:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getStandbyTimeInUltraPowerSavingMode()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 58
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_6

    .line 66
    :goto_5
    return v1

    .line 63
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 64
    :catch_d
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStandbyTimeInUltraPowerSavingMode:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getSupportedCPUCoreNum()[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_6

    .line 104
    :goto_5
    return-object v1

    .line 101
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedCPUCoreNum()[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 102
    :catch_d
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedCPUCoreNum:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getSupportedCPUFrequency()[I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_6

    .line 139
    :goto_5
    return-object v1

    .line 137
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedCPUFrequency()[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 138
    :catch_d
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getSupportedGPUFrequency()[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_6

    .line 116
    :goto_5
    return-object v1

    .line 113
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedGPUFrequency()[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 114
    :catch_d
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedGPUFrequency:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getSupportedLCDFrequency()[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_6

    .line 151
    :goto_5
    return-object v1

    .line 148
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedLCDFrequency()[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 149
    :catch_d
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedLCDFrequency:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getSupportedSysBusFrequency()[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_6

    .line 128
    :goto_5
    return-object v1

    .line 125
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedSysBusFrequency()[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 126
    :catch_d
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedSysBusFrequency:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public mpdUpdate(I)V
    .registers 6
    .param p1, "mpEnable"    # I

    .prologue
    .line 601
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_5

    .line 610
    :goto_4
    return-void

    .line 605
    :cond_5
    :try_start_5
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in manager mpUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->mpdUpdate(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_22} :catch_23

    goto :goto_4

    .line 607
    :catch_23
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .registers 10
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "timeout"    # J
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 545
    sget-object v2, Landroid/os/CustomFrequencyManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 546
    :try_start_3
    sput-object p6, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    .line 547
    invoke-direct/range {p0 .. p5}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v0

    .line 548
    .local v0, "req":Landroid/os/CustomFrequencyManager$FrequencyRequest;
    const/4 v1, 0x0

    sput-object v1, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    .line 549
    monitor-exit v2

    .line 550
    return-object v0

    .line 549
    .end local v0    # "req":Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :catchall_e
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public notifyWmAniationState(JZ)V
    .registers 5
    .param p1, "currentTime"    # J
    .param p3, "isStart"    # Z

    .prologue
    .line 628
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_5

    .line 635
    :goto_4
    return-void

    .line 632
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/ICustomFrequencyManager;->notifyWmAniationState(JZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 633
    :catch_b
    move-exception v0

    goto :goto_4
.end method

.method public onTopAppChanged(Z)V
    .registers 6
    .param p1, "isTopFullscreen"    # Z

    .prologue
    .line 574
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_5

    .line 586
    :goto_4
    return-void

    .line 578
    :cond_5
    if-eqz p1, :cond_2a

    .line 579
    :try_start_7
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "--Nw 2.4 --Tw 150 --Ns 1.4 --Ts 100 --util_h 100 --util_l 0"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_4

    .line 583
    :catch_f
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTopAppChanged:: RemoteException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "--Nw 1.99 --Tw 140 --Ns 1.1 --Ts 190 --util_h 70 --util_l 60"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_f

    goto :goto_4
.end method

.method public requestCPUUpdate(II)V
    .registers 7
    .param p1, "cpu"    # I
    .param p2, "enable"    # I

    .prologue
    .line 589
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_5

    .line 598
    :goto_4
    return-void

    .line 593
    :cond_5
    :try_start_5
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in manager requestCPUUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->requestCPUUpdate(II)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_4

    .line 595
    :catch_2d
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "Packagename"    # Ljava/lang/String;

    .prologue
    .line 649
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_5

    .line 658
    :goto_4
    return-void

    .line 654
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 655
    :catch_b
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reviewPackage:: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 638
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_5

    .line 646
    :goto_4
    return-void

    .line 642
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 643
    :catch_b
    move-exception v0

    .line 644
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCommandToSSRM:: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
