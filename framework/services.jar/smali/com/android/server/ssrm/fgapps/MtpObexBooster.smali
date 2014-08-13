.class public final Lcom/android/server/ssrm/fgapps/MtpObexBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "MtpObexBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field mBusFreqLockHelper:Landroid/os/DVFSHelper;

.field mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

.field mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field mLockAcquired:Z

.field mMtpTransferOn:Z

.field mObexTransferOn:Z

.field mUsb30Enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->TAG:Ljava/lang/String;

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
        0x37
        0xe
        0xa
        0x35
        0x18
        0x1f
        0x2
        0x38
        0x15
        0x15
        0x9
        0xe
        0x1f
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    .line 40
    return-void
.end method

.method static enableDBurstMode(Z)V
    .locals 6
    .param p0, "enable"    # Z

    .prologue
    .line 141
    sget-object v3, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDBurstMode:: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/16 v3, 0x1b

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "MMC_BURST_PATH":Ljava/lang/String;
    const/16 v1, 0x40

    .line 149
    .local v1, "MMC_DBURST_MODE_VALUE":I
    const/4 v2, 0x0

    .line 151
    .local v2, "MMC_NORMAL_MODE_VALUE":I
    if-eqz p0, :cond_0

    .line 152
    sget-object v3, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->TAG:Ljava/lang/String;

    const-string v4, "64"

    invoke-static {v3, v0, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    sget-object v3, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->TAG:Ljava/lang/String;

    const-string v4, "0"

    invoke-static {v3, v0, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :array_0
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x18
        0x16
        0x15
        0x19
        0x11
        0x55
        0x17
        0x17
        0x19
        0x18
        0x16
        0x11
        0x4a
        0x55
        0x18
        0x11
        0x15
        0xa
        0x9
        0x25
        0x1f
        0x14
    .end array-data
.end method


# virtual methods
.method public onBootComplete()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    .line 56
    const v6, 0x13d620

    .line 59
    .local v6, "MTP_ARM_MIN_FREQ":I
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    .line 62
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    const v3, 0x13d620

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 66
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 69
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v8

    .line 70
    .local v8, "coreNumTable":[I
    if-eqz v8, :cond_0

    array-length v0, v8

    if-lez v0, :cond_0

    .line 71
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 79
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    .line 82
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v7

    .line 83
    .local v7, "busFreqTable":[I
    if-eqz v7, :cond_1

    array-length v0, v7

    if-lez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    aget v2, v7, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 86
    :cond_1
    return-void

    .line 74
    .end local v7    # "busFreqTable":[I
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 59
    :array_0
    .array-data 4
        0x37
        0x2e
        0x2a
        0x25
        0x38
        0x35
        0x35
        0x29
        0x2e
        0x3f
        0x28
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0x37
        0x2e
        0x2a
        0x25
        0x39
        0x35
        0x28
        0x3f
        0x25
        0x38
        0x35
        0x35
        0x29
        0x2e
        0x3f
        0x28
    .end array-data

    .line 79
    :array_2
    .array-data 4
        0x37
        0x2e
        0x2a
        0x25
        0x38
        0x2f
        0x29
        0x25
        0x38
        0x35
        0x35
        0x29
        0x2e
        0x3f
        0x28
    .end array-data
.end method

.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 91
    return-void
.end method

.method onMTPStatusChanged()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    sget-object v2, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMTPStatusChanged:: mMtpTransferOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mObexTransferOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    if-eqz v2, :cond_2

    .line 113
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 115
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 116
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 117
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    .line 126
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->enableDBurstMode(Z)V

    .line 127
    return-void

    .line 119
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 121
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 122
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 123
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 126
    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "connected"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 174
    .local v2, "connected":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "configured"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 175
    .local v1, "configured":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "mtp"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 176
    .local v4, "mtp":Z
    sget-object v5, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB_STATE:: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v5, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "usb"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 178
    .local v3, "mUsbManager":Landroid/hardware/usb/UsbManager;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 179
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onUsb30StatusChanged(Z)V

    .line 184
    .end local v1    # "configured":Z
    .end local v2    # "connected":Z
    .end local v3    # "mUsbManager":Landroid/hardware/usb/UsbManager;
    .end local v4    # "mtp":Z
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local v1    # "configured":Z
    .restart local v2    # "connected":Z
    .restart local v3    # "mUsbManager":Landroid/hardware/usb/UsbManager;
    .restart local v4    # "mtp":Z
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onUsb30StatusChanged(Z)V

    goto :goto_0
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "MTP_fileTransfer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    if-eq v0, p2, :cond_0

    .line 97
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "OBEX_dataTransfer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    if-eq v0, p2, :cond_0

    .line 102
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    goto :goto_0
.end method

.method onUsb30StatusChanged(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    if-eq v0, p1, :cond_0

    .line 162
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    .line 165
    :cond_0
    return-void
.end method

.method public onUsbConnectionStatusChanged(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .prologue
    const/4 v3, 0x0

    .line 131
    sget-object v0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUsbConnectionStatusChanged:: connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-nez p1, :cond_0

    .line 134
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    .line 135
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    .line 136
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    .line 138
    :cond_0
    return-void
.end method
