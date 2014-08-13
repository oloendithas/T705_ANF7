.class public Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonisMini.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field ID_ABOVE_HISPEED_DELAY:I

.field ID_HISPEED_FREQ:I

.field ID_HMP_LOAD_AVG_PERIOD:I

.field ID_TARGET_LOADS:I

.field final TAG:Ljava/lang/String;

.field mIsBrowserForeground:Z

.field mIsBrowserPageLoading:Z

.field mIsCameraRecording:Z

.field mIsChatOnV:Z

.field mIsTargetAppInForeground:Z

.field mListTargetApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x3e

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 27
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->TAG:Ljava/lang/String;

    .line 69
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserForeground:Z

    .line 71
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsCameraRecording:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsChatOnV:Z

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, 0x13

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mListTargetApp:[Ljava/lang/String;

    .line 136
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserPageLoading:Z

    .line 41
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 44
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "79 1100000:83 1500000:90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_TARGET_LOADS:I

    .line 50
    const/16 v0, 0x45

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "39000 1000000:59000 1200000:99000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_ABOVE_HISPEED_DELAY:I

    .line 57
    new-array v0, v4, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1100000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HISPEED_FREQ:I

    .line 63
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "32"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HMP_LOAD_AVG_PERIOD:I

    .line 67
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
        0x3b
        0x1e
        0x15
        0x14
        0x13
        0x9
        0x37
        0x13
        0x14
        0x13
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    :array_3
    .array-data 4
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

    :array_4
    .array-data 4
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

    .line 44
    :array_5
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
        0x25
        0x1f
        0x1b
        0x1d
        0x16
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

    .line 50
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
        0x25
        0x1f
        0x1b
        0x1d
        0x16
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

    .line 57
    :array_7
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
        0x25
        0x1f
        0x1b
        0x1d
        0x16
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

    .line 63
    :array_8
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x11
        0x1f
        0x8
        0x14
        0x1f
        0x16
        0x55
        0x12
        0x17
        0xa
        0x55
        0x16
        0x15
        0x1b
        0x1e
        0x25
        0x1b
        0xc
        0x1d
        0x25
        0xa
        0x1f
        0x8
        0x13
        0x15
        0x1e
        0x25
        0x17
        0x9
    .end array-data
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    .line 105
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mListTargetApp:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 106
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 107
    :cond_2
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    .line 112
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v4

    .line 113
    .local v4, "sm":Lcom/android/server/ssrm/SortingMachine;
    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    if-nez v6, :cond_4

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    .line 105
    .end local v4    # "sm":Lcom/android/server/ssrm/SortingMachine;
    .restart local v5    # "str":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 122
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsCameraRecording:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 130
    :cond_0
    const-string v0, "ChatOnV_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsChatOnV:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 134
    :cond_1
    return-void
.end method

.method public setBrowserPageLoading(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserPageLoading:Z

    .line 140
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 141
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsTargetAppInForeground:Z

    if-eqz v0, :cond_2

    .line 146
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_TARGET_LOADS:I

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HMP_LOAD_AVG_PERIOD:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserForeground:Z

    if-eqz v0, :cond_1

    .line 149
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "99000 1200000:399000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsBrowserPageLoading:Z

    if-eqz v0, :cond_0

    .line 151
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HISPEED_FREQ:I

    const-string v1, "800000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "59000 1000000:139000 1200000:499000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsCameraRecording:Z

    if-eqz v0, :cond_3

    .line 157
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_TARGET_LOADS:I

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 158
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000 1000000:139000 1200000:499000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 159
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HMP_LOAD_AVG_PERIOD:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->mIsChatOnV:Z

    if-eqz v0, :cond_0

    .line 161
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_TARGET_LOADS:I

    const-string v1, "80 900000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->ID_HMP_LOAD_AVG_PERIOD:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0
.end method
