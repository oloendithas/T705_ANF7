.class public final Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorPXA1x88Interactive.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ASPHALT6_PKG1:Ljava/lang/String;

.field final ASPHALT6_PKG2:Ljava/lang/String;

.field final CASTLE_MASTER_PKG:Ljava/lang/String;

.field ID_ABOVE_HISPEED_DELAY:I

.field ID_BOOST:I

.field ID_CPUFREQ_MAX_FORCED:I

.field ID_GO_HISPEED_LOAD:I

.field ID_HISPEED_FREQ:I

.field ID_IO_IS_BUSY:I

.field ID_MIN_SAMPLE_TIME:I

.field ID_TARGET_LOADS:I

.field ID_TIMER_RATE:I

.field ID_TIMER_SLACK:I

.field ID_VPU_SET_FREQ:I

.field final REAL_RACING3_PKG1:Ljava/lang/String;

.field final REAL_RACING3_PKG2:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field final TEMPLE_RUN_PKG:Ljava/lang/String;

.field final VIDEO_PLAYER_PKG:Ljava/lang/String;

.field mDdrMaxHelper:Landroid/os/DVFSHelper;

.field mDdrMinHelper:Landroid/os/DVFSHelper;

.field mGameTrigger:Z

.field mGpuMinHelper:Landroid/os/DVFSHelper;

.field mIsCameraRecording:Z

.field mIsCpuPowerSaving:Z

.field mIsHeavyAppInForeground:Z

.field mIsHighCpuLoadGame:Z

.field mIsOverheatGame:Z

.field mIsVideoPlayback:Z

.field mOverHeatGameTrigger:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x38

    const/16 v4, 0x36

    const/16 v3, 0x23

    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 31
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->TAG:Ljava/lang/String;

    .line 185
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCameraRecording:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHeavyAppInForeground:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsVideoPlayback:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsOverheatGame:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    .line 206
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->CASTLE_MASTER_PKG:Ljava/lang/String;

    .line 212
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->TEMPLE_RUN_PKG:Ljava/lang/String;

    .line 217
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->VIDEO_PLAYER_PKG:Ljava/lang/String;

    .line 223
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->REAL_RACING3_PKG1:Ljava/lang/String;

    .line 228
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->REAL_RACING3_PKG2:Ljava/lang/String;

    .line 233
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ASPHALT6_PKG1:Ljava/lang/String;

    .line 239
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ASPHALT6_PKG2:Ljava/lang/String;

    .line 280
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    .line 282
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    .line 65
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 68
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_CPUFREQ_MAX_FORCED:I

    .line 73
    const/16 v0, 0x3f

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_ABOVE_HISPEED_DELAY:I

    .line 79
    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_BOOST:I

    .line 85
    const/16 v0, 0x3b

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_GO_HISPEED_LOAD:I

    .line 91
    new-array v0, v5, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "624000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_HISPEED_FREQ:I

    .line 97
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_IO_IS_BUSY:I

    .line 103
    const/16 v0, 0x3b

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "80000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_MIN_SAMPLE_TIME:I

    .line 109
    new-array v0, v4, [I

    fill-array-data v0, :array_f

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_TIMER_RATE:I

    .line 115
    const/16 v0, 0x37

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "80000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_TIMER_SLACK:I

    .line 121
    new-array v0, v5, [I

    fill-array-data v0, :array_11

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_TARGET_LOADS:I

    .line 127
    const/16 v0, 0x33

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "416000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_VPU_SET_FREQ:I

    .line 134
    new-array v0, v2, [I

    fill-array-data v0, :array_13

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 138
    new-array v0, v2, [I

    fill-array-data v0, :array_14

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 142
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_15

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 146
    new-array v0, v2, [I

    fill-array-data v0, :array_16

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 150
    new-array v0, v3, [I

    fill-array-data v0, :array_17

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 155
    const/16 v0, 0x3f

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 160
    return-void

    .line 31
    nop

    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x3d
        0x15
        0xc
        0x1f
        0x8
        0x14
        0x15
        0x8
        0x2a
        0x22
        0x3b
        0x4b
        0x2
        0x42
        0x42
        0x33
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
    .end array-data

    .line 206
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x16
        0xa
        0x12
        0x1b
        0x19
        0x16
        0x15
        0xf
        0x1e
        0x54
        0x19
        0x1b
        0x9
        0xe
        0x16
        0x1f
        0x17
        0x1b
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    .line 212
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
    .end array-data

    .line 217
    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
        0xa
        0x16
        0x1b
        0x3
        0x1f
        0x8
    .end array-data

    .line 223
    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x8
        0x15
        0xd
    .end array-data

    .line 228
    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x14
        0x1b
    .end array-data

    .line 233
    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    .line 239
    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    .line 68
    :array_8
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0xa
        0x15
        0xd
        0x1f
        0x8
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x25
        0x17
        0x1b
        0x2
        0x25
        0x1c
        0x15
        0x8
        0x19
        0x1f
        0x1e
    .end array-data

    .line 73
    :array_9
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x1b
        0x18
        0x15
        0xc
        0x1f
        0x25
        0x12
        0x13
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0x25
        0x1e
        0x1f
        0x16
        0x1b
        0x3
    .end array-data

    .line 79
    :array_a
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x18
        0x15
        0x15
        0x9
        0xe
    .end array-data

    .line 85
    :array_b
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x1d
        0x15
        0x25
        0x12
        0x13
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 91
    :array_c
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x12
        0x13
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0x25
        0x1c
        0x8
        0x1f
        0xb
    .end array-data

    .line 97
    :array_d
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x13
        0x15
        0x25
        0x13
        0x9
        0x25
        0x18
        0xf
        0x9
        0x3
    .end array-data

    .line 103
    :array_e
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x17
        0x13
        0x14
        0x25
        0x9
        0x1b
        0x17
        0xa
        0x16
        0x1f
        0x25
        0xe
        0x13
        0x17
        0x1f
    .end array-data

    .line 109
    :array_f
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0xe
        0x13
        0x17
        0x1f
        0x8
        0x25
        0x8
        0x1b
        0xe
        0x1f
    .end array-data

    .line 115
    :array_10
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0xe
        0x13
        0x17
        0x1f
        0x8
        0x25
        0x9
        0x16
        0x1b
        0x19
        0x11
    .end array-data

    .line 121
    :array_11
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0xe
        0x1b
        0x8
        0x1d
        0x1f
        0xe
        0x25
        0x16
        0x15
        0x1b
        0x1e
        0x9
    .end array-data

    .line 127
    :array_12
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x19
        0x16
        0x1b
        0x9
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x1e
        0x1f
        0xc
        0x1c
        0x8
        0x1f
        0xb
        0x57
        0xc
        0xa
        0xf
        0x54
        0x4a
        0x55
        0xf
        0x9
        0x1f
        0x8
        0x9
        0xa
        0x1b
        0x19
        0x1f
        0x55
        0x9
        0x1f
        0xe
        0x25
        0x1c
        0x8
        0x1f
        0xb
    .end array-data

    .line 134
    :array_13
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
    .end array-data

    .line 138
    :array_14
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
    .end array-data

    .line 142
    :array_15
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
        0x48
    .end array-data

    .line 146
    :array_16
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x16
        0x15
        0x15
        0x54
        0x9
        0xf
        0x18
        0xd
        0x1b
        0x3
        0x9
        0xf
        0x8
        0x1c
    .end array-data

    .line 150
    :array_17
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3e
        0x37
        0x32
        0x37
    .end array-data

    .line 155
    :array_18
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x15
        0x17
        0x48
        0xf
        0x9
        0x54
        0x12
        0x15
        0x17
        0x1f
        0x8
        0xf
        0x14
        0x18
        0x1b
        0xe
        0xe
        0x16
        0x1f
        0x48
        0x54
        0x14
        0x15
        0x8
        0x17
        0x1b
        0x16
        0x54
        0x1c
        0x8
        0x1f
        0x1f
        0x1c
        0xf
        0x16
        0x16
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1d
        0x16
        0x15
        0x18
        0x1b
        0x16
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method


# virtual methods
.method public onBootComplete()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x4c2c0

    const-wide/16 v4, 0x0

    .line 309
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mContext:Landroid/content/Context;

    const-string v2, "MRVL_GPU_MIN"

    const/16 v3, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    .line 310
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 312
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mContext:Landroid/content/Context;

    const-string v2, "MRVL_DDR_MAX"

    const/16 v3, 0x14

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMaxHelper:Landroid/os/DVFSHelper;

    .line 313
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 315
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mContext:Landroid/content/Context;

    const-string v2, "MRVL_DDR_MIN"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    .line 316
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 317
    return-void
.end method

.method public onFgAppChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 251
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 253
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHeavyAppInForeground:Z

    .line 256
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->CASTLE_MASTER_PKG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->TEMPLE_RUN_PKG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/server/ssrm/Feature;->MODEL_AGERA:Z

    if-eqz v2, :cond_6

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    .line 260
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->VIDEO_PLAYER_PKG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsVideoPlayback:Z

    .line 262
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->MODEL_MARVELL_DEGAS:Z

    if-eqz v2, :cond_8

    .line 263
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->REAL_RACING3_PKG1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->REAL_RACING3_PKG2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsOverheatGame:Z

    .line 269
    :cond_3
    :goto_3
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsOverheatGame:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    if-eqz v2, :cond_b

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    if-nez v2, :cond_b

    .line 270
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 271
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    .line 277
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    :cond_6
    move v2, v3

    .line 256
    goto :goto_1

    :cond_7
    move v2, v3

    .line 263
    goto :goto_2

    .line 265
    :cond_8
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->MODEL_AGERA:Z

    if-eqz v2, :cond_3

    .line 266
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ASPHALT6_PKG1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ASPHALT6_PKG2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsOverheatGame:Z

    goto :goto_3

    :cond_a
    move v2, v3

    goto :goto_5

    .line 272
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsOverheatGame:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    if-nez v2, :cond_5

    .line 273
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 274
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mOverHeatGameTrigger:Z

    goto :goto_4
.end method

.method public onFgAppInPackageList(Z)V
    .locals 4
    .param p1, "isForeground"    # Z

    .prologue
    const-wide/32 v2, 0x4c2c0

    .line 286
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    .line 287
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    if-nez v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    .line 289
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 290
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 291
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    .line 292
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 294
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 296
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    .line 304
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 305
    return-void

    .line 297
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mDdrMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 299
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 302
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mGameTrigger:Z

    goto :goto_0
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCameraRecording:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 193
    :cond_0
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCpuPowerSaving:Z

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_CPUFREQ_MAX_FORCED:I

    const-string v1, "624000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_3

    .line 169
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_HISPEED_FREQ:I

    const-string v1, "1066000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_BOOST:I

    const-string v1, "100"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_IO_IS_BUSY:I

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_MIN_SAMPLE_TIME:I

    const-string v1, "50000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_GO_HISPEED_LOAD:I

    const-string v1, "80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 178
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsVideoPlayback:Z

    if-eqz v0, :cond_4

    .line 179
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_VPU_SET_FREQ:I

    const-string v1, "208000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 183
    :cond_2
    :goto_1
    return-void

    .line 174
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsHighCpuLoadGame:Z

    if-eqz v0, :cond_1

    .line 175
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_BOOST:I

    const-string v1, "100"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->mIsCameraRecording:Z

    if-eqz v0, :cond_2

    .line 181
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;->ID_VPU_SET_FREQ:I

    const-string v1, "312000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_1
.end method
