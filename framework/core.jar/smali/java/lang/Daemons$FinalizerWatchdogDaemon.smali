.class Ljava/lang/Daemons$FinalizerWatchdogDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerWatchdogDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    return-object v0
.end method

.method private static finalizerTimedOut(Ljava/lang/Object;)V
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".finalize() timed out after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, "syntheticException":Ljava/lang/Exception;
    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Daemons$Daemon;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 269
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 270
    .local v0, "h":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-nez v0, :cond_0

    .line 272
    invoke-static {v1, v2}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 278
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 279
    return-void
.end method

.method private sleepFor(JJ)V
    .locals 9
    .param p1, "startNanos"    # J
    .param p3, "durationNanos"    # J

    .prologue
    .line 241
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v1, v7, p1

    .line 242
    .local v1, "elapsedNanos":J
    sub-long v5, p3, v1

    .line 243
    .local v5, "sleepNanos":J
    const-wide/32 v7, 0xf4240

    div-long v3, v5, v7

    .line 244
    .local v3, "sleepMills":J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_1

    .line 251
    :goto_1
    return-void

    .line 248
    :cond_1
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Daemons$Daemon;->isRunning()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1
.end method

.method private waitForFinalization(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 258
    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->finalizingStartedNanos:J
    invoke-static {v0}, Ljava/lang/Daemons$FinalizerDaemon;->access$500(Ljava/lang/Daemons$FinalizerDaemon;)J

    move-result-wide v0

    const-wide v2, 0x2540be400L

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepFor(JJ)V

    .line 259
    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Daemons$FinalizerDaemon;->access$400(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 222
    :goto_0
    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v2

    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Daemons$FinalizerDaemon;->access$400(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    move-result-object v1

    .line 223
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 233
    .end local v1    # "object":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 226
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_0
    monitor-enter p0

    .line 230
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :try_start_1
    monitor-exit p0

    goto :goto_0

    .end local v1    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 231
    .restart local v1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Daemons$Daemon;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->waitForObject()Ljava/lang/Object;

    move-result-object v1

    .line 208
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 212
    invoke-direct {p0, v1}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->waitForFinalization(Ljava/lang/Object;)Z

    move-result v0

    .line 213
    .local v0, "finalized":Z
    if-nez v0, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->isDebuggerActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    invoke-static {v1}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimedOut(Ljava/lang/Object;)V

    .line 218
    .end local v0    # "finalized":Z
    .end local v1    # "object":Ljava/lang/Object;
    :cond_1
    return-void
.end method
