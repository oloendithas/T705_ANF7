.class Lcom/android/server/ssrm/PowerSavingMode;
.super Ljava/lang/Object;
.source "PowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;,
        Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;
    }
.end annotation


# static fields
.field private static final HW_VENDOR:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mCpuFreqTable:[I

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mFpsMaxHelper:Landroid/os/DVFSHelper;

.field mGpuMaxHelper:Landroid/os/DVFSHelper;

.field mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

.field mUltraPsmObserver:Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SSRMv2:PowerSavingMode"

    sput-object v0, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/ssrm/PowerSavingMode;->HW_VENDOR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;-><init>(Lcom/android/server/ssrm/PowerSavingMode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    .line 53
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    const-string v1, "powersaving_switch"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    const-string v1, "psm_switch"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    const-string v1, "psm_cpu_clock"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mPSMObserver:Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;

    const-string v1, "psm_display"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    const-string v2, "PSM_CPU_MAX"

    const/16 v3, 0xd

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 62
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuFreqTable:[I

    .line 63
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuFreqTable:[I

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    iget-object v3, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuFreqTable:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 68
    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    const-string v2, "PSM_FPS_MAX"

    const/16 v3, 0x15

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    .line 69
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "FPS"

    const-wide/16 v2, 0x42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 71
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    const-string v2, "PSM_GPU_MAX"

    const/16 v3, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    .line 72
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-nez v0, :cond_1

    const-string v0, "Combination"

    sget-object v1, Lcom/android/server/ssrm/PowerSavingMode;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/32 v2, 0x1312d000

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 78
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;

    invoke-direct {v0, p1}, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mUltraPsmObserver:Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;

    .line 79
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mUltraPsmObserver:Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;->registerUriByName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/ssrm/PowerSavingMode;->onSettingChanged()V

    .line 82
    return-void

    .line 74
    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-nez v0, :cond_4

    const-string v0, "Strawberry"

    sget-object v1, Lcom/android/server/ssrm/PowerSavingMode;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method static adjustChargingCurrentForUsPorivder()V
    .locals 3

    .prologue
    .line 167
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    const-string v2, "/sys/class/power_supply/battery/test_charge_current"

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "530"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "460"

    goto :goto_1
.end method


# virtual methods
.method onSettingChanged()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "powersaving_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "powerSavingSwitch":I
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, "psmSwitch":I
    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/server/ssrm/DeviceStatus;->setPowerSavingMode(Z)V

    .line 137
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_cpu_clock"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitPerformance:Z

    .line 140
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_display"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    :goto_2
    sput-boolean v3, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitDisplay:Z

    .line 143
    sget-object v2, Lcom/android/server/ssrm/PowerSavingMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PSM_CPU = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitPerformance:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PSM_DISP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitDisplay:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingModeLimitPerformance()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 149
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 155
    :goto_3
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingModeLimitDisplay()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 161
    :goto_4
    invoke-static {}, Lcom/android/server/ssrm/PowerSavingMode;->adjustChargingCurrentForUsPorivder()V

    .line 163
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.intent.action.POWER_SAVING_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    return-void

    :cond_0
    move v2, v4

    .line 135
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 137
    goto :goto_1

    :cond_2
    move v3, v4

    .line 140
    goto :goto_2

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 152
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    goto :goto_3

    .line 158
    :cond_4
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    goto :goto_4
.end method
