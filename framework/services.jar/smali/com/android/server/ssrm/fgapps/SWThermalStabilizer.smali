.class public Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SWThermalStabilizer.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field MINIMUM_CPU_MAXLIMIT:I

.field MINIMUM_GPU_MAXLIMIT:I

.field final PST_CHECK_PERIOD:I

.field PST_START_TEMPERATURE:I

.field PST_STOP_TEMPERATURE:I

.field SS_PREODIC_PERIOD:I

.field SS_START_DELAY:I

.field final STATUS_SCREEN_MIRRORING:Ljava/lang/String;

.field final STATUS_SECURE_PLAYBACK:Ljava/lang/String;

.field final STS_TEST_FILE:Ljava/lang/String;

.field mCPUControl:Z

.field mCPULevel:I

.field mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

.field mCurrentCPUMaxLimtLevel:I

.field mCurrentGPUMaxLimtLevel:I

.field mGPULevel:I

.field mGpuMaxHelper:Landroid/os/DVFSHelper;

.field mHandler:Landroid/os/Handler;

.field mIsFirstControl:Z

.field mPST:I

.field mPSTControlModeEnable:Z

.field mPSTControlStarted:Z

.field mPSTPackageName:Ljava/lang/String;

.field mPeriod:I

.field mSSCpuMaxFreq:I

.field mSSGpuMaxFreq:I

.field mSTSRunnable:Ljava/lang/Runnable;

.field private mScreenMirroring:Z

.field private mSecurePlayBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x29
        0x2d
        0x2e
        0x12
        0x1f
        0x8
        0x17
        0x1b
        0x16
        0x29
        0xe
        0x1b
        0x18
        0x13
        0x16
        0x13
        0x0
        0x1f
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const v0, 0xea60

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 43
    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I

    .line 45
    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I

    .line 47
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_CHECK_PERIOD:I

    .line 49
    const/16 v0, 0x1ea

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    .line 51
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    .line 53
    const v0, 0xdbba0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_GPU_MAXLIMIT:I

    .line 57
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 59
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    .line 61
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    .line 63
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    .line 66
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->STS_TEST_FILE:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPULevel:I

    .line 82
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGPULevel:I

    .line 84
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    .line 86
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPST:I

    .line 88
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlStarted:Z

    .line 90
    new-instance v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;-><init>(Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSTSRunnable:Ljava/lang/Runnable;

    .line 119
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    .line 121
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    .line 123
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 125
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 240
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    .line 266
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSGpuMaxFreq:I

    .line 305
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->STATUS_SECURE_PLAYBACK:Ljava/lang/String;

    .line 310
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->STATUS_SCREEN_MIRRORING:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    const-string v1, "SWThermalStabilizer"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->STS_TEST_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeStsInitalValues()V

    .line 78
    :cond_0
    return-void

    .line 66
    nop

    :array_0
    .array-data 4
        0x55
        0x1e
        0x1b
        0xe
        0x1b
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x9
        0x9
        0x8
        0x17
        0x25
        0xc
        0x48
        0x54
        0x9
        0xe
        0x9
    .end array-data

    .line 305
    :array_1
    .array-data 4
        0x29
        0x1f
        0x19
        0xf
        0x8
        0x1f
        0x2a
        0x16
        0x1b
        0x3
        0x18
        0x1b
        0x19
        0x11
        0x25
        0xa
        0x16
        0x1b
        0x3
    .end array-data

    .line 310
    :array_2
    .array-data 4
        0x29
        0x19
        0x8
        0x1f
        0x1f
        0x14
        0x37
        0x13
        0x8
        0x8
        0x15
        0x8
        0x13
        0x14
        0x1d
        0x25
        0x1f
        0x14
        0x1b
        0x18
        0x16
        0x1f
    .end array-data
.end method


# virtual methods
.method SSCPUControl(I)V
    .locals 7
    .param p1, "cpuFreq"    # I

    .prologue
    const/4 v6, -0x1

    .line 243
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    if-ne v0, p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 248
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mContext:Landroid/content/Context;

    const-string v2, "SS_CPU_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 251
    :cond_2
    if-ne p1, v6, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 253
    iput v6, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    goto :goto_0

    .line 257
    :cond_3
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    .line 259
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 260
    iput p1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    .line 261
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSCPUControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0
.end method

.method SSGPUControl(I)V
    .locals 6
    .param p1, "gpuFreq"    # I

    .prologue
    .line 269
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSGpuMaxFreq:I

    if-ne v0, p1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mContext:Landroid/content/Context;

    const-string v2, "SS_GPU_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    .line 276
    :cond_1
    iput p1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSGpuMaxFreq:I

    .line 278
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 282
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSGPUControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0
.end method

.method SSHeatControl(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->getInitialValues()V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    if-eqz v0, :cond_4

    .line 134
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-nez v0, :cond_2

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 138
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeCPUStep(Z)V

    .line 140
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    .line 173
    :goto_1
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSHeatControl :: MAXCPULevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , MAXGPULevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_4
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_1

    .line 145
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeGPUStep(Z)V

    .line 148
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    goto :goto_1

    .line 151
    :cond_6
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    .line 152
    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeCPUStep(Z)V

    .line 157
    :goto_2
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 158
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    if-ne v0, v2, :cond_7

    .line 159
    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeGPUStep(Z)V

    .line 165
    :cond_7
    :goto_3
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    if-ne v0, v2, :cond_8

    .line 166
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    .line 168
    :cond_8
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 169
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    .line 171
    :cond_9
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    goto :goto_1

    .line 154
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    .line 155
    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    goto :goto_2

    .line 162
    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    .line 163
    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    goto :goto_3
.end method

.method changeCPUStep(Z)V
    .locals 2
    .param p1, "isDown"    # Z

    .prologue
    .line 178
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    if-eqz p1, :cond_2

    .line 182
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I

    if-lt v0, v1, :cond_0

    .line 183
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 184
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    goto :goto_0

    .line 187
    :cond_2
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 188
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    goto :goto_0
.end method

.method changeGPUStep(Z)V
    .locals 4
    .param p1, "isDown"    # Z

    .prologue
    .line 193
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    if-eqz p1, :cond_3

    .line 197
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    sget-object v2, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v2, v2

    iget v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_GPU_MAXLIMIT:I

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-lt v0, v1, :cond_2

    .line 199
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 200
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    goto :goto_0

    .line 202
    :cond_2
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeCPUStep(Z)V

    goto :goto_0

    .line 207
    :cond_3
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 208
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    goto :goto_0
.end method

.method changeStsInitalValues()V
    .locals 7

    .prologue
    .line 361
    const/4 v3, 0x0

    .line 362
    .local v3, "strTemp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 364
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->STS_TEST_FILE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 366
    const-string/jumbo v4, "start_delay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 379
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 382
    if-eqz v0, :cond_1

    .line 383
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 389
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    sget-object v4, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INIT Value change :: SS_START_DELAY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , SS_PREODIC_PERIOD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , PST_START_TEMPERATURE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , PST_STOP_TEMPERATURE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , MINIMUM_CPU_MAXLIMIT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void

    .line 368
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :try_start_4
    const-string v4, "periodic_period"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 369
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 381
    :catchall_0
    move-exception v4

    move-object v0, v1

    .line 382
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_3

    .line 383
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 381
    :cond_3
    :goto_4
    throw v4

    .line 370
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_4
    :try_start_6
    const-string/jumbo v4, "start_temperature"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 371
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    goto/16 :goto_0

    .line 372
    :cond_5
    const-string/jumbo v4, "stop_temperature"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 373
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    goto/16 :goto_0

    .line 374
    :cond_6
    const-string v4, "min_cpu_maxlimit"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 382
    :cond_7
    if-eqz v1, :cond_8

    .line 383
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
    :goto_5
    move-object v0, v1

    .line 388
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 385
    :catch_1
    move-exception v2

    .line 386
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 385
    :catch_2
    move-exception v2

    .line 386
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 385
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 386
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 381
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    goto :goto_3

    .line 378
    :catch_4
    move-exception v2

    goto/16 :goto_1
.end method

.method disableSts()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSHeatControl(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSTSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method enableSts()V
    .locals 4

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    .line 349
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    .line 350
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    .line 351
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSTSRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method getInitialValues()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 213
    sget v0, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    .line 214
    .local v0, "SSRMCPUMaxLimit":I
    sget v1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    .line 215
    .local v1, "SSRMGPUMaxLimit":I
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-nez v3, :cond_1

    .line 216
    :cond_0
    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    const-string v4, "There is no supported table."

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 219
    :cond_1
    if-ne v0, v5, :cond_4

    .line 220
    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 228
    :cond_2
    if-ne v1, v5, :cond_6

    .line 229
    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 237
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    goto :goto_0

    .line 222
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 223
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    aget v3, v3, v2

    if-ne v0, v3, :cond_5

    .line 224
    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 222
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    .end local v2    # "i":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 232
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    aget v3, v3, v2

    if-ne v1, v3, :cond_7

    .line 233
    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 231
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public onFgAppChanged()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 288
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFgAppChanged : RELEASE STS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 292
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    .line 293
    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 294
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    .line 298
    :cond_0
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 316
    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusNotiReceived:: statusName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", statusValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->STATUS_SECURE_PLAYBACK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATUS_SECURE_PLAYBACK:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSecurePlayBack:Z

    .line 326
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSecurePlayBack:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mScreenMirroring:Z

    if-eqz v1, :cond_4

    .line 327
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    if-eqz v1, :cond_2

    .line 328
    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    const-string v2, "Sts is disabled by screen mirroring."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->disableSts()V

    .line 345
    :cond_2
    :goto_1
    return-void

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->STATUS_SCREEN_MIRRORING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATUS_SCREEN_MIRRORING:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mScreenMirroring:Z

    goto :goto_0

    .line 334
    :cond_4
    const-string v1, "FullScreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 336
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 338
    if-eqz p2, :cond_5

    .line 339
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->enableSts()V

    goto :goto_1

    .line 341
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->disableSts()V

    goto :goto_1
.end method
