.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorSD8930AB.java"

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

    .line 43
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 30
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->TAG:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->mIsHeavyAppInForeground:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->mIsScreenOff:Z

    .line 44
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 47
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->ID_UP_THRESHOLD:I

    .line 54
    const/16 v0, 0x3d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->ID_SAMPLING_DOWN_FACTOR:I

    .line 61
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "50000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->ID_SAMPLING_RATE:I

    .line 68
    const/16 v0, 0x32

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1026000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->ID_SYNC_FREQ:I

    .line 73
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
        0x3b
        0x38
    .end array-data

    .line 47
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

    .line 54
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

    .line 61
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

    .line 68
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
    .line 97
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 104
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->mIsHeavyAppInForeground:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 125
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->mIsScreenOff:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 113
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->mIsScreenOff:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 119
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_0

    .line 78
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->ID_UP_THRESHOLD:I

    const-string v1, "70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->ID_SAMPLING_DOWN_FACTOR:I

    const-string v1, "15"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->ID_SAMPLING_RATE:I

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->ID_SYNC_FREQ:I

    const-string v1, "1458000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 82
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->mIsScreenOff:Z

    if-eqz v0, :cond_1

    .line 84
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8930AB;->ID_SAMPLING_RATE:I

    const-string v1, "500000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 85
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
