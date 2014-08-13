.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8064;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8064.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# instance fields
.field final ONDEMAND_PATH:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mIsHeavyAppInForeground:Z

.field mIsLcdOff:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 30
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsHeavyAppInForeground:Z

    .line 94
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->ONDEMAND_PATH:Ljava/lang/String;

    .line 35
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
        0x4a
        0x4c
        0x4e
    .end array-data

    .line 94
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
    .locals 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    .local v1, "isLcdOff":Z
    sget-object v4, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v3

    .line 67
    .local v3, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v3, v2}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v0

    .line 68
    .local v0, "isHeavyAppInForeground":Z
    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsHeavyAppInForeground:Z

    if-ne v4, v0, :cond_2

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    if-eq v4, v1, :cond_0

    .line 69
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsHeavyAppInForeground:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    .line 71
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateGovernorParameter()V

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 44
    return-void
.end method

.method public onLockScreenRelease()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateGovernorParameter()V

    .line 56
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    .line 49
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateGovernorParameter()V

    .line 50
    return-void
.end method

.method public updateGovernorParameter()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "up_threshold"

    const/16 v1, 0x46

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 78
    const-string v0, "sampling_down_factor"

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 79
    const-string v0, "sampling_rate"

    const/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 80
    const-string/jumbo v0, "sync_freq"

    const v1, 0x17e530

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 81
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "sampling_rate"

    const v1, 0x7a120

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    goto :goto_0

    .line 85
    :cond_1
    const-string/jumbo v0, "up_threshold"

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 86
    const-string v0, "sampling_down_factor"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 87
    const-string v0, "sampling_rate"

    const v1, 0xc350

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 88
    const-string/jumbo v0, "sync_freq"

    const v1, 0xe01f0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 89
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateParameter(Ljava/lang/String;I)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->ONDEMAND_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    return-void
.end method
