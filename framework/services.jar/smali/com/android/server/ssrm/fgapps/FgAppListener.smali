.class public abstract Lcom/android/server/ssrm/fgapps/FgAppListener;
.super Ljava/lang/Object;
.source "FgAppListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ListScrollBoostEventCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
    }
.end annotation


# static fields
.field public static final SSRM_STATUS_NAME:Ljava/lang/String;

.field public static final SSRM_STATUS_NOTIFY:Ljava/lang/String;

.field public static final SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

.field public static final SSRM_STATUS_VALUE:Ljava/lang/String;

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field static mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

.field static mSettingInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;


# instance fields
.field final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private mBootComplete:Z

.field private mForegroundPackageName:Ljava/lang/String;

.field private mIsFgAppInPackageList:Z

.field mIsRegistered:Z

.field private mMultiWindowOn:Z

.field protected final mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    .line 106
    const/16 v0, 0x2a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->SSRM_STATUS_NOTIFY:Ljava/lang/String;

    .line 112
    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

    .line 119
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->SSRM_STATUS_NAME:Ljava/lang/String;

    .line 124
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->SSRM_STATUS_VALUE:Ljava/lang/String;

    .line 393
    new-instance v0, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    .line 403
    new-instance v0, Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mSettingInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;

    return-void

    .line 106
    :array_0
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
        0x13
        0x14
        0xe
        0x1f
        0x14
        0xe
        0x54
        0x1b
        0x19
        0xe
        0x13
        0x15
        0x14
        0x54
        0x29
        0x29
        0x28
        0x37
        0x25
        0x28
        0x3f
        0x2b
        0x2f
        0x3f
        0x29
        0x2e
    .end array-data

    .line 112
    :array_1
    .array-data 4
        0x9
        0x1f
        0x19
        0x25
        0x19
        0x15
        0x14
        0xe
        0x1b
        0x13
        0x14
        0x1f
        0x8
        0x25
        0x4b
        0x54
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
        0x13
        0x14
        0xe
        0x1f
        0x14
        0xe
        0x54
        0x1b
        0x19
        0xe
        0x13
        0x15
        0x14
        0x54
        0x29
        0x29
        0x28
        0x37
        0x25
        0x28
        0x3f
        0x2b
        0x2f
        0x3f
        0x29
        0x2e
    .end array-data

    .line 119
    :array_2
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0x25
        0x29
        0x2e
        0x3b
        0x2e
        0x2f
        0x29
        0x25
        0x34
        0x3b
        0x37
        0x3f
    .end array-data

    .line 124
    :array_3
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0x25
        0x29
        0x2e
        0x3b
        0x2e
        0x2f
        0x29
        0x25
        0x2c
        0x3b
        0x36
        0x2f
        0x3f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    .line 136
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    .line 212
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    .line 215
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPid:I

    .line 245
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    .line 323
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 383
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    .line 405
    return-void

    .line 129
    :array_0
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
        0x19
        0xe
        0x13
        0x15
        0x14
        0x54
        0x34
        0x35
        0x2e
        0x33
        0x3c
        0x23
        0x25
        0x37
        0x2f
        0x36
        0x2e
        0x33
        0x2d
        0x33
        0x34
        0x3e
        0x35
        0x2d
        0x25
        0x29
        0x2e
        0x3b
        0x2e
        0x2f
        0x29
    .end array-data

    .line 136
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
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x2
        0xe
        0x8
        0x1b
        0x54
        0x37
        0x2f
        0x36
        0x2e
        0x33
        0x2d
        0x33
        0x34
        0x3e
        0x35
        0x2d
        0x25
        0x28
        0x2f
        0x34
        0x34
        0x33
        0x34
        0x3d
    .end array-data

    .line 215
    :array_2
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
        0x16
        0x1b
        0xf
        0x14
        0x19
        0x12
        0x1f
        0x8
    .end array-data
.end method

.method protected static fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;)",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 41
    .local v0, "obj":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->setRegister()V

    .line 42
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v0    # "obj":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener;

    return-object v1
.end method

.method public static getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;)",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/FgAppListener;

    return-object v0
.end method

.method protected static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-static {p0, p1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public static notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 77
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 79
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onFgAppChangedImpl(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 83
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_1
    return-void
.end method

.method public static onBrowserDashModeForAll(Z)V
    .locals 4
    .param p0, "on"    # Z

    .prologue
    .line 68
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 70
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashMode(Z)V

    goto :goto_0

    .line 74
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_1
    return-void
.end method

.method private onFgAppChangedImpl(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 87
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sput-object p1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    .line 93
    iput p3, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPid:I

    .line 95
    instance-of v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 96
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    invoke-interface {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppChanged()V

    .line 97
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    .local v0, "isFgAppInPackageList":Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v1, v0, :cond_0

    .line 99
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    move-object v1, p0

    .line 100
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppInPackageList(Z)V

    goto :goto_0
.end method

.method public static onListScrollBoostEventForAll(Z)V
    .locals 4
    .param p0, "scroll"    # Z

    .prologue
    .line 422
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iput-boolean p0, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mScrollBoosterEnabled:Z

    .line 424
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 426
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    instance-of v3, v2, Lcom/android/server/ssrm/fgapps/FgAppListener$ListScrollBoostEventCallback;

    if-eqz v3, :cond_0

    .line 428
    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener$ListScrollBoostEventCallback;

    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener$ListScrollBoostEventCallback;->onListScrollBoostEvent(Z)V

    goto :goto_0

    .line 432
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    :cond_1
    return-void
.end method

.method public static onReceiveForAll(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 60
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 61
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v2, p0, p1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    goto :goto_0

    .line 65
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_1
    return-void
.end method

.method public static onSIPVisibilityChangedForAll(Z)V
    .locals 4
    .param p0, "visible"    # Z

    .prologue
    .line 409
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iput-boolean p0, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mSIPVisible:Z

    .line 411
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 412
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 413
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    instance-of v3, v2, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;

    if-eqz v3, :cond_0

    .line 415
    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;

    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;->onSipVisibilityChanged(Z)V

    goto :goto_0

    .line 419
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    :cond_1
    return-void
.end method

.method public static onUsbConnectionStatusChangedForAll(Z)V
    .locals 4
    .param p0, "connected"    # Z

    .prologue
    .line 435
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iget-boolean v3, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    if-ne v3, p0, :cond_1

    .line 448
    :cond_0
    return-void

    .line 438
    :cond_1
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iput-boolean p0, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    .line 440
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 441
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 442
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    instance-of v3, v2, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;

    if-eqz v3, :cond_2

    .line 444
    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;

    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;->onUsbConnectionStatusChanged(Z)V

    goto :goto_0
.end method

.method public static register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 1
    .param p1, "fgAppListener"    # Lcom/android/server/ssrm/fgapps/FgAppListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->setRegister()V

    .line 56
    :cond_0
    return-void
.end method

.method protected static writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToSysfs:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const/4 v1, 0x0

    .line 351
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 353
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    if-eqz v2, :cond_2

    .line 361
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v1, v2

    .line 368
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 359
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_3

    .line 361
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 359
    :cond_3
    :goto_3
    throw v3

    .line 354
    :catch_0
    move-exception v3

    .line 359
    :goto_4
    if-eqz v1, :cond_0

    .line 361
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 362
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    goto :goto_1

    .line 359
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 354
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static x([I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [I

    .prologue
    .line 451
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-void
.end method

.method protected clearPackages()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 339
    return-void
.end method

.method protected getForegroundPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getForegroundPackagePid()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPid:I

    return v0
.end method

.method protected isBootComplete()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    return v0
.end method

.method protected isMultiWindowActivated()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    return v0
.end method

.method protected isPackageExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method isRegistered()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    return v0
.end method

.method protected onBrowserDashMode(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 258
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    const/4 v6, 0x0

    .line 142
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 210
    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_1
    sput-object p1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    .line 151
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;

    if-eqz v5, :cond_0

    .line 152
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    iget-boolean v5, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    invoke-interface {p3, v5}, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;->onMultiWindowStatusChanged(Z)V

    goto :goto_0

    .line 155
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_2
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    .line 157
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;

    if-eqz v5, :cond_0

    .line 158
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;->onBootComplete()V

    goto :goto_0

    .line 161
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_3
    sget-object v5, Lcom/android/server/ssrm/fgapps/FgAppListener;->SSRM_STATUS_NOTIFY:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/server/ssrm/fgapps/FgAppListener;->SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    :cond_4
    sget-object v5, Lcom/android/server/ssrm/fgapps/FgAppListener;->SSRM_STATUS_NAME:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "statusName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/ssrm/fgapps/FgAppListener;->SSRM_STATUS_VALUE:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 164
    .local v4, "statusValue":Z
    const-string v5, "PackageName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "packageName":Ljava/lang/String;
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;

    if-eqz v5, :cond_0

    .line 166
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3, v3, v4, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;->onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "statusName":Ljava/lang/String;
    .end local v4    # "statusValue":Z
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_5
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 170
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    if-eqz v5, :cond_0

    .line 171
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;->onLockScreenRelease()V

    goto :goto_0

    .line 173
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_6
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 174
    const-string v5, "keyguard"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 176
    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_7

    .line 177
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    if-eqz v5, :cond_7

    move-object v5, p3

    .line 178
    check-cast v5, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    invoke-interface {v5}, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;->onLockScreenRelease()V

    .line 181
    :cond_7
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;

    if-eqz v5, :cond_0

    .line 182
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;->onScreenOn()V

    goto/16 :goto_0

    .line 184
    .end local v1    # "mKeyguardManager":Landroid/app/KeyguardManager;
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_8
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 185
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;

    if-eqz v5, :cond_0

    .line 186
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;->onScreenOff()V

    goto/16 :goto_0

    .line 188
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_9
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 189
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;

    if-eqz v5, :cond_0

    .line 190
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;->onBatteryChange(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 192
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_a
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 194
    :cond_b
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;

    if-eqz v5, :cond_0

    .line 195
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;->onTimeChange(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 197
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_c
    const-string v5, "com.sec.android.intent.action.EMERGENCY_MODE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 198
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;

    if-eqz v5, :cond_0

    .line 199
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;->onEmergencyModeChanged()V

    goto/16 :goto_0

    .line 201
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_d
    const-string v5, "com.sec.android.intent.action.ULTRA_POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 202
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;

    if-eqz v5, :cond_0

    .line 203
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;->onUltraPowerSavingModeChanged()V

    goto/16 :goto_0

    .line 205
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_e
    const-string v5, "com.sec.android.intent.action.POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    instance-of v5, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;

    if-eqz v5, :cond_0

    .line 207
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;->onPowerSavingModeChanged()V

    goto/16 :goto_0
.end method

.method readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-static {p1, p2}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setRegister()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    .line 391
    return-void
.end method

.method protected updateForegroundPackageStatus()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    instance-of v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 236
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    invoke-interface {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppChanged()V

    .line 237
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 238
    .local v0, "isFgAppInPackageList":Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v1, v0, :cond_0

    .line 239
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    move-object v1, p0

    .line 240
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppInPackageList(Z)V

    goto :goto_0
.end method
