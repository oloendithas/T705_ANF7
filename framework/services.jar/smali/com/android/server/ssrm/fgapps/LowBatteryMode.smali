.class public final Lcom/android/server/ssrm/fgapps/LowBatteryMode;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "LowBatteryMode.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field final LOW_BATTERY_TEST_FILE:Ljava/lang/String;

.field mBatteryLevel:I

.field mCpuMaxFrequency:I

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mFisrtLowBatteryStepCpuMaxLimit:I

.field mFisrtLowBatteryStepLevel:I

.field mIsCameraPackage:Z

.field mSecondLowBatteryStepCpuMaxLimit:I

.field mSecondLowBatteryStepLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->DEBUG:Z

    return-void

    .line 40
    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x36
        0x15
        0xd
        0x38
        0x1b
        0xe
        0xe
        0x1f
        0x8
        0x3
        0x37
        0x15
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 46
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepLevel:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepLevel:I

    .line 50
    const v0, 0x19f0a0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    .line 52
    const v0, 0x16e360

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I

    .line 56
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    .line 58
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mIsCameraPackage:Z

    .line 138
    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->LOW_BATTERY_TEST_FILE:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->initLowBatteryModeParameters()V

    .line 62
    return-void

    .line 138
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
        0x16
        0x15
        0xd
        0x25
        0x18
        0x1b
        0xe
        0xe
        0x1f
        0x8
        0x3
        0x25
        0x17
        0x15
        0x1e
        0x1f
    .end array-data
.end method

.method static getBatteryLevel()I
    .locals 3

    .prologue
    .line 96
    const-string v1, "dev.ssrm.bat_level"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 98
    :cond_0
    const/16 v1, -0x3e7

    .line 100
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method changeLowBatteryModeParameters()V
    .locals 6

    .prologue
    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, "strTemp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 158
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->LOW_BATTERY_TEST_FILE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 160
    const-string v4, "1st_low_batt_step"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepLevel:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 171
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    if-eqz v0, :cond_1

    .line 175
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 181
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 162
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :try_start_4
    const-string v4, "2nd_low_batt_step"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 163
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepLevel:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v4

    move-object v0, v1

    .line 174
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_3

    .line 175
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 173
    :cond_3
    :goto_4
    throw v4

    .line 164
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_4
    :try_start_6
    const-string v4, "1st_low_batt_cpu_max"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    goto :goto_0

    .line 166
    :cond_5
    const-string v4, "2nd_low_batt_cpu_max"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 174
    :cond_6
    if-eqz v1, :cond_7

    .line 175
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_5
    move-object v0, v1

    .line 180
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 177
    :catch_1
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 177
    :catch_2
    move-exception v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 177
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 173
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    goto :goto_3

    .line 170
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method initLowBatteryModeParameters()V
    .locals 2

    .prologue
    const v1, 0x155cc0

    .line 144
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    .line 146
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I

    .line 149
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->LOW_BATTERY_TEST_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->changeLowBatteryModeParameters()V

    .line 152
    :cond_2
    return-void
.end method

.method public onBatteryChange(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 74
    const-string v2, "level"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "level":I
    invoke-static {}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->getBatteryLevel()I

    move-result v0

    .line 76
    .local v0, "devLevel":I
    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_0

    .line 77
    move v1, v0

    .line 79
    :cond_0
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryTemperature()I

    move-result v2

    if-lez v2, :cond_2

    .line 80
    iget v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    if-eq v2, v3, :cond_1

    .line 81
    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    .line 82
    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    .line 83
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    sget-object v2, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBatteryChange:: mCurrentBatteryLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    if-eq v1, v2, :cond_1

    .line 89
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    .line 90
    iget v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->updateLowBatteryMode(I)V

    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 6

    .prologue
    .line 67
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mContext:Landroid/content/Context;

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 70
    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x38
        0x3b
        0x2e
        0x2e
        0x25
        0x39
        0x2a
        0x2f
        0x25
        0x37
        0x3b
        0x22
    .end array-data
.end method

.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 128
    return-void
.end method

.method updateLowBatteryMode(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 104
    const/4 v0, -0x1

    .line 105
    .local v0, "currentCpuMaxFreq":I
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepLevel:I

    if-gt p1, v1, :cond_1

    .line 106
    iget v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I

    .line 113
    :goto_0
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    if-eq v0, v1, :cond_0

    .line 114
    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    .line 115
    sget-object v1, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLowBatteryMode:: curFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 117
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v2, "CPU"

    iget v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 118
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    .line 123
    :cond_0
    :goto_1
    return-void

    .line 107
    :cond_1
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepLevel:I

    if-gt p1, v1, :cond_2

    .line 108
    iget v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method
