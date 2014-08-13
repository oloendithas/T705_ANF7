.class public Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;
.super Ljava/lang/Object;
.source "RemainingStandbyTimeMonitor.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mBURInPowerSavingMode:I

.field mBURInPowerSavingMode3G:I

.field mBURInPowerSavingMode4G:I

.field mBURInUltraPowerSavingMode:I

.field mBatteryCapacity:I

.field mLeftUsageTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "SSRMv2:RemainingStandbyTimeMonitor"

    sput-object v0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    .line 27
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    .line 29
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode3G:I

    .line 31
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode4G:I

    .line 33
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode:I

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mLeftUsageTime:J

    .line 38
    invoke-virtual {p0}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->setBatteryUsageInformation()V

    .line 39
    return-void
.end method


# virtual methods
.method getStandbyTimeInPowerSavingMode()I
    .locals 5

    .prologue
    .line 52
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryRemaining()I

    move-result v0

    .line 53
    .local v0, "level":I
    iget v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode:I

    div-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v1, v2, 0xa

    .line 55
    .local v1, "stanbyTime":I
    sget-object v2, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStandbyTimeInUltraPowerSavingMode: standby time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBatteryCapacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBURInPowerSavingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return v1
.end method

.method getStandbyTimeInUltraPowerSavingMode()I
    .locals 5

    .prologue
    .line 42
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryRemaining()I

    move-result v0

    .line 43
    .local v0, "level":I
    iget v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    div-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v1, v2, 0xa

    .line 45
    .local v1, "stanbyTime":I
    sget-object v2, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStandbyTimeInUltraPowerSavingMode: standby time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBatteryCapacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBURInUltraPowerSavingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return v1
.end method

.method setBatteryUsageInformation()V
    .locals 8

    .prologue
    const v7, 0x445c0

    const/16 v6, 0x3a5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v2, :cond_0

    .line 63
    iput v7, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    .line 64
    iput v6, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    .line 79
    :goto_0
    const/16 v2, 0x33e

    iput v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode3G:I

    .line 80
    const/16 v2, 0x2ee

    iput v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode4G:I

    .line 81
    iget v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode3G:I

    iget v3, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode4G:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode:I

    .line 82
    return-void

    .line 66
    :cond_0
    const-string v0, "490000,1068"

    .line 67
    .local v0, "STANDBY_TIME_INFO":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "str":[Ljava/lang/String;
    aget-object v2, v1, v4

    if-eqz v2, :cond_1

    .line 69
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    .line 73
    :goto_1
    aget-object v2, v1, v5

    if-eqz v2, :cond_2

    .line 74
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    goto :goto_0

    .line 71
    :cond_1
    iput v7, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    goto :goto_1

    .line 76
    :cond_2
    iput v6, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    goto :goto_0
.end method
