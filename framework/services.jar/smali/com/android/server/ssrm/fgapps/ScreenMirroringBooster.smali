.class public Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "ScreenMirroringBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field public static final STATUS_SCREEN_MIRRORING:Ljava/lang/String;

.field public static final STATUS_SECURE_PLAYBACK:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mExceptionEnabled:Z

.field private static mScreenMirroring:Z

.field private static mSecurePlayBack:Z


# instance fields
.field private mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

.field private mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

.field private mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

.field mIsSetDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    .line 38
    sput-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    .line 40
    sput-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    .line 42
    sput-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    .line 151
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->STATUS_SECURE_PLAYBACK:Ljava/lang/String;

    .line 156
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->STATUS_SCREEN_MIRRORING:Ljava/lang/String;

    return-void

    .line 30
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
        0x38
        0x15
        0x15
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    .line 151
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

    .line 156
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

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    .line 71
    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    .line 73
    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    .line 75
    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    .line 36
    return-void
.end method

.method private static sendSIOPExceptionIntent(Z)V
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 45
    sget-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    if-ne v1, p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    sput-boolean p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    .line 49
    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSIOPExceptionIntent:: mExceptionEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "boostIntent":Landroid/content/Intent;
    const/16 v1, 0x2a

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "SSRM_STATUS_NAME"

    const/16 v2, 0x16

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->x([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "SSRM_STATUS_VALUE"

    sget-boolean v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "PackageName"

    sget-object v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 53
    :array_0
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
        0x13
        0x14
        0xe
        0x1f
        0x14
        0xe
        0x54
        0x1b
        0x19
        0xe
        0x13
        0x15
        0x14
        0x54
        0x29
        0x29
        0x28
        0x37
        0x25
        0x28
        0x3f
        0x2b
        0x2f
        0x3f
        0x29
        0x2e
    .end array-data

    .line 58
    :array_1
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
        0x38
        0x15
        0x15
        0x9
        0xe
        0x1f
        0x8
    .end array-data
.end method

.method private updateStatus()V
    .locals 11

    .prologue
    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    const/16 v10, 0x1a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 78
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 83
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 84
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 86
    :cond_1
    invoke-static {v8}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    .line 87
    iput-boolean v9, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    .line 148
    :cond_2
    :goto_0
    return-void

    .line 91
    :cond_3
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    .line 93
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    if-nez v0, :cond_4

    .line 95
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    new-array v2, v10, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->x([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    .line 99
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    const v6, 0xf4240

    invoke-virtual {v2, v6}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5

    .line 105
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    new-array v2, v10, [I

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->x([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    .line 109
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    const v3, 0x124f80

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_7

    .line 115
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    new-array v2, v10, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    .line 119
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_T:Z

    if-eqz v0, :cond_a

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 132
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 133
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 134
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 135
    invoke-static {v8}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    .line 137
    sget-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStatus:: mSecurePlayBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenMirroring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_9

    :cond_8
    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_c

    .line 140
    :cond_9
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 141
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 142
    invoke-static {v9}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    goto/16 :goto_0

    .line 122
    :cond_a
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    aget v0, v0, v8

    const/4 v1, 0x2

    if-le v0, v1, :cond_b

    .line 124
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    .line 126
    :cond_b
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    .line 143
    :cond_c
    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 145
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 146
    invoke-static {v9}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    goto/16 :goto_0

    .line 95
    :array_0
    .array-data 4
        0x29
        0x39
        0x28
        0x3f
        0x3f
        0x34
        0x25
        0x37
        0x33
        0x28
        0x28
        0x35
        0x28
        0x25
        0x38
        0x35
        0x35
        0x29
        0x2e
        0x3f
        0x28
        0x25
        0x4b
        0x25
        0x4a
        0x3d
    .end array-data

    .line 105
    :array_1
    .array-data 4
        0x29
        0x39
        0x28
        0x3f
        0x3f
        0x34
        0x25
        0x37
        0x33
        0x28
        0x28
        0x35
        0x28
        0x25
        0x38
        0x35
        0x35
        0x29
        0x2e
        0x3f
        0x28
        0x25
        0x4b
        0x25
        0x48
        0x3d
    .end array-data

    .line 115
    :array_2
    .array-data 4
        0x29
        0x39
        0x28
        0x3f
        0x3f
        0x34
        0x25
        0x37
        0x33
        0x28
        0x28
        0x35
        0x28
        0x25
        0x38
        0x35
        0x35
        0x29
        0x2e
        0x3f
        0x28
        0x25
        0x39
        0x35
        0x28
        0x3f
    .end array-data
.end method


# virtual methods
.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->STATUS_SECURE_PLAYBACK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    sput-boolean p2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    .line 164
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->updateStatus()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->STATUS_SCREEN_MIRRORING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sput-boolean p2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    .line 167
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->updateStatus()V

    goto :goto_0
.end method
