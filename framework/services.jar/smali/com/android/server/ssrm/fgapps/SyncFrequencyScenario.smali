.class public Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SyncFrequencyScenario.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# instance fields
.field final SYNC_FREQ_PATH:Ljava/lang/String;

.field final SYNC_FREQ_TEST_FILE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field mBrowserDashMode:Z

.field mLastSyncFreq:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x23

    const/16 v3, 0x1c

    const/16 v2, 0x14

    .line 51
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 40
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->TAG:Ljava/lang/String;

    .line 46
    const/16 v1, 0x1f

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->SYNC_FREQ_TEST_FILE:Ljava/lang/String;

    .line 191
    const v1, 0x122a00

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mLastSyncFreq:I

    .line 194
    const/16 v1, 0x32

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->SYNC_FREQ_PATH:Ljava/lang/String;

    .line 218
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mBrowserDashMode:Z

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->SYNC_FREQ_TEST_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "mSyncFreqAppListFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->registerSyncFreqTestList()V

    .line 58
    :cond_0
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 62
    const/16 v1, 0x15

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 66
    new-array v1, v4, [I

    fill-array-data v1, :array_5

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 71
    new-array v1, v4, [I

    fill-array-data v1, :array_6

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 76
    new-array v1, v2, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 80
    const/16 v1, 0x1b

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 85
    new-array v1, v3, [I

    fill-array-data v1, :array_9

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 90
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 94
    const/16 v1, 0x13

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 98
    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 103
    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 107
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_e

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 110
    return-void

    .line 40
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
        0x3
        0x14
        0x19
        0x3c
        0x8
        0x1f
        0xb
        0xf
        0x1f
        0x14
        0x19
        0x3
        0x29
        0x19
        0x1f
        0x14
        0x1b
        0x8
        0x13
        0x15
    .end array-data

    .line 46
    :array_1
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
        0x3
        0x14
        0x19
        0x25
        0x1c
        0x8
        0x1f
        0xb
        0x25
        0x16
        0x13
        0x9
        0xe
        0x54
        0xe
        0x2
        0xe
    .end array-data

    .line 194
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
        0x3
        0x14
        0x19
        0x25
        0x1c
        0x8
        0x1f
        0xb
    .end array-data

    .line 58
    :array_3
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

    .line 62
    :array_4
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
        0x48
    .end array-data

    .line 66
    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    .line 71
    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4d
        0x32
        0x37
    .end array-data

    .line 76
    :array_7
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

    .line 80
    :array_8
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

    .line 85
    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x25
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    .line 90
    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x48
    .end array-data

    .line 94
    :array_b
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

    .line 98
    :array_c
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

    .line 103
    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x1b
        0x11
        0x1b
        0x15
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data

    .line 107
    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xd
        0x12
        0x1b
        0xe
        0x9
        0x1b
        0xa
        0xa
    .end array-data
.end method


# virtual methods
.method calculateCurrentSyncFreq()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const v3, 0x122a00

    .line 162
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 188
    :cond_1
    :goto_0
    return v2

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "foregroundPackageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 171
    sget-object v4, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 172
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 173
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mBrowserDashMode:Z

    if-eqz v2, :cond_3

    .line 174
    const v2, 0x180600

    goto :goto_0

    .line 176
    :cond_3
    const v2, 0xd7a00

    goto :goto_0

    .line 179
    :cond_4
    const-string v4, "com.sec.android.app.launcher"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v2, v3

    .line 181
    goto :goto_0

    .line 184
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isPackageExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 188
    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->registerPreloadApp()V

    .line 159
    return-void
.end method

.method public onFgAppChanged()V
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->calculateCurrentSyncFreq()I

    move-result v0

    .line 206
    .local v0, "mCurrentSyncFreq":I
    iget v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mLastSyncFreq:I

    if-ne v1, v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iput v0, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mLastSyncFreq:I

    .line 210
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->SYNC_FREQ_PATH:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 216
    return-void
.end method

.method registerPreloadApp()V
    .locals 9

    .prologue
    .line 135
    sget-object v8, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 136
    .local v5, "mPackageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, "launcherIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/16 v8, 0x20

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 141
    .local v4, "mAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 142
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 145
    .local v6, "packageName":Ljava/lang/String;
    const/16 v8, 0x80

    :try_start_0
    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 147
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 148
    invoke-virtual {p0, v6}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method registerSyncFreqTestList()V
    .locals 7

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 116
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->SYNC_FREQ_TEST_FILE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 118
    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerSyncFreqTestList::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 122
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 125
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v1, :cond_2

    .line 126
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v0, v1

    .line 131
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 124
    :catchall_0
    move-exception v4

    .line 125
    :goto_4
    if-eqz v0, :cond_3

    .line 126
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 124
    :cond_3
    :goto_5
    throw v4

    .line 128
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 129
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 129
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 124
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 121
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public setBrowserDashMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mBrowserDashMode:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->onFgAppChanged()V

    .line 223
    return-void
.end method
