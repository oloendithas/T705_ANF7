.class public Lcom/android/server/ssrm/fgapps/GovernorAdonis;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonis.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# instance fields
.field ID_SAMPLING_DOWN_FACTOR:I

.field ID_SAMPLING_RATE:I

.field ID_UP_STEP_LEVEL_B:I

.field ID_UP_STEP_LEVEL_L:I

.field ID_UP_THRESHOLD:I

.field ID_UP_THRESHOLD_H:I

.field ID_UP_THRESHOLD_L:I

.field final TAG:Ljava/lang/String;

.field mIsHeavyAppInForeground:Z

.field mIsLcdOff:Z

.field mIsTargetAppInForeground:Z

.field mListTargetApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x38

    const/16 v4, 0x37

    const/16 v3, 0x13

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 29
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->TAG:Ljava/lang/String;

    .line 47
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsHeavyAppInForeground:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mListTargetApp:[Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 57
    const/16 v0, 0x3d

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_SAMPLING_DOWN_FACTOR:I

    .line 63
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_SAMPLING_RATE:I

    .line 69
    new-array v0, v5, [I

    fill-array-data v0, :array_a

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1200000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_STEP_LEVEL_B:I

    .line 75
    new-array v0, v5, [I

    fill-array-data v0, :array_b

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "600000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_STEP_LEVEL_L:I

    .line 81
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD:I

    .line 87
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_H:I

    .line 93
    new-array v0, v4, [I

    fill-array-data v0, :array_e

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_L:I

    .line 98
    return-void

    .line 29
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
    .end array-data

    .line 112
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

    :array_4
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
        0x8
        0x15
        0xd
    .end array-data

    :array_6
    .array-data 4
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

    :array_7
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

    .line 57
    :array_8
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

    .line 63
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

    .line 69
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
        0x9
        0xe
        0x1f
        0xa
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x25
        0x18
    .end array-data

    .line 75
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
        0x9
        0xe
        0x1f
        0xa
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x25
        0x16
    .end array-data

    .line 81
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

    .line 87
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
        0x25
        0x12
    .end array-data

    .line 93
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
        0x25
        0x16
    .end array-data
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 167
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mListTargetApp:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 153
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 154
    :cond_1
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    .line 159
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v4

    .line 160
    .local v4, "sm":Lcom/android/server/ssrm/SortingMachine;
    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    if-nez v6, :cond_3

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    .line 164
    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsHeavyAppInForeground:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    .line 152
    .end local v4    # "sm":Lcom/android/server/ssrm/SortingMachine;
    .restart local v5    # "str":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 172
    return-void
.end method

.method public onLockScreenRelease()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 110
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 104
    return-void
.end method

.method updateParameterByScenario()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateParameters:: mIsTargetAppInForeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_1

    .line 180
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_SAMPLING_DOWN_FACTOR:I

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 181
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_SAMPLING_RATE:I

    const-string v1, "80000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 182
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_STEP_LEVEL_B:I

    const-string v1, "1400000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 183
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_STEP_LEVEL_L:I

    const-string v1, "1200000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD:I

    const-string v1, "70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 185
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_H:I

    const-string v1, "80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 186
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_L:I

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsTargetAppInForeground:Z

    if-eqz v0, :cond_2

    .line 188
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_H:I

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->mIsLcdOff:Z

    if-eqz v0, :cond_0

    .line 190
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;->ID_UP_THRESHOLD_L:I

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0
.end method
