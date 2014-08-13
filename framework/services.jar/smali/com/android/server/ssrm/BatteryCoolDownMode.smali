.class public Lcom/android/server/ssrm/BatteryCoolDownMode;
.super Ljava/lang/Object;
.source "BatteryCoolDownMode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

.field AP_TEMP_FOR_COOLDOWN:I

.field AP_TEMP_FOR_POWER_OFF:I

.field AP_TEMP_FOR_RELEASE:I

.field final BATTERY_OVERHEAT_LEVEL:Ljava/lang/String;

.field BATT_TEMP_FOR_COOLDOWN:I

.field BATT_TEMP_FOR_POWER_OFF:I

.field BATT_TEMP_FOR_RELEASE:I

.field final BATT_TEMP_LEVEL:Ljava/lang/String;

.field final BCD_PATH:Ljava/lang/String;

.field final CHECK_COOLDOWN_LIST:Ljava/lang/String;

.field final OVERHEAT_ID:Ljava/lang/String;

.field mBatteryOverheatLevel:I

.field mBatteryOverheatLevelPrev:I

.field mDisableCoolDown:Z

.field mExceptionList:[Ljava/lang/String;

.field mExceptionProcessListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mIntentCheckCooldownLevel:Landroid/content/Intent;

.field mIsDisplayedCoolDownAlert:Z

.field mIsRunnableExcuted:Z

.field mKillActiveApplicationsRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/BatteryCoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

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
        0x38
        0x1b
        0xe
        0xe
        0x1f
        0x8
        0x3
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
    const/16 v7, 0x29e

    const/16 v6, 0x14

    const/4 v5, 0x1

    const/16 v4, 0x2bc

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    .line 43
    iput v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    .line 45
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_POWER_OFF:I

    .line 47
    const/16 v0, 0x28a

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_RELEASE:I

    .line 49
    iput v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_COOLDOWN:I

    .line 51
    const/16 v0, 0x352

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->AP_TEMP_FOR_POWER_OFF:I

    .line 53
    iput v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->AP_TEMP_FOR_RELEASE:I

    .line 55
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->AP_TEMP_FOR_COOLDOWN:I

    .line 57
    const-string v0, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    .line 61
    const-string v0, "battery_overheat_level"

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATTERY_OVERHEAT_LEVEL:Ljava/lang/String;

    .line 63
    const-string v0, "batt_temp_level"

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_LEVEL:Ljava/lang/String;

    .line 65
    const-string v0, "overheat_id"

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->OVERHEAT_ID:Ljava/lang/String;

    .line 67
    const-string v0, "check_cooldown_list"

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->CHECK_COOLDOWN_LIST:Ljava/lang/String;

    .line 69
    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/BatteryCoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BCD_PATH:Ljava/lang/String;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x1b

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/BatteryCoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/android/server/ssrm/BatteryCoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-static {v2}, Lcom/android/server/ssrm/BatteryCoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    invoke-static {v2}, Lcom/android/server/ssrm/BatteryCoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-static {v2}, Lcom/android/server/ssrm/BatteryCoolDownMode;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionList:[Ljava/lang/String;

    .line 91
    iput-boolean v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mDisableCoolDown:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsDisplayedCoolDownAlert:Z

    .line 166
    iput-boolean v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsRunnableExcuted:Z

    .line 168
    new-instance v0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/BatteryCoolDownMode$1;-><init>(Lcom/android/server/ssrm/BatteryCoolDownMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BCD_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-boolean v5, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mDisableCoolDown:Z

    .line 98
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-eqz v0, :cond_1

    .line 99
    iput v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_COOLDOWN:I

    .line 100
    const/16 v0, 0x2cb

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_POWER_OFF:I

    .line 101
    iput v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_RELEASE:I

    .line 102
    iput v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->AP_TEMP_FOR_COOLDOWN:I

    .line 103
    const/16 v0, 0x2cb

    iput v0, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->AP_TEMP_FOR_POWER_OFF:I

    .line 104
    iput v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->AP_TEMP_FOR_RELEASE:I

    .line 106
    :cond_1
    return-void

    .line 69
    nop

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

    .line 76
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
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x17
        0x9
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/BatteryCoolDownMode;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/BatteryCoolDownMode;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/BatteryCoolDownMode;->killActiveApplications(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

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
    .line 272
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v5

    .line 274
    .local v5, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v4, "mResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v6, v5, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 281
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

    .line 282
    .local v2, "item":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 284
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
    .line 251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v2, "mResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0x3e8

    invoke-virtual {p1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 255
    .local v3, "mRunningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_2

    .line 256
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

    .line 257
    .local v1, "item":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v4, :cond_0

    .line 258
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_1
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    return-object v2
.end method

.method private killActiveApplications(I)I
    .locals 17
    .param p1, "battOverheatLevel"    # I

    .prologue
    .line 204
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v11

    .line 206
    .local v11, "monitor":Lcom/android/server/ssrm/Monitor;
    sget-object v14, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    const-string v15, "killActiveApplications start"

    invoke-static {v14, v15}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v14, v11, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 209
    .local v6, "mActivityManager":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/ssrm/BatteryCoolDownMode;->getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v10

    .line 210
    .local v10, "mRunningTaskInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    .line 212
    .local v13, "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-lez p1, :cond_8

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/BatteryCoolDownMode;->getLaunchers()Ljava/util/HashMap;

    move-result-object v9

    .line 214
    .local v9, "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v7, "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    .line 216
    .local v8, "mForcedStopNumber":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v12, v1, v3

    .line 217
    .local v12, "pkg":Ljava/lang/String;
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_2

    .line 221
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 222
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 220
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_4

    .line 227
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 228
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 232
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 233
    .local v4, "item":Ljava/lang/String;
    sget-object v14, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " killActiveApplications : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v6, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 237
    .end local v4    # "item":Ljava/lang/String;
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 238
    .local v4, "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v14, "com.sec.android.app.videoplayer"

    iget-object v15, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 239
    sget-object v14, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " killActiveApplications : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v14, v11, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v15, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 241
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 244
    .end local v4    # "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v14, v8

    .line 247
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v7    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "mForcedStopNumber":I
    .end local v9    # "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_5
    return v14

    :cond_8
    const/4 v14, -0x1

    goto :goto_5
.end method

.method private static x([I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [I

    .prologue
    .line 312
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public showCoolDownAlert(I)V
    .locals 8
    .param p1, "msg"    # I

    .prologue
    const/4 v7, 0x0

    .line 288
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    .line 289
    .local v2, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 291
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a62

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 293
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a61

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 295
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a63

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/ssrm/BatteryCoolDownMode$2;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/BatteryCoolDownMode$2;-><init>(Lcom/android/server/ssrm/BatteryCoolDownMode;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 307
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 308
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 309
    return-void
.end method

.method public startBatteryCoolDownMode(II)V
    .locals 8
    .param p1, "batteryTemp"    # I
    .param p2, "apTemp"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 109
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v1

    .line 110
    .local v1, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mDisableCoolDown:Z

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-object v2, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Current Battery Temperature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", apTemp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_POWER_OFF:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->AP_TEMP_FOR_POWER_OFF:I

    if-lt p2, v2, :cond_6

    .line 117
    :cond_2
    iput v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    .line 131
    :goto_1
    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    iget v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    if-eq v2, v3, :cond_5

    .line 132
    sget-object v2, Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatteryCoolDownMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    .line 134
    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    if-lez v2, :cond_c

    .line 135
    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    if-eq v2, v7, :cond_3

    .line 136
    iget-object v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v3, "battery_overheat_level"

    iget v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 141
    :cond_3
    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    if-ne v2, v5, :cond_b

    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    if-eq v2, v7, :cond_b

    const v0, 0xea60

    .line 143
    .local v0, "delay":I
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsRunnableExcuted:Z

    if-eqz v2, :cond_4

    .line 144
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    iput-boolean v6, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsRunnableExcuted:Z

    .line 148
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsRunnableExcuted:Z

    .line 149
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    .end local v0    # "delay":I
    :cond_5
    :goto_3
    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    iput v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    goto/16 :goto_0

    .line 118
    :cond_6
    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_COOLDOWN:I

    if-ge p1, v2, :cond_7

    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->AP_TEMP_FOR_COOLDOWN:I

    if-lt p2, v2, :cond_8

    .line 119
    :cond_7
    iput v5, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    goto/16 :goto_1

    .line 121
    :cond_8
    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevelPrev:I

    if-lez v2, :cond_a

    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->BATT_TEMP_FOR_RELEASE:I

    if-gt p1, v2, :cond_9

    iget v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->AP_TEMP_FOR_RELEASE:I

    if-le p2, v2, :cond_a

    .line 123
    :cond_9
    iput v5, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    goto/16 :goto_1

    .line 125
    :cond_a
    iput v6, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    goto/16 :goto_1

    .line 141
    :cond_b
    const/16 v0, 0x3e8

    goto :goto_2

    .line 152
    :cond_c
    iget-object v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v3, "check_cooldown_list"

    iget-object v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v3, "batt_temp_level"

    iget v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v3, "battery_overheat_level"

    iget v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v3, "overheat_id"

    const v4, 0x1040a60

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object v2, v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 158
    iput-boolean v6, p0, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsDisplayedCoolDownAlert:Z

    goto :goto_3
.end method
