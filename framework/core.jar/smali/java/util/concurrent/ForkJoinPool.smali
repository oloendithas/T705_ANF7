.class public Ljava/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava/util/concurrent/ForkJoinPool$WorkQueue;,
        Ljava/util/concurrent/ForkJoinPool$EmptyTask;,
        Ljava/util/concurrent/ForkJoinPool$Submitter;,
        Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

.field private static final ASHIFT:I

.field private static final CTL:J

.field private static final EC_SHIFT:I = 0x10

.field private static final EVENMASK:I = 0xfffe

.field private static final E_MASK:I = 0x7fffffff

.field private static final E_SEQ:I = 0x10000

.field private static final FAST_IDLE_TIMEOUT:J = 0xbebc200L

.field static final FIFO_QUEUE:I = 0x1

.field private static final IDLE_TIMEOUT:J = 0x77359400L

.field private static final INDEXSEED:J

.field private static final INT_SIGN:I = -0x80000000

.field static final LIFO_QUEUE:I = 0x0

.field private static final MAX_CAP:I = 0x7fff

.field private static final MAX_HELP:I = 0x40

.field private static final MAX_SCAN:I = 0x1ffff

.field private static final MIN_SCAN:I = 0x1ff

.field private static final PARKBLOCKER:J

.field private static final PLOCK:J

.field private static final PL_LOCK:I = 0x2

.field private static final PL_SIGNAL:I = 0x1

.field private static final PL_SPINS:I = 0x100

.field private static final QLOCK:J

.field private static final SEED_INCREMENT:I = 0x61c88647

.field static final SHARED_QUEUE:I = -0x1

.field private static final SHORT_SIGN:I = 0x8000

.field private static final SHUTDOWN:I = -0x80000000

.field private static final SMASK:I = 0xffff

.field private static final SQMASK:I = 0x7e

.field private static final STEALCOUNT:J

.field private static final STOP_BIT:J = 0x80000000L

.field private static final ST_SHIFT:I = 0x1f

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final TIMEOUT_SLOP:J = 0x1e8480L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UAC_MASK:I = -0x10000

.field private static final UAC_SHIFT:I = 0x10

.field private static final UAC_UNIT:I = 0x10000

.field private static final UTC_MASK:I = 0xffff

.field private static final UTC_SHIFT:I = 0x0

.field private static final UTC_UNIT:I = 0x1

.field static final commonPool:Ljava/util/concurrent/ForkJoinPool;

.field static final commonPoolParallelism:I

.field public static final defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field private static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I

.field static final submitters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ForkJoinPool$Submitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final config:I

.field volatile ctl:J

.field final factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile indexSeed:I

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field volatile plock:I

.field volatile stealCount:J

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .prologue
    .line 3274
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3275
    const-class v12, Ljava/util/concurrent/ForkJoinPool;

    .line 3276
    .local v12, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "ctl"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v19

    sput-wide v19, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    .line 3278
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "stealCount"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v19

    sput-wide v19, Ljava/util/concurrent/ForkJoinPool;->STEALCOUNT:J

    .line 3280
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "plock"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v19

    sput-wide v19, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    .line 3282
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "indexSeed"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v19

    sput-wide v19, Ljava/util/concurrent/ForkJoinPool;->INDEXSEED:J

    .line 3284
    const-class v17, Ljava/lang/Thread;

    .line 3285
    .local v17, "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "parkBlocker"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v19

    sput-wide v19, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    .line 3287
    const-class v18, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 3288
    .local v18, "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "qlock"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v19

    sput-wide v19, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    .line 3290
    const-class v8, [Ljava/util/concurrent/ForkJoinTask;

    .line 3291
    .local v8, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v8}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    .line 3292
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v8}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v16

    .line 3293
    .local v16, "scale":I
    add-int/lit8 v2, v16, -0x1

    and-int v2, v2, v16

    if-eqz v2, :cond_0

    .line 3294
    new-instance v2, Ljava/lang/Error;

    const-string v19, "data type scale not a power of two"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3296
    .end local v8    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "scale":I
    .end local v17    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v9

    .line 3297
    .local v9, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v9}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3295
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "scale":I
    .restart local v17    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    sput v2, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3300
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    .line 3301
    new-instance v6, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v6}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3303
    .local v6, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v19, "modifyThread"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v2, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 3311
    const/4 v3, 0x0

    .line 3312
    .local v3, "par":I
    const/4 v7, 0x0

    .line 3314
    .local v7, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_2
    const-string v2, "java.util.concurrent.ForkJoinPool.common.parallelism"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3316
    .local v15, "pp":Ljava/lang/String;
    const-string v2, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3318
    .local v11, "hp":Ljava/lang/String;
    const-string v2, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3320
    .local v10, "fp":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 3321
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v6, v0

    .line 3323
    :cond_1
    if-eqz v11, :cond_2

    .line 3324
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v7, v0

    .line 3326
    :cond_2
    if-eqz v15, :cond_3

    .line 3327
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 3331
    .end local v10    # "fp":Ljava/lang/String;
    .end local v11    # "hp":Ljava/lang/String;
    .end local v15    # "pp":Ljava/lang/String;
    :cond_3
    :goto_0
    if-gtz v3, :cond_4

    .line 3332
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 3333
    :cond_4
    const/16 v2, 0x7fff

    if-le v3, v2, :cond_5

    .line 3334
    const/16 v3, 0x7fff

    .line 3335
    :cond_5
    sput v3, Ljava/util/concurrent/ForkJoinPool;->commonPoolParallelism:I

    .line 3336
    neg-int v2, v3

    int-to-long v13, v2

    .line 3337
    .local v13, "np":J
    const/16 v2, 0x30

    shl-long v19, v13, v2

    const-wide/high16 v21, -0x1000000000000L

    and-long v19, v19, v21

    const/16 v2, 0x20

    shl-long v21, v13, v2

    const-wide v23, 0xffff00000000L

    and-long v21, v21, v23

    or-long v4, v19, v21

    .line 3339
    .local v4, "ct":J
    new-instance v2, Ljava/util/concurrent/ForkJoinPool;

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ForkJoinPool;-><init>(IJLjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v2, Ljava/util/concurrent/ForkJoinPool;->commonPool:Ljava/util/concurrent/ForkJoinPool;

    .line 3340
    return-void

    .line 3328
    .end local v4    # "ct":J
    .end local v13    # "np":J
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 2492
    const/16 v0, 0x7fff

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2494
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "parallelism"    # I

    .prologue
    .line 2507
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2508
    return-void
.end method

.method constructor <init>(IJLjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .param p1, "parallelism"    # I
    .param p2, "ctl"    # J
    .param p4, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p5, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 2557
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2558
    iput p1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    .line 2559
    iput-wide p2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2560
    iput-object p4, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2561
    iput-object p5, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2562
    const-string v0, "ForkJoinPool.commonPool-worker-"

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2563
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 10
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z

    .prologue
    .line 2533
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2534
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2535
    if-nez p2, :cond_0

    .line 2536
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2537
    :cond_0
    if-lez p1, :cond_1

    const/16 v4, 0x7fff

    if-le p1, v4, :cond_2

    .line 2538
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2539
    :cond_2
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2540
    iput-object p3, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2541
    if-eqz p4, :cond_3

    const/high16 v4, 0x10000

    :goto_0
    or-int/2addr v4, p1

    iput v4, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    .line 2542
    neg-int v4, p1

    int-to-long v0, v4

    .line 2543
    .local v0, "np":J
    const/16 v4, 0x30

    shl-long v4, v0, v4

    const-wide/high16 v6, -0x1000000000000L

    and-long/2addr v4, v6

    const/16 v6, 0x20

    shl-long v6, v0, v6

    const-wide v8, 0xffff00000000L

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2544
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->nextPoolId()I

    move-result v2

    .line 2545
    .local v2, "pn":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ForkJoinPool-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2546
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    const-string v4, "-worker-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2548
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2549
    return-void

    .line 2541
    .end local v0    # "np":J
    .end local v2    # "pn":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private acquirePlock()I
    .locals 19

    .prologue
    .line 1257
    const/16 v15, 0x100

    .local v15, "spins":I
    const/4 v14, 0x0

    .line 1259
    .local v14, "r":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v5, "ps":I
    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v6, v5, 0x2

    .local v6, "nps":I
    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1261
    return v6

    .line 1262
    .end local v6    # "nps":I
    :cond_1
    if-nez v14, :cond_4

    .line 1263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    .line 1264
    .local v16, "t":Ljava/lang/Thread;
    move-object/from16 v0, v16

    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_2

    check-cast v16, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v16    # "t":Ljava/lang/Thread;
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    .local v17, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_2

    .line 1266
    move-object/from16 v0, v17

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->seed:I

    goto :goto_0

    .line 1267
    .end local v17    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .local v18, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    if-eqz v18, :cond_3

    .line 1268
    move-object/from16 v0, v18

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    goto :goto_0

    .line 1270
    :cond_3
    const/4 v14, 0x1

    goto :goto_0

    .line 1272
    .end local v18    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    :cond_4
    if-ltz v15, :cond_5

    .line 1273
    shl-int/lit8 v1, v14, 0x1

    xor-int/2addr v14, v1

    ushr-int/lit8 v1, v14, 0x3

    xor-int/2addr v14, v1

    shl-int/lit8 v1, v14, 0xa

    xor-int/2addr v14, v1

    .line 1274
    if-ltz v14, :cond_0

    .line 1275
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 1277
    :cond_5
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    or-int/lit8 v12, v5, 0x1

    move-object/from16 v8, p0

    move v11, v5

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1278
    monitor-enter p0

    .line 1279
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 1281
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1291
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1282
    :catch_0
    move-exception v13

    .line 1284
    .local v13, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1285
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1290
    .end local v13    # "ie":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static checkPermission()V
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 505
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 506
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 507
    :cond_0
    return-void
.end method

.method public static commonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    .prologue
    .line 2574
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->commonPool:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method static commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 5

    .prologue
    .line 2348
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .local v3, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    if-eqz v3, :cond_0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->commonPool:Ljava/util/concurrent/ForkJoinPool;

    .local v1, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    array-length v4, v2

    add-int/lit8 v0, v4, -0x1

    .local v0, "m":I
    if-ltz v0, :cond_0

    iget v4, v3, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v4, v0

    and-int/lit8 v4, v4, 0x7e

    aget-object v4, v2, v4

    .end local v0    # "m":I
    .end local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v2    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private externalHelpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 18
    .param p1, "q"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2391
    .local p2, "root":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v8, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v8, :cond_5

    array-length v2, v8

    add-int/lit8 v11, v2, -0x1

    .local v11, "m":I
    if-ltz v11, :cond_5

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_5

    .line 2394
    :cond_0
    const/16 v16, 0x0

    .line 2395
    .local v16, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p1

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v14, "s":I
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v14, v2

    if-lez v2, :cond_3

    .line 2396
    add-int/lit8 v2, v14, -0x1

    and-int/2addr v2, v11

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v9, v2

    .line 2397
    .local v9, "j":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v8, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    .local v12, "o":Ljava/lang/Object;
    if-eqz v12, :cond_3

    instance-of v2, v12, Ljava/util/concurrent/CountedCompleter;

    if-eqz v2, :cond_3

    move-object v15, v12

    .line 2399
    check-cast v15, Ljava/util/concurrent/CountedCompleter;

    .local v15, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v13, v15

    .line 2401
    .local v13, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_1
    move-object/from16 v0, p2

    if-ne v13, v0, :cond_6

    .line 2402
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2403
    move-object/from16 v0, p1

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v2, v8, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v2, v14, :cond_2

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v3, v8

    move-wide v4, v9

    move-object v6, v15

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2405
    add-int/lit8 v2, v14, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2406
    move-object/from16 v16, v15

    .line 2408
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2415
    .end local v9    # "j":J
    .end local v12    # "o":Ljava/lang/Object;
    .end local v13    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v15    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_3
    :goto_0
    if-eqz v16, :cond_4

    .line 2416
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2417
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v0, v2

    move/from16 v17, v0

    .local v17, "u":I
    if-gez v17, :cond_5

    shr-int/lit8 v2, v17, 0x10

    if-ltz v2, :cond_7

    .line 2428
    .end local v8    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "m":I
    .end local v14    # "s":I
    .end local v16    # "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v17    # "u":I
    :cond_5
    :goto_1
    return-void

    .line 2412
    .restart local v8    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v9    # "j":J
    .restart local v11    # "m":I
    .restart local v12    # "o":Ljava/lang/Object;
    .restart local v13    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v14    # "s":I
    .restart local v15    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v16    # "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_6
    iget-object v13, v13, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v13, :cond_1

    goto :goto_0

    .line 2420
    .end local v9    # "j":J
    .end local v12    # "o":Ljava/lang/Object;
    .end local v13    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v15    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v17    # "u":I
    :cond_7
    if-nez v16, :cond_0

    .line 2421
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpSignal(Ljava/util/concurrent/ForkJoinTask;I)V

    .line 2422
    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_5

    .line 2423
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinTask;I)I

    goto :goto_1
.end method

.method static externalHelpJoin(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2438
    .local p0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_1

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .local v17, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    if-eqz v17, :cond_1

    sget-object v14, Ljava/util/concurrent/ForkJoinPool;->commonPool:Ljava/util/concurrent/ForkJoinPool;

    .local v14, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v14, :cond_1

    iget-object v0, v14, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v16, v0

    .local v16, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    array-length v1, v0

    add-int/lit8 v13, v1, -0x1

    .local v13, "m":I
    if-ltz v13, :cond_1

    move-object/from16 v0, v17

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v1, v13

    and-int/lit8 v1, v1, 0x7e

    aget-object v2, v16, v1

    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1

    iget-object v9, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v9, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v9, :cond_1

    .line 2445
    array-length v1, v9

    add-int/lit8 v10, v1, -0x1

    .line 2446
    .local v10, "am":I
    iget v15, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v15, "s":I
    iget v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v15, v1, :cond_0

    .line 2447
    add-int/lit8 v1, v15, -0x1

    and-int/2addr v1, v10

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v1, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int/2addr v1, v3

    int-to-long v11, v1

    .line 2448
    .local v11, "j":J
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v9, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    if-ne v1, v0, :cond_0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2450
    iget-object v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v1, v9, :cond_2

    iget v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v1, v15, :cond_2

    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    move-object v4, v9

    move-wide v5, v11

    move-object/from16 v7, p0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2452
    add-int/lit8 v1, v15, -0x1

    iput v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2453
    const/4 v1, 0x0

    iput v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2454
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2460
    .end local v11    # "j":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_1

    .line 2461
    move-object/from16 v0, p0

    instance-of v1, v0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v1, :cond_3

    .line 2462
    move-object/from16 v0, p0

    invoke-direct {v14, v2, v0}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V

    .line 2467
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "am":I
    .end local v13    # "m":I
    .end local v14    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v15    # "s":I
    .end local v16    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v17    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    :cond_1
    :goto_1
    return-void

    .line 2457
    .restart local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v9    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v10    # "am":I
    .restart local v11    # "j":J
    .restart local v13    # "m":I
    .restart local v14    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v15    # "s":I
    .restart local v16    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v17    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    :cond_2
    const/4 v1, 0x0

    iput v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_0

    .line 2464
    .end local v11    # "j":J
    :cond_3
    iget v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->helpSignal(Ljava/util/concurrent/ForkJoinTask;I)V

    goto :goto_1
.end method

.method static externalHelpQuiescePool()V
    .locals 5

    .prologue
    .line 2474
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->commonPool:Ljava/util/concurrent/ForkJoinPool;

    .local v1, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue(I)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v2

    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    iget v0, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v4, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v4, v0, v4

    if-gez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v3

    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_0

    .line 2478
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2479
    .end local v0    # "b":I
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    return-void
.end method

.method private findNonEmptyStealQueue(I)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 9
    .param p1, "r"    # I

    .prologue
    const/4 v6, 0x0

    .line 2105
    :cond_0
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .line 2106
    .local v3, "ps":I
    iget-object v5, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v5, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_1

    array-length v7, v5

    add-int/lit8 v1, v7, -0x1

    .local v1, "m":I
    const/4 v7, 0x1

    if-ge v1, v7, :cond_3

    .end local v1    # "m":I
    :cond_1
    move-object v4, v6

    .line 2117
    :cond_2
    :goto_0
    return-object v4

    .line 2108
    .restart local v1    # "m":I
    :cond_3
    add-int/lit8 v7, v1, 0x1

    shl-int/lit8 v0, v7, 0x2

    .line 2109
    .local v0, "j":I
    :cond_4
    add-int v7, p1, v0

    shl-int/lit8 v7, v7, 0x1

    or-int/lit8 v7, v7, 0x1

    and-int/2addr v7, v1

    aget-object v4, v5, v7

    .line 2110
    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_5

    iget v7, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v8, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v7, v8

    .local v2, "n":I
    if-gez v2, :cond_5

    .line 2111
    const/4 v6, -0x1

    if-ge v2, v6, :cond_2

    .line 2112
    invoke-virtual {p0, v4}, Ljava/util/concurrent/ForkJoinPool;->signalWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    goto :goto_0

    .line 2115
    .end local v2    # "n":I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    .line 2116
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    if-ne v7, v3, :cond_0

    move-object v4, v6

    .line 2117
    goto :goto_0
.end method

.method private fullExternalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1532
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v6, 0x0

    .line 1533
    .local v6, "r":I
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .line 1535
    .local v29, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    :cond_0
    :goto_0
    if-nez v29, :cond_1

    .line 1536
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->INDEXSEED:J

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ForkJoinPool;->indexSeed:I

    const v3, 0x61c88647

    add-int v7, v6, v3

    .end local v6    # "r":I
    .local v7, "r":I
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v7, :cond_f

    .line 1538
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    new-instance v29, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .end local v29    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Ljava/util/concurrent/ForkJoinPool$Submitter;-><init>(I)V

    .restart local v29    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v6, v7

    .end local v7    # "r":I
    .restart local v6    # "r":I
    goto :goto_0

    .line 1540
    :cond_1
    if-nez v6, :cond_2

    .line 1541
    move-object/from16 v0, v29

    iget v6, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    .line 1542
    shl-int/lit8 v2, v6, 0xd

    xor-int/2addr v6, v2

    .line 1543
    ushr-int/lit8 v2, v6, 0x11

    xor-int/2addr v6, v2

    .line 1544
    shl-int/lit8 v2, v6, 0x5

    xor-int/2addr v2, v6

    move-object/from16 v0, v29

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    goto :goto_0

    .line 1546
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v14, "ps":I
    if-gez v14, :cond_3

    .line 1547
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v2

    .line 1548
    :cond_3
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v28, v0

    .local v28, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v28, :cond_4

    move-object/from16 v0, v28

    array-length v2, v0

    add-int/lit8 v25, v2, -0x1

    .local v25, "m":I
    if-gez v25, :cond_5

    .line 1550
    .end local v25    # "m":I
    .end local v28    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->initWorkers()V

    goto :goto_0

    .line 1551
    .restart local v25    # "m":I
    .restart local v28    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    and-int v2, v6, v25

    and-int/lit8 v24, v2, 0x7e

    .local v24, "k":I
    aget-object v9, v28, v24

    .local v9, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v9, :cond_a

    .line 1552
    iget v2, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-nez v2, :cond_9

    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1553
    iget-object v0, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v22, v0

    .line 1554
    .local v22, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v0, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v26, v0

    .line 1555
    .local v26, "s":I
    const/16 v27, 0x0

    .line 1557
    .local v27, "submitted":Z
    if-eqz v22, :cond_6

    :try_start_0
    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v3, v26, 0x1

    iget v4, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_7

    :cond_6
    invoke-virtual {v9}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    move-result-object v22

    if-eqz v22, :cond_8

    .line 1559
    :cond_7
    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int v2, v2, v26

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int v23, v2, v3

    .line 1560
    .local v23, "j":I
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move/from16 v0, v23

    int-to-long v3, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v3, v4, v1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1561
    add-int/lit8 v2, v26, 0x1

    iput v2, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    const/16 v27, 0x1

    .line 1565
    .end local v23    # "j":I
    :cond_8
    const/4 v2, 0x0

    iput v2, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1567
    if-eqz v27, :cond_9

    .line 1568
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ForkJoinPool;->signalWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1569
    return-void

    .line 1565
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    iput v3, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    throw v2

    .line 1572
    .end local v22    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v26    # "s":I
    .end local v27    # "submitted":Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1574
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    and-int/lit8 v2, v14, 0x2

    if-nez v2, :cond_d

    .line 1575
    new-instance v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .end local v9    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2, v3, v6}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;II)V

    .line 1576
    .restart local v9    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    and-int/lit8 v2, v14, 0x2

    if-nez v2, :cond_b

    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v14, 0x2

    .end local v14    # "ps":I
    .local v15, "ps":I
    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_e

    move v14, v15

    .line 1578
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_b
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v14

    .line 1579
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v24

    if-ge v0, v2, :cond_c

    aget-object v2, v28, v24

    if-nez v2, :cond_c

    .line 1580
    aput-object v9, v28, v24

    .line 1581
    :cond_c
    const/high16 v2, -0x80000000

    and-int/2addr v2, v14

    add-int/lit8 v3, v14, 0x2

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    or-int v21, v2, v3

    .line 1582
    .local v21, "nps":I
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1583
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_0

    .line 1586
    .end local v21    # "nps":I
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_0

    .end local v14    # "ps":I
    .restart local v15    # "ps":I
    :cond_e
    move v14, v15

    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    goto :goto_1

    .end local v6    # "r":I
    .end local v9    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v14    # "ps":I
    .end local v24    # "k":I
    .end local v25    # "m":I
    .end local v28    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v7    # "r":I
    :cond_f
    move v6, v7

    .end local v7    # "r":I
    .restart local v6    # "r":I
    goto/16 :goto_0
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    .prologue
    .line 2753
    sget v0, Ljava/util/concurrent/ForkJoinPool;->commonPoolParallelism:I

    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2231
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .local v5, "t":Ljava/lang/Thread;
    instance-of v8, v5, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v8, :cond_0

    move-object v6, v5

    .line 2232
    check-cast v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v6, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .local v3, "pool":Ljava/util/concurrent/ForkJoinPool;
    iget v8, v3, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v9, 0xffff

    and-int v2, v8, v9

    .line 2233
    .local v2, "p":I
    iget-object v4, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v8, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v9, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v1, v8, v9

    .line 2234
    .local v1, "n":I
    iget-wide v8, v3, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v10, 0x30

    shr-long/2addr v8, v10

    long-to-int v8, v8

    add-int v0, v8, v2

    .line 2235
    .local v0, "a":I
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_1

    :goto_0
    sub-int v7, v1, v7

    .line 2241
    .end local v0    # "a":I
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "pool":Ljava/util/concurrent/ForkJoinPool;
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    return v7

    .line 2235
    .restart local v0    # "a":I
    .restart local v1    # "n":I
    .restart local v2    # "p":I
    .restart local v3    # "pool":Ljava/util/concurrent/ForkJoinPool;
    .restart local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v6    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :cond_3
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_4

    const/4 v7, 0x4

    goto :goto_0

    :cond_4
    const/16 v7, 0x8

    goto :goto_0
.end method

.method private helpComplete(Ljava/util/concurrent/ForkJoinTask;I)I
    .locals 10
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 1950
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_2

    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v6, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v6, :cond_2

    array-length v7, v6

    add-int/lit8 v1, v7, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_2

    .line 1952
    const/4 v0, 0x1

    .local v0, "j":I
    move v2, v0

    .line 1953
    .local v2, "origin":I
    :cond_0
    iget v4, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-gez v4, :cond_1

    .line 1965
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v2    # "origin":I
    .end local v4    # "s":I
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    return v4

    .line 1955
    .restart local v0    # "j":I
    .restart local v1    # "m":I
    .restart local v2    # "origin":I
    .restart local v4    # "s":I
    .restart local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    and-int v7, v0, v1

    aget-object v3, v6, v7

    .local v3, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecCC(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1956
    move v2, v0

    .line 1957
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    iget-wide v7, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    long-to-int v5, v7

    .local v5, "u":I
    if-gez v5, :cond_2

    shr-int/lit8 v7, v5, 0x10

    if-ltz v7, :cond_0

    .line 1965
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v2    # "origin":I
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v4    # "s":I
    .end local v5    # "u":I
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1961
    .restart local v0    # "j":I
    .restart local v1    # "m":I
    .restart local v2    # "origin":I
    .restart local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v4    # "s":I
    .restart local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    add-int/lit8 v7, v0, 0x2

    and-int v0, v7, v1

    if-ne v0, v2, :cond_0

    goto :goto_1
.end method

.method private helpSignal(Ljava/util/concurrent/ForkJoinTask;I)V
    .locals 23
    .param p2, "origin"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 1823
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v1, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_1

    move-object/from16 v0, p0

    iget-wide v1, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v0, v1

    move/from16 v19, v0

    .local v19, "u":I
    if-gez v19, :cond_1

    shr-int/lit8 v1, v19, 0x10

    if-gez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v21, v0

    .local v21, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    array-length v1, v0

    add-int/lit8 v14, v1, -0x1

    .local v14, "m":I
    if-ltz v14, :cond_1

    .line 1826
    move/from16 v12, p2

    .local v12, "k":I
    move v11, v14

    .local v11, "j":I
    move v13, v12

    .end local v12    # "k":I
    .local v13, "k":I
    :goto_0
    if-ltz v11, :cond_1

    .line 1827
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "k":I
    .restart local v12    # "k":I
    and-int v1, v13, v14

    aget-object v17, v21, v1

    .line 1828
    .local v17, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move v15, v14

    .line 1829
    .local v15, "n":I
    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v1, :cond_2

    .line 1852
    .end local v11    # "j":I
    .end local v12    # "k":I
    .end local v14    # "m":I
    .end local v15    # "n":I
    .end local v17    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "u":I
    .end local v21    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-void

    .line 1831
    .restart local v11    # "j":I
    .restart local v12    # "k":I
    .restart local v14    # "m":I
    .restart local v15    # "n":I
    .restart local v17    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "u":I
    .restart local v21    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    neg-int v1, v1

    move-object/from16 v0, v17

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int v18, v1, v2

    .local v18, "s":I
    move/from16 v0, v18

    if-gt v0, v15, :cond_4

    move/from16 v15, v18

    if-gtz v18, :cond_4

    .line 1826
    .end local v18    # "s":I
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, -0x1

    move v13, v12

    .end local v12    # "k":I
    .restart local v13    # "k":I
    goto :goto_0

    .line 1834
    .end local v13    # "k":I
    .restart local v12    # "k":I
    .restart local v18    # "s":I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v5, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v5, "c":J
    const/16 v1, 0x20

    ushr-long v1, v5, v1

    long-to-int v0, v1

    move/from16 v19, v0

    if-gez v19, :cond_1

    long-to-int v9, v5

    .local v9, "e":I
    if-lez v9, :cond_1

    const v1, 0xffff

    and-int v10, v9, v1

    .local v10, "i":I
    if-lt v14, v10, :cond_1

    aget-object v20, v21, v10

    .local v20, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v20, :cond_1

    .line 1838
    move-object/from16 v0, v20

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    const/high16 v3, 0x10000

    add-int v3, v3, v19

    int-to-long v3, v3

    const/16 v22, 0x20

    shl-long v3, v3, v22

    or-long v7, v1, v3

    .line 1840
    .local v7, "nc":J
    move-object/from16 v0, v20

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v2, -0x80000000

    or-int/2addr v2, v9

    if-ne v1, v2, :cond_1

    .line 1842
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1843
    const/high16 v1, 0x10000

    add-int/2addr v1, v9

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    move-object/from16 v0, v20

    iput v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1844
    move-object/from16 v0, v20

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v16, v0

    .local v16, "p":Ljava/lang/Thread;
    if-eqz v16, :cond_5

    .line 1845
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1846
    :cond_5
    add-int/lit8 v15, v15, -0x1

    if-gtz v15, :cond_0

    goto :goto_1
.end method

.method private idleAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;JJ)V
    .locals 16
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "currentCtl"    # J
    .param p4, "prevCtl"    # J

    .prologue
    .line 1787
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    move-wide/from16 v0, p4

    long-to-int v2, v0

    if-eqz v2, :cond_2

    .line 1789
    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-short v2, v2

    neg-int v10, v2

    .line 1790
    .local v10, "dc":I
    if-gez v10, :cond_3

    const-wide/32 v13, 0xbebc200

    .line 1791
    .local v13, "parkTime":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v2, v13

    const-wide/32 v4, 0x1e8480

    sub-long v11, v2, v4

    .line 1792
    .local v11, "deadline":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    .line 1793
    .local v15, "wt":Ljava/lang/Thread;
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_2

    .line 1794
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1795
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    move-object/from16 v0, p0

    invoke-virtual {v2, v15, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1796
    move-object/from16 v0, p1

    iput-object v15, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1797
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    .line 1798
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13, v14}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 1799
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1800
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    const/4 v5, 0x0

    invoke-virtual {v2, v15, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1801
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-eqz v2, :cond_4

    .line 1811
    .end local v10    # "dc":I
    .end local v11    # "deadline":J
    .end local v13    # "parkTime":J
    .end local v15    # "wt":Ljava/lang/Thread;
    :cond_2
    :goto_1
    return-void

    .line 1790
    .restart local v10    # "dc":I
    :cond_3
    add-int/lit8 v2, v10, 0x1

    int-to-long v2, v2

    const-wide/32 v4, 0x77359400

    mul-long v13, v2, v4

    goto :goto_0

    .line 1803
    .restart local v11    # "deadline":J
    .restart local v13    # "parkTime":J
    .restart local v15    # "wt":Ljava/lang/Thread;
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v11, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1805
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    const v3, 0x7fffffff

    or-int/2addr v2, v3

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1806
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_1
.end method

.method private initWorkers()V
    .locals 17

    .prologue
    .line 1319
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int v15, v1, v2

    .line 1320
    .local v15, "p":I
    const/4 v1, 0x1

    if-le v15, v1, :cond_5

    add-int/lit8 v13, v15, -0x1

    .line 1321
    .local v13, "n":I
    :goto_0
    ushr-int/lit8 v1, v13, 0x1

    or-int/2addr v13, v1

    ushr-int/lit8 v1, v13, 0x2

    or-int/2addr v13, v1

    ushr-int/lit8 v1, v13, 0x4

    or-int/2addr v13, v1

    ushr-int/lit8 v1, v13, 0x8

    or-int/2addr v13, v1

    ushr-int/lit8 v1, v13, 0x10

    or-int/2addr v13, v1

    .line 1322
    add-int/lit8 v1, v13, 0x1

    shl-int/lit8 v13, v1, 0x1

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v16, v0

    .local v16, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v1, v0

    if-nez v1, :cond_6

    .line 1324
    :cond_0
    new-array v14, v13, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1327
    .local v14, "nws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v5, "ps":I
    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v6, v5, 0x2

    .end local v5    # "ps":I
    .local v6, "ps":I
    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_7

    move v5, v6

    .line 1329
    .end local v6    # "ps":I
    .restart local v5    # "ps":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v5

    .line 1330
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_2
    if-eqz v14, :cond_3

    .line 1331
    move-object/from16 v0, p0

    iput-object v14, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1332
    :cond_3
    const/high16 v1, -0x80000000

    and-int/2addr v1, v5

    add-int/lit8 v2, v5, 0x2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    or-int v12, v1, v2

    .line 1333
    .local v12, "nps":I
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v8, p0

    move v11, v5

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1334
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    .line 1335
    :cond_4
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker()V

    .line 1336
    return-void

    .line 1320
    .end local v5    # "ps":I
    .end local v12    # "nps":I
    .end local v13    # "n":I
    .end local v14    # "nws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    const/4 v13, 0x1

    goto :goto_0

    .line 1326
    .restart local v13    # "n":I
    .restart local v16    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "nws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_1

    .restart local v6    # "ps":I
    :cond_7
    move v5, v6

    .end local v6    # "ps":I
    .restart local v5    # "ps":I
    goto :goto_2
.end method

.method public static managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 10
    .param p0, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 3215
    .local v4, "t":Ljava/lang/Thread;
    instance-of v7, v4, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v7, :cond_7

    .line 3216
    check-cast v4, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v4    # "t":Ljava/lang/Thread;
    iget-object v2, v4, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 3217
    .local v2, "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3219
    iget-object v6, v2, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v6, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v6, :cond_3

    array-length v7, v6

    add-int/lit8 v1, v7, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_3

    .line 3220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_3

    .line 3221
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3246
    .end local v0    # "i":I
    .end local v1    # "m":I
    .end local v2    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    :goto_1
    return-void

    .line 3223
    .restart local v0    # "i":I
    .restart local v1    # "m":I
    .restart local v2    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    aget-object v3, v6, v0

    .local v3, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_6

    iget v7, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v8, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v7, v8

    if-gez v7, :cond_6

    .line 3224
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->signalWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 3225
    iget-wide v7, v2, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    long-to-int v5, v7

    .local v5, "u":I
    if-gez v5, :cond_3

    shr-int/lit8 v7, v5, 0x10

    if-ltz v7, :cond_6

    .line 3231
    .end local v0    # "i":I
    .end local v1    # "m":I
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "u":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3233
    :cond_4
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 3236
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    goto :goto_1

    .line 3220
    .restart local v0    # "i":I
    .restart local v1    # "m":I
    .restart local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3236
    .end local v0    # "i":I
    .end local v1    # "m":I
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v7

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    throw v7

    .line 3243
    .end local v2    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v6    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v4    # "t":Ljava/lang/Thread;
    :cond_7
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    .prologue
    .line 1094
    const-class v1, Ljava/util/concurrent/ForkJoinPool;

    monitor-enter v1

    :try_start_0
    sget v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private releasePlock(I)V
    .locals 1
    .param p1, "ps"    # I

    .prologue
    .line 1301
    iput p1, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .line 1302
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    .line 1303
    return-void

    .line 1302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;
    .locals 40
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1684
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    move/from16 v32, v0

    .line 1685
    .local v32, "ps":I
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v38, v0

    .local v38, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v38, :cond_4

    move-object/from16 v0, v38

    array-length v2, v0

    add-int/lit8 v28, v2, -0x1

    .local v28, "m":I
    if-ltz v28, :cond_4

    .line 1686
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v23, v0

    .line 1687
    .local v23, "ec":I
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->seed:I

    move/from16 v34, v0

    .local v34, "r":I
    shl-int/lit8 v2, v34, 0xd

    xor-int v34, v34, v2

    ushr-int/lit8 v2, v34, 0x11

    xor-int v34, v34, v2

    shl-int/lit8 v2, v34, 0x5

    xor-int v34, v34, v2

    move/from16 v0, v34

    move-object/from16 v1, p1

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->seed:I

    .line 1688
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 1689
    add-int v2, v28, v28

    add-int/lit8 v2, v2, 0x1

    or-int/lit16 v2, v2, 0x1ff

    const v4, 0x1ffff

    and-int v27, v2, v4

    .line 1692
    .local v27, "j":I
    :cond_0
    add-int v2, v34, v27

    and-int v2, v2, v28

    aget-object v33, v38, v2

    .local v33, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v33, :cond_5

    move-object/from16 v0, v33

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move/from16 v21, v0

    .local v21, "b":I
    move-object/from16 v0, v33

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v21, v2

    if-gez v2, :cond_5

    move-object/from16 v0, v33

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_5

    .line 1694
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    and-int v2, v2, v21

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int v25, v2, v4

    .line 1695
    .local v25, "i":I
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move/from16 v0, v25

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    .line 1697
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v33

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move/from16 v0, v21

    if-ne v2, v0, :cond_2

    if-ltz v23, :cond_2

    if-eqz v6, :cond_2

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move/from16 v0, v25

    int-to-long v4, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1699
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, v33

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, v33

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v2, v4

    if-gez v2, :cond_1

    .line 1700
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->signalWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1771
    .end local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v21    # "b":I
    .end local v23    # "ec":I
    .end local v25    # "i":I
    .end local v27    # "j":I
    .end local v28    # "m":I
    .end local v33    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v34    # "r":I
    .end local v38    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    :goto_0
    return-object v6

    .line 1703
    .restart local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v21    # "b":I
    .restart local v23    # "ec":I
    .restart local v25    # "i":I
    .restart local v27    # "j":I
    .restart local v28    # "m":I
    .restart local v33    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v34    # "r":I
    .restart local v38    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    if-ltz v23, :cond_3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v2, 0x30

    shr-long/2addr v4, v2

    long-to-int v2, v4

    if-gtz v2, :cond_5

    .line 1704
    add-int v2, v34, v27

    and-int v2, v2, v28

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 1711
    .end local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v21    # "b":I
    .end local v25    # "i":I
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v30, v0

    .local v30, "ns":I
    if-eqz v30, :cond_6

    .line 1712
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/ForkJoinPool;->STEALCOUNT:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .local v11, "sc":J
    move/from16 v0, v30

    int-to-long v4, v0

    add-long v13, v11, v4

    move-object/from16 v8, p0

    invoke-virtual/range {v7 .. v14}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1714
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1771
    .end local v11    # "sc":J
    .end local v23    # "ec":I
    .end local v27    # "j":I
    .end local v28    # "m":I
    .end local v30    # "ns":I
    .end local v33    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v34    # "r":I
    .end local v38    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1708
    .restart local v23    # "ec":I
    .restart local v27    # "j":I
    .restart local v28    # "m":I
    .restart local v33    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v34    # "r":I
    .restart local v38    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    add-int/lit8 v27, v27, -0x1

    if-gez v27, :cond_0

    goto :goto_1

    .line 1716
    .restart local v30    # "ns":I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    move/from16 v0, v32

    if-ne v2, v0, :cond_4

    .line 1718
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v17, v0

    .local v17, "c":J
    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v22, v0

    .local v22, "e":I
    if-gez v22, :cond_7

    .line 1719
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_2

    .line 1721
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    move/from16 v24, v0

    .local v24, "h":I
    if-gez v24, :cond_9

    .line 1722
    if-ltz v23, :cond_f

    .line 1723
    move/from16 v0, v23

    int-to-long v4, v0

    const-wide/high16 v7, 0x1000000000000L

    sub-long v7, v17, v7

    const-wide v9, -0x100000000L

    and-long/2addr v7, v9

    or-long v19, v4, v7

    .line 1725
    .local v19, "nc":J
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    .line 1726
    const/high16 v2, -0x80000000

    or-int v2, v2, v23

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1727
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v4, v17

    if-nez v2, :cond_8

    sget-object v13, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v15, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v14, p0

    invoke-virtual/range {v13 .. v20}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1728
    :cond_8
    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1744
    .end local v19    # "nc":J
    :cond_9
    :goto_3
    if-gez v24, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    move/from16 v24, v0

    if-ltz v24, :cond_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v38, v0

    if-eqz v38, :cond_4

    move-object/from16 v0, v38

    array-length v2, v0

    move/from16 v0, v24

    if-ge v0, v2, :cond_4

    aget-object v33, v38, v24

    if-eqz v33, :cond_4

    .line 1748
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v2, v4

    ushr-int/lit8 v29, v2, 0x1

    .line 1749
    .local v29, "n":I
    :cond_b
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_11

    const/16 v26, 0x0

    .line 1750
    .local v26, "idleCount":I
    :goto_4
    move-object/from16 v0, v33

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v26, v2

    move-object/from16 v0, v33

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int v35, v2, v4

    .local v35, "s":I
    move/from16 v0, v35

    move/from16 v1, v29

    if-gt v0, v1, :cond_c

    move/from16 v29, v35

    if-lez v35, :cond_4

    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v17, v0

    const/16 v2, 0x20

    ushr-long v4, v17, v2

    long-to-int v0, v4

    move/from16 v36, v0

    .local v36, "u":I
    if-gez v36, :cond_4

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_4

    const v2, 0xffff

    and-int v25, v22, v2

    .restart local v25    # "i":I
    move/from16 v0, v28

    move/from16 v1, v25

    if-lt v0, v1, :cond_4

    aget-object v37, v38, v25

    .local v37, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_4

    .line 1756
    move-object/from16 v0, v37

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    int-to-long v4, v2

    const/high16 v2, 0x10000

    add-int v2, v2, v36

    int-to-long v7, v2

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long v19, v4, v7

    .line 1758
    .restart local v19    # "nc":J
    move-object/from16 v0, v37

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v4, -0x80000000

    or-int v4, v4, v22

    if-ne v2, v4, :cond_4

    sget-object v13, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v15, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v14, p0

    invoke-virtual/range {v13 .. v20}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1761
    move/from16 v0, v24

    move-object/from16 v1, v37

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 1762
    const/high16 v2, 0x10000

    add-int v2, v2, v22

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    move-object/from16 v0, v37

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1763
    move-object/from16 v0, v37

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v31, v0

    .local v31, "p":Ljava/lang/Thread;
    if-eqz v31, :cond_d

    .line 1764
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1765
    :cond_d
    add-int/lit8 v29, v29, -0x1

    if-gtz v29, :cond_b

    goto/16 :goto_2

    .line 1729
    .end local v25    # "i":I
    .end local v26    # "idleCount":I
    .end local v29    # "n":I
    .end local v31    # "p":Ljava/lang/Thread;
    .end local v35    # "s":I
    .end local v36    # "u":I
    .end local v37    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_e
    const/16 v2, 0x30

    shr-long v4, v17, v2

    long-to-int v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v5, 0xffff

    and-int/2addr v4, v5

    rsub-int/lit8 v4, v4, 0x1

    if-ne v2, v4, :cond_9

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide/from16 v15, v19

    .line 1730
    invoke-direct/range {v13 .. v18}, Ljava/util/concurrent/ForkJoinPool;->idleAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;JJ)V

    goto/16 :goto_3

    .line 1732
    .end local v19    # "nc":J
    :cond_f
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_9

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v4, v17

    if-nez v2, :cond_9

    .line 1734
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v39

    .line 1735
    .local v39, "wt":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1736
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1737
    move-object/from16 v0, v39

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1738
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_10

    .line 1739
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v4, v7, v8}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 1740
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1741
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    const/4 v7, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v2, v0, v4, v5, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 1749
    .end local v39    # "wt":Ljava/lang/Thread;
    .restart local v29    # "n":I
    :cond_11
    const/16 v26, -0x1

    goto/16 :goto_4
.end method

.method private tryAddWorker()V
    .locals 14

    .prologue
    const/16 v13, 0x20

    .line 1345
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, "c":J
    ushr-long v0, v4, v13

    long-to-int v11, v0

    .local v11, "u":I
    if-gez v11, :cond_1

    const v0, 0x8000

    and-int/2addr v0, v11

    if-eqz v0, :cond_1

    long-to-int v0, v4

    if-nez v0, :cond_1

    .line 1346
    add-int/lit8 v0, v11, 0x1

    const v1, 0xffff

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v1, v11

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long v0, v0

    shl-long v6, v0, v13

    .line 1348
    .local v6, "nc":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    const/4 v9, 0x0

    .line 1351
    .local v9, "ex":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .line 1353
    .local v12, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :try_start_0
    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .local v10, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v10, :cond_2

    invoke-interface {v10, p0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1355
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    .end local v6    # "nc":J
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v10    # "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .end local v12    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    :goto_0
    return-void

    .line 1358
    .restart local v6    # "nc":J
    .restart local v9    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :catch_0
    move-exception v8

    .line 1359
    .local v8, "e":Ljava/lang/Throwable;
    move-object v9, v8

    .line 1361
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, v12, v9}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2361
    .local p0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_1

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .local v16, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    if-eqz v16, :cond_1

    sget-object v13, Ljava/util/concurrent/ForkJoinPool;->commonPool:Ljava/util/concurrent/ForkJoinPool;

    .local v13, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v13, :cond_1

    iget-object v15, v13, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v15, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    array-length v1, v15

    add-int/lit8 v12, v1, -0x1

    .local v12, "m":I
    if-ltz v12, :cond_1

    move-object/from16 v0, v16

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v1, v12

    and-int/lit8 v1, v1, 0x7e

    aget-object v2, v15, v1

    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1

    iget v14, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v14, "s":I
    iget v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v14, v1, :cond_1

    iget-object v9, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v9, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v9, :cond_1

    .line 2369
    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v14, -0x1

    and-int/2addr v1, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v1, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int/2addr v1, v3

    int-to-long v10, v1

    .line 2370
    .local v10, "j":J
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v9, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    if-ne v1, v0, :cond_1

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2372
    iget-object v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v1, v9, :cond_0

    iget v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v1, v14, :cond_0

    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    move-object v4, v9

    move-wide v5, v10

    move-object/from16 v7, p0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2374
    add-int/lit8 v1, v14, -0x1

    iput v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2375
    const/4 v1, 0x0

    iput v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2376
    const/4 v1, 0x1

    .line 2381
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "j":J
    .end local v12    # "m":I
    .end local v13    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v14    # "s":I
    .end local v15    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    :goto_0
    return v1

    .line 2378
    .restart local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v9    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v10    # "j":J
    .restart local v12    # "m":I
    .restart local v13    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v14    # "s":I
    .restart local v15    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v16    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    :cond_0
    const/4 v1, 0x0

    iput v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2381
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "j":J
    .end local v12    # "m":I
    .end local v13    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v14    # "s":I
    .end local v15    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tryHelpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I
    .locals 20
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1873
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v15, 0x0

    .local v15, "stat":I
    const/16 v16, 0x0

    .line 1874
    .local v16, "steps":I
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1876
    :cond_0
    move-object/from16 v17, p2

    .line 1877
    .local v17, "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v10, p1

    .line 1879
    .local v10, "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    move-object/from16 v0, p2

    iget v14, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v14, "s":I
    if-gez v14, :cond_2

    .line 1880
    move v15, v14

    .line 1937
    .end local v10    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v14    # "s":I
    .end local v17    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    :goto_1
    return v15

    .line 1883
    .restart local v10    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v14    # "s":I
    .restart local v17    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v19, v0

    .local v19, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v1, v0

    add-int/lit8 v11, v1, -0x1

    .local v11, "m":I
    if-lez v11, :cond_1

    .line 1885
    iget v1, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    or-int/lit8 v1, v1, 0x1

    and-int v8, v1, v11

    .local v8, "h":I
    aget-object v18, v19, v8

    .local v18, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v17

    if-eq v1, v0, :cond_6

    .line 1887
    :cond_3
    move v13, v8

    .line 1888
    .local v13, "origin":I
    :cond_4
    add-int/lit8 v1, v8, 0x2

    and-int v8, v1, v11

    and-int/lit8 v1, v8, 0xf

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    move-object/from16 v0, v17

    iget v1, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_0

    iget-object v1, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_0

    .line 1891
    :cond_5
    aget-object v18, v19, v8

    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_7

    .line 1893
    iput v8, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 1902
    .end local v13    # "origin":I
    :cond_6
    :goto_2
    move-object/from16 v0, v17

    iget v1, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_0

    .line 1904
    move-object/from16 v0, v18

    iget v7, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v7, "b":I
    move-object/from16 v0, v18

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v1, v7, v1

    if-gez v1, :cond_9

    move-object/from16 v0, v18

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v2, "a":[Ljava/util/concurrent/ForkJoinTask;
    if-eqz v2, :cond_9

    .line 1905
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v7

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v1, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int v9, v1, v3

    .line 1906
    .local v9, "i":I
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v3, v9

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ForkJoinTask;

    .line 1908
    .local v5, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v17

    iget v1, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_0

    iget-object v1, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_0

    move-object/from16 v0, v18

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_0

    .line 1911
    const/4 v15, 0x1

    .line 1912
    if-eqz v5, :cond_8

    move-object/from16 v0, v18

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v7, :cond_8

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v3, v9

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1914
    add-int/lit8 v1, v7, 0x1

    move-object/from16 v0, v18

    iput v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1915
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->runSubtask(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_2

    .line 1896
    .end local v2    # "a":[Ljava/util/concurrent/ForkJoinTask;
    .end local v5    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "b":I
    .end local v9    # "i":I
    .restart local v13    # "origin":I
    :cond_7
    if-ne v8, v13, :cond_4

    goto/16 :goto_1

    .line 1917
    .end local v13    # "origin":I
    .restart local v2    # "a":[Ljava/util/concurrent/ForkJoinTask;
    .restart local v5    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "b":I
    .restart local v9    # "i":I
    :cond_8
    move-object/from16 v0, v18

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v7, :cond_6

    add-int/lit8 v16, v16, 0x1

    const/16 v1, 0x40

    move/from16 v0, v16

    if-ne v0, v1, :cond_6

    goto/16 :goto_1

    .line 1921
    .end local v2    # "a":[Ljava/util/concurrent/ForkJoinTask;
    .end local v5    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v9    # "i":I
    :cond_9
    move-object/from16 v0, v18

    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 1922
    .local v12, "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v17

    iget v1, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_0

    iget-object v1, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_0

    move-object/from16 v0, v18

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_0

    .line 1925
    if-eqz v12, :cond_1

    add-int/lit8 v16, v16, 0x1

    const/16 v1, 0x40

    move/from16 v0, v16

    if-eq v0, v1, :cond_1

    .line 1928
    move-object/from16 v17, v12

    .line 1929
    move-object/from16 v10, v18

    .line 1930
    goto/16 :goto_0
.end method

.method private tryTerminate(ZZ)Z
    .locals 26
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 2261
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->commonPool:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_0

    .line 2262
    const/4 v2, 0x0

    .line 2291
    :goto_0
    return v2

    .line 2264
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v16, v0

    .local v16, "c":J
    const-wide v2, 0x80000000L

    and-long v2, v2, v16

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 2265
    const/16 v2, 0x20

    ushr-long v2, v16, v2

    long-to-int v2, v2

    int-to-short v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    neg-int v3, v3

    if-ne v2, v3, :cond_1

    .line 2266
    monitor-enter p0

    .line 2267
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 2268
    monitor-exit p0

    .line 2270
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2268
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2272
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    if-ltz v2, :cond_5

    .line 2274
    if-nez p2, :cond_3

    .line 2275
    const/4 v2, 0x0

    goto :goto_0

    .line 2276
    :cond_3
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v6, "ps":I
    and-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_4

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v7, v6, 0x2

    .end local v6    # "ps":I
    .local v7, "ps":I
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_e

    move v6, v7

    .line 2278
    .end local v7    # "ps":I
    .restart local v6    # "ps":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v6

    .line 2279
    :goto_1
    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    const/high16 v13, -0x80000000

    move-object/from16 v9, p0

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2280
    const/high16 v2, -0x80000000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    .line 2282
    .end local v6    # "ps":I
    :cond_5
    if-nez p1, :cond_9

    .line 2283
    const/16 v2, 0x30

    shr-long v2, v16, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    neg-int v3, v3

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->hasQueuedSubmissions()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2285
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2287
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v24, v0

    .line 2288
    .local v24, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v24, :cond_9

    .line 2289
    const/16 v19, 0x1

    .local v19, "i":I
    :goto_2
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    .line 2290
    aget-object v23, v24, v19

    .local v23, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v23, :cond_8

    move-object/from16 v0, v23

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v2, :cond_8

    .line 2291
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2289
    :cond_8
    add-int/lit8 v19, v19, 0x2

    goto :goto_2

    .line 2295
    .end local v19    # "i":I
    .end local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide v2, 0x80000000L

    or-long v14, v16, v2

    move-object/from16 v9, p0

    move-wide/from16 v12, v16

    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2296
    const/16 v22, 0x0

    .local v22, "pass":I
    :goto_3
    const/4 v2, 0x3

    move/from16 v0, v22

    if-ge v0, v2, :cond_0

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v24, v0

    .line 2298
    .restart local v24    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v24, :cond_d

    .line 2300
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v20, v0

    .line 2301
    .local v20, "n":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 2302
    aget-object v23, v24, v19

    .restart local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v23, :cond_b

    .line 2303
    const/4 v2, -0x1

    move-object/from16 v0, v23

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2304
    if-lez v22, :cond_b

    .line 2305
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 2306
    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_b

    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v25, v0

    .local v25, "wt":Ljava/lang/Thread;
    if-eqz v25, :cond_b

    .line 2307
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2309
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2313
    :cond_a
    :goto_5
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 2301
    .end local v25    # "wt":Ljava/lang/Thread;
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 2322
    .end local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v12, "cc":J
    long-to-int v2, v12

    const v3, 0x7fffffff

    and-int v18, v2, v3

    .local v18, "e":I
    if-eqz v18, :cond_d

    const v2, 0xffff

    and-int v19, v18, v2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    aget-object v23, v24, v19

    .restart local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v23, :cond_d

    .line 2323
    move-object/from16 v0, v23

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/high16 v4, 0x1000000000000L

    add-long/2addr v4, v12

    const-wide/high16 v8, -0x1000000000000L

    and-long/2addr v4, v8

    or-long/2addr v2, v4

    const-wide v4, 0xffff80000000L

    and-long/2addr v4, v12

    or-long v14, v2, v4

    .line 2326
    .local v14, "nc":J
    move-object/from16 v0, v23

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int v3, v3, v18

    if-ne v2, v3, :cond_c

    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2328
    const/high16 v2, 0x10000

    add-int v2, v2, v18

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2329
    const/4 v2, -0x1

    move-object/from16 v0, v23

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2330
    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v21, v0

    .local v21, "p":Ljava/lang/Thread;
    if-eqz v21, :cond_c

    .line 2331
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_6

    .line 2296
    .end local v12    # "cc":J
    .end local v14    # "nc":J
    .end local v18    # "e":I
    .end local v19    # "i":I
    .end local v20    # "n":I
    .end local v21    # "p":Ljava/lang/Thread;
    .end local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 2310
    .restart local v19    # "i":I
    .restart local v20    # "n":I
    .restart local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v25    # "wt":Ljava/lang/Thread;
    :catch_0
    move-exception v2

    goto :goto_5

    .end local v19    # "i":I
    .end local v20    # "n":I
    .end local v22    # "pass":I
    .end local v23    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v24    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v25    # "wt":Ljava/lang/Thread;
    .restart local v7    # "ps":I
    :cond_e
    move v6, v7

    .end local v7    # "ps":I
    .restart local v6    # "ps":I
    goto/16 :goto_1
.end method


# virtual methods
.method final awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I
    .locals 10
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 2026
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v9, 0x0

    .line 2027
    .local v9, "s":I
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    iget v9, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v9, :cond_7

    .line 2028
    iget-object v8, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2029
    .local v8, "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object p2, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2030
    :cond_0
    iget v9, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v9, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2032
    :cond_1
    if-ltz v9, :cond_2

    iget v9, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v9, :cond_2

    .line 2033
    iget v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/ForkJoinPool;->helpSignal(Ljava/util/concurrent/ForkJoinTask;I)V

    .line 2034
    iget v9, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v9, :cond_2

    instance-of v0, p2, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_2

    .line 2036
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinTask;I)I

    move-result v9

    .line 2038
    :cond_2
    :goto_0
    if-ltz v9, :cond_6

    iget v9, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v9, :cond_6

    .line 2039
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->tryHelpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    move-result v9

    if-nez v9, :cond_2

    :cond_3
    iget v9, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v9, :cond_2

    .line 2042
    iget v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/ForkJoinPool;->helpSignal(Ljava/util/concurrent/ForkJoinTask;I)V

    .line 2043
    iget v9, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v9, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2044
    invoke-virtual {p2}, Ljava/util/concurrent/ForkJoinTask;->trySetSignal()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v9, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v9, :cond_4

    .line 2045
    monitor-enter p2

    .line 2046
    :try_start_0
    iget v0, p2, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_5

    .line 2048
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2054
    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2057
    :cond_4
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, "c":J
    const-wide/high16 v6, 0x1000000000000L

    add-long/2addr v6, v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 2053
    .end local v4    # "c":J
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 2054
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2062
    :cond_6
    iput-object v8, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2064
    .end local v8    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_7
    return v9

    .line 2049
    .restart local v8    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    .line 3100
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 3101
    .local v4, "nanos":J
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3111
    :goto_0
    return v6

    .line 3103
    :cond_0
    cmp-long v8, v4, v10

    if-gtz v8, :cond_1

    move v6, v7

    .line 3104
    goto :goto_0

    .line 3105
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, v4

    .line 3106
    .local v0, "deadline":J
    monitor-enter p0

    .line 3108
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3109
    monitor-exit p0

    goto :goto_0

    .line 3116
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3110
    :cond_2
    cmp-long v8, v4, v10

    if-gtz v8, :cond_3

    .line 3111
    :try_start_1
    monitor-exit p0

    move v6, v7

    goto :goto_0

    .line 3112
    :cond_3
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 3113
    .local v2, "millis":J
    cmp-long v8, v2, v10

    if-lez v8, :cond_4

    .end local v2    # "millis":J
    :goto_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 3114
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    sub-long v4, v0, v8

    .line 3115
    goto :goto_1

    .line 3113
    .restart local v2    # "millis":J
    :cond_4
    const-wide/16 v2, 0x1

    goto :goto_2
.end method

.method final deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 38
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1428
    const/16 v36, 0x0

    .line 1429
    .local v36, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v36, v0

    if-eqz v36, :cond_3

    .line 1431
    const/4 v2, -0x1

    move-object/from16 v0, v36

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1432
    move-object/from16 v0, v36

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v0, v2

    move-wide/from16 v31, v0

    .line 1433
    .local v31, "ns":J
    :cond_0
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->STEALCOUNT:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .local v6, "sc":J
    add-long v8, v6, v31

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1435
    move-object/from16 v0, p0

    iget v12, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v12, "ps":I
    and-int/lit8 v2, v12, 0x2

    if-nez v2, :cond_1

    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v13, v12, 0x2

    .end local v12    # "ps":I
    .local v13, "ps":I
    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_a

    move v12, v13

    .line 1437
    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v12

    .line 1438
    :goto_0
    const/high16 v2, -0x80000000

    and-int/2addr v2, v12

    add-int/lit8 v3, v12, 0x2

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    or-int v27, v2, v3

    .line 1440
    .local v27, "nps":I
    :try_start_0
    move-object/from16 v0, v36

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    move/from16 v30, v0

    .line 1441
    .local v30, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    .line 1442
    .local v37, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_2

    if-ltz v30, :cond_2

    move-object/from16 v0, v37

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_2

    aget-object v2, v37, v30

    move-object/from16 v0, v36

    if-ne v2, v0, :cond_2

    .line 1443
    const/4 v2, 0x0

    aput-object v2, v37, v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    :cond_2
    sget-object v22, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v24, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v23, p0

    move/from16 v26, v12

    invoke-virtual/range {v22 .. v27}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1446
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    .line 1451
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v27    # "nps":I
    .end local v30    # "idx":I
    .end local v31    # "ns":J
    .end local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    sget-object v14, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v18, v0

    .local v18, "c":J
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v18, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0x100000000L

    sub-long v4, v18, v4

    const-wide v8, 0xffff00000000L

    and-long/2addr v4, v8

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long v4, v4, v18

    or-long v20, v2, v4

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v21}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1456
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v36, :cond_5

    move-object/from16 v0, v36

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v2, :cond_5

    .line 1457
    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 1459
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v18, v0

    const/16 v2, 0x20

    ushr-long v2, v18, v2

    long-to-int v0, v2

    move/from16 v34, v0

    .local v34, "u":I
    if-gez v34, :cond_5

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v28, v0

    .local v28, "e":I
    if-ltz v28, :cond_5

    .line 1460
    if-lez v28, :cond_8

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    .restart local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_5

    const v2, 0xffff

    and-int v29, v28, v2

    .local v29, "i":I
    move-object/from16 v0, v37

    array-length v2, v0

    move/from16 v0, v29

    if-ge v0, v2, :cond_5

    aget-object v35, v37, v29

    .local v35, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_7

    .line 1483
    .end local v28    # "e":I
    .end local v29    # "i":I
    .end local v34    # "u":I
    .end local v35    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    :goto_1
    if-nez p2, :cond_9

    .line 1484
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    .line 1487
    :goto_2
    return-void

    .line 1445
    .end local v18    # "c":J
    .restart local v6    # "sc":J
    .restart local v12    # "ps":I
    .restart local v27    # "nps":I
    .restart local v31    # "ns":J
    :catchall_0
    move-exception v2

    sget-object v22, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v24, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v23, p0

    move/from16 v26, v12

    invoke-virtual/range {v22 .. v27}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1446
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    .line 1445
    :cond_6
    throw v2

    .line 1465
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v27    # "nps":I
    .end local v31    # "ns":J
    .restart local v18    # "c":J
    .restart local v28    # "e":I
    .restart local v29    # "i":I
    .restart local v34    # "u":I
    .restart local v35    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7
    move-object/from16 v0, v35

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int v4, v4, v34

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    or-long v20, v2, v4

    .line 1467
    .local v20, "nc":J
    move-object/from16 v0, v35

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int v3, v3, v28

    if-ne v2, v3, :cond_5

    .line 1469
    sget-object v14, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v21}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1470
    const/high16 v2, 0x10000

    add-int v2, v2, v28

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object/from16 v0, v35

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1471
    move-object/from16 v0, v35

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v33, v0

    .local v33, "p":Ljava/lang/Thread;
    if-eqz v33, :cond_5

    .line 1472
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_1

    .line 1477
    .end local v20    # "nc":J
    .end local v29    # "i":I
    .end local v33    # "p":Ljava/lang/Thread;
    .end local v35    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    move/from16 v0, v34

    int-to-short v2, v0

    if-gez v2, :cond_5

    .line 1478
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker()V

    goto :goto_1

    .line 1486
    .end local v28    # "e":I
    .end local v34    # "u":I
    :cond_9
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v18    # "c":J
    .restart local v6    # "sc":J
    .restart local v13    # "ps":I
    .restart local v31    # "ns":J
    :cond_a
    move v12, v13

    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    goto/16 :goto_0
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 2942
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 2944
    .local v0, "count":I
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 2945
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 2946
    aget-object v3, v4, v1

    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2947
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    .line 2948
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2949
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2945
    .end local v2    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2954
    .end local v1    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 2624
    if-nez p1, :cond_0

    .line 2625
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2627
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2628
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .line 2631
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2632
    return-void

    .line 2630
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public execute(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2611
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez p1, :cond_0

    .line 2612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2613
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2614
    return-void
.end method

.method final externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1501
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/concurrent/ForkJoinPool$Submitter;

    .local v15, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v14, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v14, :cond_2

    array-length v1, v14

    add-int/lit8 v11, v1, -0x1

    .local v11, "m":I
    if-ltz v11, :cond_2

    iget v1, v15, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v1, v11

    and-int/lit8 v1, v1, 0x7e

    aget-object v2, v14, v1

    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_2

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1505
    iget v9, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v9, "b":I
    iget v13, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1506
    .local v13, "s":I
    iget-object v7, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v7, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v7, :cond_1

    array-length v8, v7

    .local v8, "an":I
    add-int/lit8 v1, v13, 0x1

    sub-int v12, v1, v9

    .local v12, "n":I
    if-le v8, v12, :cond_1

    .line 1507
    add-int/lit8 v1, v8, -0x1

    and-int/2addr v1, v13

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v1, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    add-int v10, v1, v3

    .line 1508
    .local v10, "j":I
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v3, v10

    move-object/from16 v0, p1

    invoke-virtual {v1, v7, v3, v4, v0}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1509
    add-int/lit8 v1, v13, 0x1

    iput v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1510
    const/4 v1, 0x0

    iput v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1511
    const/4 v1, 0x2

    if-gt v12, v1, :cond_0

    .line 1512
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ForkJoinPool;->signalWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1518
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "an":I
    .end local v9    # "b":I
    .end local v10    # "j":I
    .end local v11    # "m":I
    .end local v12    # "n":I
    .end local v13    # "s":I
    .end local v14    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    :goto_0
    return-void

    .line 1515
    .restart local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v7    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v9    # "b":I
    .restart local v11    # "m":I
    .restart local v13    # "s":I
    .restart local v14    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    const/4 v1, 0x0

    iput v1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1517
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v9    # "b":I
    .end local v11    # "m":I
    .end local v13    # "s":I
    .end local v14    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/ForkJoinPool;->fullExternalPush(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method public getActiveThreadCount()I
    .locals 5

    .prologue
    .line 2806
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 2807
    .local v0, "r":I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "r":I
    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2775
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    ushr-int/lit8 v1, v1, 0x10

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFactory()Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    .prologue
    .line 2723
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 2

    .prologue
    .line 2742
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getPoolSize()I
    .locals 4

    .prologue
    .line 2765
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-short v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 5

    .prologue
    .line 2878
    const/4 v0, 0x0

    .line 2880
    .local v0, "count":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2881
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 2882
    aget-object v2, v3, v1

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    .line 2883
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 2881
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2886
    .end local v1    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public getQueuedTaskCount()J
    .locals 7

    .prologue
    .line 2859
    const-wide/16 v0, 0x0

    .line 2861
    .local v0, "count":J
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 2862
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 2863
    aget-object v3, v4, v2

    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2864
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 2862
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2867
    .end local v2    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getRunningThreadCount()I
    .locals 5

    .prologue
    .line 2787
    const/4 v1, 0x0

    .line 2789
    .local v1, "rc":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2790
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2791
    aget-object v2, v3, v0

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2792
    add-int/lit8 v1, v1, 0x1

    .line 2790
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2795
    .end local v0    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 7

    .prologue
    .line 2837
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .line 2839
    .local v0, "count":J
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 2840
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 2841
    aget-object v3, v4, v2

    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2842
    iget v5, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 2840
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2845
    .end local v2    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 2733
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    .prologue
    .line 2897
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1

    .line 2898
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2899
    aget-object v1, v2, v0

    .local v1, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2900
    const/4 v3, 0x1

    .line 2903
    .end local v0    # "i":I
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_1
    return v3

    .line 2898
    .restart local v0    # "i":I
    .restart local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2903
    .end local v0    # "i":I
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method final helpJoinOnce(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 3
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2077
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget v1, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v1, "s":I
    if-ltz v1, :cond_5

    .line 2078
    iget-object v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2079
    .local v0, "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object p2, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2080
    :cond_0
    iget v1, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2082
    :cond_1
    if-ltz v1, :cond_2

    iget v1, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_2

    .line 2083
    iget v2, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {p0, p2, v2}, Ljava/util/concurrent/ForkJoinPool;->helpSignal(Ljava/util/concurrent/ForkJoinTask;I)V

    .line 2084
    iget v1, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_2

    instance-of v2, p2, Ljava/util/concurrent/CountedCompleter;

    if-eqz v2, :cond_2

    .line 2086
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinTask;I)I

    move-result v1

    .line 2088
    :cond_2
    if-ltz v1, :cond_4

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2090
    :cond_3
    iget v2, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_4

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->tryHelpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    move-result v2

    if-gtz v2, :cond_3

    .line 2092
    :cond_4
    iput-object v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2094
    .end local v0    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "s":I
    :cond_5
    return-void
.end method

.method final helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 23
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 2131
    const/16 v18, 0x1

    .line 2133
    .local v18, "active":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v20

    .local v20, "localTask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v20, :cond_1

    .line 2134
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 2136
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextSeed()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue(I)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v21

    .line 2137
    .local v21, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_4

    .line 2139
    if-nez v18, :cond_3

    .line 2141
    const/16 v18, 0x1

    .line 2142
    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const-wide/high16 v10, 0x1000000000000L

    add-long v8, v6, v10

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2145
    .end local v6    # "c":J
    :cond_3
    move-object/from16 v0, v21

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move/from16 v19, v0

    .local v19, "b":I
    move-object/from16 v0, v21

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v19, v2

    if-gez v2, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v22

    .local v22, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v22, :cond_0

    .line 2146
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->runSubtask(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    .line 2150
    .end local v19    # "b":I
    .end local v22    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    if-eqz v18, :cond_7

    .line 2151
    const/16 v18, 0x0

    .line 2152
    :cond_5
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    const-wide/high16 v10, 0x1000000000000L

    sub-long v8, v6, v10

    .end local v6    # "c":J
    .local v8, "c":J
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_5

    move-wide v6, v8

    .line 2157
    .end local v8    # "c":J
    .restart local v6    # "c":J
    :goto_1
    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 2158
    :cond_6
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const-wide/high16 v2, 0x1000000000000L

    add-long v16, v6, v2

    move-object/from16 v11, p0

    move-wide v14, v6

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2164
    return-void

    .line 2156
    .end local v6    # "c":J
    :cond_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    goto :goto_1
.end method

.method final incrementActiveCount()V
    .locals 8

    .prologue
    .line 1597
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, "c":J
    const-wide/high16 v6, 0x1000000000000L

    add-long/2addr v6, v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    return-void
.end method

.method public invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2596
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    .line 2597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2598
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2599
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v9, 0x0

    .line 2697
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2699
    .local v2, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 2701
    .local v0, "done":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Callable;

    .line 2702
    .local v6, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v1, v6}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2703
    .local v1, "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2704
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2711
    .end local v1    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_0
    move-exception v7

    move-object v8, v7

    if-nez v0, :cond_2

    .line 2712
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 2713
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2712
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2706
    .end local v3    # "i":I
    .end local v5    # "size":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5    # "size":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 2707
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2706
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2708
    :cond_1
    const/4 v0, 0x1

    .line 2711
    if-nez v0, :cond_3

    .line 2712
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_3
    if-ge v3, v5, :cond_3

    .line 2713
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2712
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2711
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "size":I
    :cond_2
    throw v8

    .line 2709
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "size":I
    :cond_3
    return-object v2
.end method

.method public isQuiescent()Z
    .locals 3

    .prologue
    .line 2822
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 3082
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 6

    .prologue
    .line 3052
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 3053
    .local v0, "c":J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    neg-int v3, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTerminating()Z
    .locals 6

    .prologue
    .line 3071
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 3072
    .local v0, "c":J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    neg-int v3, v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3253
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3257
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2174
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 2179
    :goto_0
    return-object v3

    .line 2176
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextSeed()I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue(I)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v1

    .local v1, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v1, :cond_2

    .line 2177
    const/4 v3, 0x0

    goto :goto_0

    .line 2178
    :cond_2
    iget v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v3, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v3, v0, v3

    if-gez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    .line 2179
    goto :goto_0
.end method

.method protected pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2915
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2916
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2917
    aget-object v2, v3, v0

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    .local v1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    .line 2921
    .end local v0    # "i":I
    .end local v1    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_1
    return-object v1

    .line 2916
    .restart local v0    # "i":I
    .restart local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2921
    .end local v0    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 29
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;

    .prologue
    .line 1381
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v21, v0

    .local v21, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v21, :cond_0

    .line 1383
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1386
    :cond_0
    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ForkJoinPool;->INDEXSEED:J

    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/ForkJoinPool;->indexSeed:I

    .local v7, "s":I
    const v4, 0x61c88647

    add-int v8, v7, v4

    .end local v7    # "s":I
    .local v8, "s":I
    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v8, :cond_0

    .line 1387
    new-instance v27, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    ushr-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;II)V

    .line 1388
    .local v27, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    .local v13, "ps":I
    and-int/lit8 v3, v13, 0x2

    if-nez v3, :cond_1

    sget-object v9, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v11, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    add-int/lit8 v14, v13, 0x2

    .end local v13    # "ps":I
    .local v14, "ps":I
    move-object/from16 v10, p0

    invoke-virtual/range {v9 .. v14}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-nez v3, :cond_8

    move v13, v14

    .line 1390
    .end local v14    # "ps":I
    .restart local v13    # "ps":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    move-result v13

    .line 1391
    :goto_0
    const/high16 v3, -0x80000000

    and-int/2addr v3, v13

    add-int/lit8 v4, v13, 0x2

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    or-int v20, v3, v4

    .line 1393
    .local v20, "nps":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v28, v0

    .local v28, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v28, :cond_5

    .line 1394
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v23, v0

    .local v23, "n":I
    add-int/lit8 v22, v23, -0x1

    .line 1395
    .local v22, "m":I
    shl-int/lit8 v3, v8, 0x1

    or-int/lit8 v25, v3, 0x1

    .line 1396
    .local v25, "r":I
    and-int v25, v25, v22

    aget-object v3, v28, v25

    if-eqz v3, :cond_4

    .line 1397
    const/16 v24, 0x0

    .line 1398
    .local v24, "probes":I
    const/4 v3, 0x4

    move/from16 v0, v23

    if-gt v0, v3, :cond_3

    const/16 v26, 0x2

    .line 1399
    .local v26, "step":I
    :cond_2
    :goto_1
    add-int v3, v25, v26

    and-int v25, v3, v22

    aget-object v3, v28, v25

    if-eqz v3, :cond_4

    .line 1400
    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 1401
    shl-int/lit8 v23, v23, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    check-cast v28, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .restart local v28    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1402
    add-int/lit8 v22, v23, -0x1

    .line 1403
    const/16 v24, 0x0

    goto :goto_1

    .line 1398
    .end local v26    # "step":I
    :cond_3
    ushr-int/lit8 v3, v23, 0x1

    const v4, 0xfffe

    and-int/2addr v3, v4

    add-int/lit8 v26, v3, 0x2

    goto :goto_1

    .line 1407
    .end local v24    # "probes":I
    :cond_4
    move/from16 v0, v25

    move-object/from16 v1, v27

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    move/from16 v0, v25

    move-object/from16 v1, v27

    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1408
    aput-object v27, v28, v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    .end local v22    # "m":I
    .end local v23    # "n":I
    .end local v25    # "r":I
    :cond_5
    sget-object v15, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v17, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v16, p0

    move/from16 v19, v13

    invoke-virtual/range {v15 .. v20}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1412
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    .line 1414
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1415
    return-object v27

    .line 1411
    .end local v28    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v3

    sget-object v15, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v17, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    move-object/from16 v16, p0

    move/from16 v19, v13

    invoke-virtual/range {v15 .. v20}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1412
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    .line 1411
    :cond_7
    throw v3

    .end local v13    # "ps":I
    .end local v20    # "nps":I
    .restart local v14    # "ps":I
    :cond_8
    move v13, v14

    .end local v14    # "ps":I
    .restart local v13    # "ps":I
    goto/16 :goto_0
.end method

.method final runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 1
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 1641
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    .line 1642
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->runTask(Ljava/util/concurrent/ForkJoinTask;)V

    iget v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v0, :cond_0

    .line 1643
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 3022
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 3023
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 3024
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3041
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 3042
    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 3043
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 17
    .param p1, "q"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 1606
    move-object/from16 v0, p1

    iget v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    .line 1608
    .local v10, "hint":I
    :cond_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v5, "c":J
    const/16 v1, 0x20

    ushr-long v1, v5, v1

    long-to-int v13, v1

    .local v13, "u":I
    if-gez v13, :cond_1

    .line 1609
    long-to-int v9, v5

    .local v9, "e":I
    if-lez v9, :cond_3

    .line 1610
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v15, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    array-length v1, v15

    const v2, 0xffff

    and-int v11, v9, v2

    .local v11, "i":I
    if-le v1, v11, :cond_1

    aget-object v14, v15, v11

    .local v14, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v14, :cond_1

    iget v1, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v2, -0x80000000

    or-int/2addr v2, v9

    if-ne v1, v2, :cond_1

    .line 1612
    iget v1, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    const/high16 v3, 0x10000

    add-int/2addr v3, v13

    int-to-long v3, v3

    const/16 v16, 0x20

    shl-long v3, v3, v16

    or-long v7, v1, v3

    .line 1614
    .local v7, "nc":J
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1615
    iput v10, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 1616
    const/high16 v1, 0x10000

    add-int/2addr v1, v9

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1617
    iget-object v12, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v12, "p":Ljava/lang/Thread;
    if-eqz v12, :cond_1

    .line 1618
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v12}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1633
    .end local v7    # "nc":J
    .end local v9    # "e":I
    .end local v11    # "i":I
    .end local v12    # "p":Ljava/lang/Thread;
    .end local v14    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    :goto_0
    return-void

    .line 1621
    .restart local v7    # "nc":J
    .restart local v9    # "e":I
    .restart local v11    # "i":I
    .restart local v14    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v15    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1628
    .end local v7    # "nc":J
    .end local v11    # "i":I
    .end local v14    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    int-to-short v1, v13

    if-gez v1, :cond_1

    .line 1629
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker()V

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2678
    if-nez p1, :cond_0

    .line 2679
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2681
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2682
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .line 2685
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2686
    return-object v0

    .line 2684
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2667
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2668
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2669
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2656
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2657
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2658
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2644
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    .line 2645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2646
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2647
    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "x0"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 23

    .prologue
    .line 2966
    const-wide/16 v10, 0x0

    .local v10, "qt":J
    const-wide/16 v8, 0x0

    .local v8, "qs":J
    const/4 v12, 0x0

    .line 2967
    .local v12, "rc":I
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .line 2968
    .local v14, "st":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2970
    .local v3, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    .local v18, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_2

    .line 2971
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_2

    .line 2972
    aget-object v17, v18, v5

    .local v17, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_0

    .line 2973
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v13

    .line 2974
    .local v13, "size":I
    and-int/lit8 v19, v5, 0x1

    if-nez v19, :cond_1

    .line 2975
    int-to-long v0, v13

    move-wide/from16 v19, v0

    add-long v8, v8, v19

    .line 2971
    .end local v13    # "size":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2977
    .restart local v13    # "size":I
    :cond_1
    int-to-long v0, v13

    move-wide/from16 v19, v0

    add-long v10, v10, v19

    .line 2978
    move-object/from16 v0, v17

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v14, v14, v19

    .line 2979
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2980
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2985
    .end local v5    # "i":I
    .end local v13    # "size":I
    .end local v17    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    move/from16 v19, v0

    const v20, 0xffff

    and-int v7, v19, v20

    .line 2986
    .local v7, "pc":I
    const/16 v19, 0x20

    ushr-long v19, v3, v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    add-int v16, v7, v19

    .line 2987
    .local v16, "tc":I
    const/16 v19, 0x30

    shr-long v19, v3, v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v2, v7, v19

    .line 2988
    .local v2, "ac":I
    if-gez v2, :cond_3

    .line 2989
    const/4 v2, 0x0

    .line 2991
    :cond_3
    const-wide v19, 0x80000000L

    and-long v19, v19, v3

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_5

    .line 2992
    if-nez v16, :cond_4

    const-string v6, "Terminated"

    .line 2995
    .local v6, "level":Ljava/lang/String;
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", parallelism = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", active = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", running = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", steals = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", tasks = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", submissions = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 2992
    .end local v6    # "level":Ljava/lang/String;
    :cond_4
    const-string v6, "Terminating"

    goto :goto_2

    .line 2994
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    const-string v6, "Shutting down"

    .restart local v6    # "level":Ljava/lang/String;
    :goto_3
    goto/16 :goto_2

    .end local v6    # "level":Ljava/lang/String;
    :cond_6
    const-string v6, "Running"

    goto :goto_3
.end method

.method final tryCompensate()Z
    .locals 21

    .prologue
    .line 1976
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v3, 0xffff

    and-int v15, v2, v3

    .line 1978
    .local v15, "pc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v19, v0

    .local v19, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    long-to-int v10, v6

    .local v10, "e":I
    if-ltz v10, :cond_4

    .line 1979
    if-eqz v10, :cond_1

    const v2, 0xffff

    and-int v13, v10, v2

    .local v13, "i":I
    move-object/from16 v0, v19

    array-length v2, v0

    if-ge v13, v2, :cond_1

    aget-object v18, v19, v13

    .local v18, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_1

    .line 1981
    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const-wide v4, -0x100000000L

    and-long/2addr v4, v6

    or-long v8, v2, v4

    .line 1983
    .local v8, "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1984
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object/from16 v0, v18

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1985
    move-object/from16 v0, v18

    iget-object v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v14, "p":Ljava/lang/Thread;
    if-eqz v14, :cond_0

    .line 1986
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v14}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1987
    :cond_0
    const/4 v2, 0x1

    .line 2015
    .end local v6    # "c":J
    .end local v8    # "nc":J
    .end local v10    # "e":I
    .end local v13    # "i":I
    .end local v14    # "p":Ljava/lang/Thread;
    .end local v18    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    return v2

    .line 1990
    .restart local v6    # "c":J
    .restart local v10    # "e":I
    :cond_1
    const/16 v2, 0x20

    ushr-long v2, v6, v2

    long-to-int v2, v2

    int-to-short v0, v2

    move/from16 v17, v0

    .local v17, "tc":I
    if-ltz v17, :cond_2

    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    add-int/2addr v2, v15

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1992
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v6, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffffffL

    and-long/2addr v4, v6

    or-long v8, v2, v4

    .line 1993
    .restart local v8    # "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1994
    const/4 v2, 0x1

    goto :goto_0

    .line 1996
    .end local v8    # "nc":J
    :cond_2
    add-int v2, v17, v15

    const/16 v3, 0x7fff

    if-ge v2, v3, :cond_4

    .line 1997
    const-wide v2, 0x100000000L

    add-long/2addr v2, v6

    const-wide v4, 0xffff00000000L

    and-long/2addr v2, v4

    const-wide v4, -0xffff00000001L

    and-long/2addr v4, v6

    or-long v8, v2, v4

    .line 1998
    .restart local v8    # "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2000
    const/4 v11, 0x0

    .line 2001
    .local v11, "ex":Ljava/lang/Throwable;
    const/16 v20, 0x0

    .line 2003
    .local v20, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .local v12, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 2005
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2006
    const/4 v2, 0x1

    goto :goto_0

    .line 2008
    .end local v12    # "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    :catch_0
    move-exception v16

    .line 2009
    .local v16, "rex":Ljava/lang/Throwable;
    move-object/from16 v11, v16

    .line 2011
    .end local v16    # "rex":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 2015
    .end local v6    # "c":J
    .end local v8    # "nc":J
    .end local v10    # "e":I
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v17    # "tc":I
    .end local v20    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
