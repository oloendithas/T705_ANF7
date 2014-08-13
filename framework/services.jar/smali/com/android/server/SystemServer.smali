.class public Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I = 0x0

.field static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    .line 2222
    const-string v0, "persist.sys.dalvik.vm.lib"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 2231
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2235
    :cond_0
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2236
    .local v6, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2245
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2246
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 2247
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    .line 2248
    sget-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1}, Lcom/android/server/SystemServer$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2257
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 2261
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 2263
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 2265
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2267
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 2274
    new-instance v7, Lcom/android/server/ServerThread;

    invoke-direct {v7}, Lcom/android/server/ServerThread;-><init>()V

    .line 2275
    .local v7, "thr":Lcom/android/server/ServerThread;
    invoke-virtual {v7}, Lcom/android/server/ServerThread;->initAndLoop()V

    .line 2276
    return-void

    .line 2238
    .end local v7    # "thr":Lcom/android/server/ServerThread;
    :cond_3
    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2241
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 2242
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V

    goto :goto_0
.end method

.method private static native nativeInit()V
.end method
