.class public Lcom/android/server/ssrm/CoolDownMode;
.super Ljava/lang/Object;
.source "CoolDownMode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

.field BATTERY_COOLDOWN_TEMP_6:I

.field BATTERY_COOLDOWN_TEMP_8:I

.field final CD_PATH:Ljava/lang/String;

.field final CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

.field final CHECK_COOLDOWN_LIST:Ljava/lang/String;

.field DELAY_FOR_SIOPLEVE_6:I

.field DELAY_FOR_SIOPLEVE_8:I

.field final OVERHEAT_ID:Ljava/lang/String;

.field VZW_COOLDOWN_TEMP_LEVEL_6:I

.field VZW_COOLDOWN_TEMP_LEVEL_8:I

.field final VZW_COOL_DOWN_LEVEL_0:I

.field final VZW_COOL_DOWN_LEVEL_6:I

.field final VZW_COOL_DOWN_LEVEL_8:I

.field isSetupWizardCompleted:Z

.field mCurSIOPStep:I

.field mDisableCoolDown:Z

.field mExceptionList:[Ljava/lang/String;

.field mExceptionListInCall:[Ljava/lang/String;

.field final mIntentCheckCooldownLevel:Landroid/content/Intent;

.field mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

.field mPrevSIOPStep:I

.field mSendSIOPLevelDelay:J

.field mStartKillActiveApplicationsRunnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

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
        0x39
        0x15
        0x15
        0x16
        0x3e
        0x15
        0xd
        0x14
        0x37
        0x15
        0x1e
        0x1f
    .end array-data
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    .line 42
    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    .line 46
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_6:I

    .line 48
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_8:I

    .line 50
    const/16 v0, 0x262

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    .line 52
    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    .line 54
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_6:I

    .line 56
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_8:I

    .line 58
    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_0:I

    .line 60
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_6:I

    .line 62
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_8:I

    .line 64
    iput-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    .line 66
    iput-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    .line 68
    iput-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    .line 70
    const-string v0, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    .line 74
    const-string v0, "check_cooldown_level"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

    .line 76
    const-string v0, "check_cooldown_list"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->CHECK_COOLDOWN_LIST:Ljava/lang/String;

    .line 78
    const-string v0, "overheat_id"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->OVERHEAT_ID:Ljava/lang/String;

    .line 80
    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->CD_PATH:Ljava/lang/String;

    .line 183
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x1b

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x11

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x1c

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-static {v2}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-static {v2}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mExceptionList:[Ljava/lang/String;

    .line 205
    new-array v0, v7, [Ljava/lang/String;

    new-array v1, v5, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x1a

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1d

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    invoke-static {v1}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mExceptionListInCall:[Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/android/server/ssrm/CoolDownMode$2;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CoolDownMode$2;-><init>(Lcom/android/server/ssrm/CoolDownMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/ssrm/CoolDownMode;->CD_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iput-boolean v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    .line 90
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_2

    .line 91
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    .line 92
    const/16 v0, 0x29e

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    if-eqz v0, :cond_1

    .line 94
    :cond_3
    const/16 v0, 0x276

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    .line 95
    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    goto :goto_0

    .line 80
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
        0x19
        0x15
        0x15
        0x16
        0x1e
        0x15
        0xd
        0x14
        0x25
        0x1e
        0x13
        0x9
        0x1b
        0x18
        0x16
        0x1f
    .end array-data

    .line 183
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x11
        0x14
        0x15
        0x2
        0x54
        0x19
        0x15
        0x14
        0xe
        0x1b
        0x13
        0x14
        0x1f
        0x8
        0x1b
        0x1d
        0x1f
        0x14
        0xe
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x19
        0x15
        0x14
        0xe
        0x1b
        0x19
        0xe
        0x9
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xa
        0x12
        0x15
        0x14
        0x1f
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x13
        0x14
        0x19
        0x1b
        0x16
        0x16
        0xf
        0x13
    .end array-data

    :array_5
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
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xc
        0x0
        0x14
        0x1b
        0xc
        0x13
        0x1d
        0x1b
        0xe
        0x15
        0x8
    .end array-data

    .line 205
    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x9
        0x1f
        0xe
        0xe
        0x13
        0x14
        0x1d
        0x9
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x16
        0x16
        0x9
        0x12
        0x1b
        0x8
        0x1f
        0x19
        0x1b
        0x9
        0xe
        0xa
        0x16
        0x1b
        0x3
        0x1f
        0x8
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0xd
        0x1c
        0x1e
        0x18
        0x8
        0x15
        0x11
        0x1f
        0x8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/CoolDownMode;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CoolDownMode;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CoolDownMode;->killActiveApplications(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getLaunchers()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v5

    .line 340
    .local v5, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v4, "mResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v6, v5, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 347
    .local v3, "mLauncherInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 348
    .local v2, "item":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    .end local v2    # "item":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "activityManager"    # Landroid/app/ActivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v2, "mResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0x3e8

    invoke-virtual {p1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 321
    .local v3, "mRunningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_2

    .line 322
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 323
    .local v1, "item":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v4, :cond_0

    .line 324
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_1
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    return-object v2
.end method

.method private killActiveApplications(I)I
    .locals 16
    .param p1, "siopLevel"    # I

    .prologue
    .line 254
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v10

    .line 256
    .local v10, "monitor":Lcom/android/server/ssrm/Monitor;
    const-string v13, "checkingSIOP"

    const-string v14, "killActiveApplications start"

    invoke-static {v13, v14}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v13, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ssrm/CoolDownMode;->getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v9

    .line 258
    .local v9, "mRunningTaskInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v13, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v13}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v12

    .line 260
    .local v12, "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/16 v13, 0x8

    move/from16 v0, p1

    if-ne v0, v13, :cond_b

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/CoolDownMode;->getLaunchers()Ljava/util/HashMap;

    move-result-object v8

    .line 262
    .local v8, "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v6, "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .line 264
    .local v7, "mForcedStopNumber":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/CoolDownMode;->mExceptionList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v11, v1, v3

    .line 265
    .local v11, "pkg":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v6, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_0
    iget-boolean v13, v10, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v13, :cond_1

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/CoolDownMode;->mExceptionListInCall:[Ljava/lang/String;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v11, v1, v3

    .line 269
    .restart local v11    # "pkg":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v6, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 274
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 275
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 273
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 279
    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_6

    .line 280
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "com.vznavigator"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 282
    :cond_4
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 279
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 286
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 287
    .local v4, "item":Ljava/lang/String;
    sget-object v13, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " killActiveApplications : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v13, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v13, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 291
    .end local v4    # "item":Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 292
    .local v4, "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v13, "com.sec.android.app.videoplayer"

    iget-object v14, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 293
    sget-object v13, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " killActiveApplications : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v13, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v14, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 295
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 298
    .end local v4    # "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v7, v13

    .line 313
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v6    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v7    # "mForcedStopNumber":I
    .end local v8    # "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_a
    :goto_6
    return v7

    .line 299
    :cond_b
    const/4 v13, 0x6

    move/from16 v0, p1

    if-lt v0, v13, :cond_d

    .line 300
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 301
    .restart local v6    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .line 302
    .restart local v7    # "mForcedStopNumber":I
    const/16 v13, 0x12

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    invoke-static {v13}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_a

    .line 306
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 307
    iget-object v14, v10, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 308
    add-int/lit8 v7, v7, 0x1

    .line 305
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 313
    .end local v2    # "i":I
    .end local v6    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v7    # "mForcedStopNumber":I
    :cond_d
    const/4 v7, -0x1

    goto :goto_6

    .line 302
    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x14
        0xe
        0x15
        0x54
        0x9
        0xe
        0x1b
        0x18
        0x13
        0x16
        0x13
        0xe
        0x3
    .end array-data
.end method

.method private static x([I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [I

    .prologue
    .line 364
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method isSetupWizardFinished()Z
    .locals 3

    .prologue
    .line 354
    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "setupFinished":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    sget-object v1, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    const-string v2, " isSetupWizardFinished ? : true "

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v1, 0x1

    .line 360
    :goto_0
    return v1

    .line 359
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    const-string v2, " isSetupWizardFinished ? : false "

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showCoolDownAlert(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    .line 161
    .local v2, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 163
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a5e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a5d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 167
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a5f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/ssrm/CoolDownMode$1;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/CoolDownMode$1;-><init>(Lcom/android/server/ssrm/CoolDownMode;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 179
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 180
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 181
    return-void
.end method

.method public startVZWCoolDownMode(I)V
    .locals 11
    .param p1, "currentTemperature"    # I

    .prologue
    const v10, 0x1040a5c

    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    .line 101
    .local v2, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    if-eqz v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    if-nez v3, :cond_4

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    iput-boolean v7, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    .line 108
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    if-eqz v3, :cond_0

    .line 113
    :cond_4
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryTemperature()I

    move-result v0

    .line 114
    .local v0, "battTemp":I
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    if-ge p1, v3, :cond_5

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_8:I

    if-lt v0, v3, :cond_8

    .line 115
    :cond_5
    iput v9, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    .line 125
    :goto_1
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    iget v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    if-eq v3, v4, :cond_7

    .line 126
    sget-object v3, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CoolDownLevel is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v1, "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-ne v3, v9, :cond_b

    .line 129
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_8:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    .line 147
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    if-eqz v3, :cond_6

    .line 148
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iput-boolean v6, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    .line 151
    :cond_6
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-eqz v3, :cond_7

    .line 152
    iput-boolean v7, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    .line 153
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    .end local v1    # "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_7
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    goto :goto_0

    .line 116
    :cond_8
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    if-ge p1, v3, :cond_9

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_6:I

    if-lt v0, v3, :cond_a

    .line 118
    :cond_9
    iput v8, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    goto :goto_1

    .line 120
    :cond_a
    iput v6, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    goto :goto_1

    .line 130
    .restart local v1    # "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_b
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-ne v3, v8, :cond_c

    .line 131
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_6:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    .line 132
    const/16 v3, 0x12

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/android/server/ssrm/CoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_list"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_level"

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "overheat_id"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 141
    :cond_c
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_list"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_level"

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "overheat_id"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 132
    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x14
        0xe
        0x15
        0x54
        0x9
        0xe
        0x1b
        0x18
        0x13
        0x16
        0x13
        0xe
        0x3
    .end array-data
.end method
