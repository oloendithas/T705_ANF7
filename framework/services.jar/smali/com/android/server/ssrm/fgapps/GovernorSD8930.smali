.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8930;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorSD8930.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;


# instance fields
.field ID_SAMPLING_DOWN_FACTOR:I

.field ID_SAMPLING_RATE:I

.field ID_SYNC_FREQ:I

.field ID_UP_THRESHOLD:I

.field final TAG:Ljava/lang/String;

.field mIsHeavyAppInForeground:Z

.field mIsScreenOff:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 30
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->TAG:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->mIsHeavyAppInForeground:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->mIsScreenOff:Z

    .line 43
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 46
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->ID_UP_THRESHOLD:I

    .line 52
    const/16 v0, 0x3d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->ID_SAMPLING_DOWN_FACTOR:I

    .line 58
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "50000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->ID_SAMPLING_RATE:I

    .line 64
    const/16 v0, 0x32

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->ID_SYNC_FREQ:I

    .line 69
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
        0x43
        0x49
        0x4a
    .end array-data

    .line 46
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
        0xf
        0xa
        0x25
        0xe
        0x12
        0x8
        0x1f
        0x9
        0x12
        0x15
        0x16
        0x1e
    .end array-data

    .line 52
    :array_2
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
        0x9
        0x1b
        0x17
        0xa
        0x16
        0x13
        0x14
        0x1d
        0x25
        0x1e
        0x15
        0xd
        0x14
        0x25
        0x1c
        0x1b
        0x19
        0xe
        0x15
        0x8
    .end array-data

    .line 58
    :array_3
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
        0x9
        0x1b
        0x17
        0xa
        0x16
        0x13
        0x14
        0x1d
        0x25
        0x8
        0x1b
        0xe
        0x1f
    .end array-data

    .line 64
    :array_4
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
        0x9
        0x3
        0x14
        0x19
        0x25
        0x1c
        0x8
        0x1f
        0xb
    .end array-data
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 100
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->mIsHeavyAppInForeground:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->mIsScreenOff:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 109
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->mIsScreenOff:Z

    .line 114
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 115
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_0

    .line 74
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->ID_UP_THRESHOLD:I

    const-string v1, "70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->ID_SAMPLING_DOWN_FACTOR:I

    const-string v1, "15"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->ID_SAMPLING_RATE:I

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->ID_SYNC_FREQ:I

    const-string v1, "918000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 78
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->mIsScreenOff:Z

    if-eqz v0, :cond_1

    .line 80
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930;->ID_SAMPLING_RATE:I

    const-string v1, "500000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 81
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
