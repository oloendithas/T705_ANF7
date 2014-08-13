.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8974Ondemand.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# instance fields
.field final ONDEMAND_PATH:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsTargetAppForeground:Z

.field mTargetApplicationList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 25
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->TAG:Ljava/lang/String;

    .line 32
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    .line 34
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsTargetAppForeground:Z

    .line 36
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserDashMode:Z

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1b

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x13

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mTargetApplicationList:[Ljava/lang/String;

    .line 131
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->ONDEMAND_PATH:Ljava/lang/String;

    .line 30
    return-void

    .line 25
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
        0x4d
        0x4e
    .end array-data

    .line 38
    :array_1
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

    :array_2
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

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0xa
        0x13
        0x19
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x3f
        0xa
        0x13
        0x19
        0x39
        0x13
        0xe
        0x1b
        0x1e
        0x1f
        0x16
    .end array-data

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

    :array_5
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

    .line 131
    :array_6
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
    .locals 9

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "packageName":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    sget-object v8, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v6

    .line 76
    .local v6, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v6, v5}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    .line 77
    .local v2, "isBrowserForeground":Z
    const/4 v3, 0x0

    .line 79
    .local v3, "isTagetAppForeground":Z
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mTargetApplicationList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v7, v0, v1

    .line 80
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 81
    const/4 v3, 0x1

    .line 86
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    iget-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    if-ne v8, v2, :cond_3

    iget-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsTargetAppForeground:Z

    if-eq v8, v3, :cond_0

    .line 88
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsTargetAppForeground:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandGovernorParameter()V

    goto :goto_0

    .line 79
    .restart local v7    # "str":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 66
    return-void
.end method

.method public setBrowserDashMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserDashMode:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandGovernorParameter()V

    .line 97
    return-void
.end method

.method public updateOndemandGovernorParameter()V
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0xe

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 100
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v0, "step_up_early_hispeed"

    const v1, 0x180600

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 103
    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 104
    const-string/jumbo v0, "step_up_interim_hispeed"

    const v1, 0x1de200

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 105
    const-string v0, "freq_step"

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 106
    const-string/jumbo v0, "up_threshold"

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 107
    const-string v0, "sampling_down_factor"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 128
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsBrowserForeground:Z

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v0, "step_up_early_hispeed"

    const v1, 0x122a00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 111
    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 112
    const-string/jumbo v0, "step_up_interim_hispeed"

    const v1, 0x1a5e00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 113
    const-string v0, "freq_step"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 114
    const-string/jumbo v0, "up_threshold"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 115
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->mIsTargetAppForeground:Z

    if-eqz v0, :cond_2

    .line 117
    const-string v0, "sampling_early_factor"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 118
    const-string v0, "sampling_interim_factor"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "sampling_early_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 121
    const-string/jumbo v0, "step_up_early_hispeed"

    const v1, 0x122a00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 122
    const-string v0, "sampling_interim_factor"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 123
    const-string/jumbo v0, "step_up_interim_hispeed"

    const v1, 0x1a5e00

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 124
    const-string v0, "freq_step"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 125
    const-string/jumbo v0, "up_threshold"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    .line 126
    const-string v0, "sampling_down_factor"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->updateOndemandParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateOndemandParameter(Ljava/lang/String;I)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->ONDEMAND_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Ondemand;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    return-void
.end method
