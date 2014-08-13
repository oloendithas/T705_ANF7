.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8x26;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8x26.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ONDEMAND_PATH:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsCameraRecordingForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 27
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->TAG:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserDashMode:Z

    .line 76
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->ONDEMAND_PATH:Ljava/lang/String;

    .line 32
    return-void

    .line 27
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
        0x29
        0x3e
        0x42
        0x2
        0x48
        0x4c
    .end array-data

    .line 76
    :array_1
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
        0x15
        0x14
        0x1e
        0x1f
        0x17
        0x1b
        0x14
        0x1e
        0x55
    .end array-data
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 3

    .prologue
    .line 47
    sget-object v2, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 48
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    .line 49
    .local v0, "isBrowserForeground":Z
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    if-eq v2, v0, :cond_0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandGovernorParameter()V

    .line 53
    :cond_0
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 43
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Camera_recordingDual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    .line 59
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandGovernorParameter()V

    .line 61
    :cond_1
    return-void
.end method

.method public updateOndemandGovernorParameter()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 64
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsBrowserForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->mIsCameraRecordingForeground:Z

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 66
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 67
    const-string v0, "sampling_interim_factor"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 70
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 71
    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateOndemandParameter(Ljava/lang/String;I)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->ONDEMAND_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    return-void
.end method
