.class public abstract Ljava/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field private static final EXCEPTION_MAP_CAPACITY:I = 0x20

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1471
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1472
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1473
    const/16 v2, 0x20

    new-array v2, v2, [Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 1475
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1476
    const-class v1, Ljava/util/concurrent/ForkJoinTask;

    .line 1477
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    const-string v3, "status"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    return-void

    .line 1479
    :catch_0
    move-exception v0

    .line 1480
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1375
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
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
    .line 1410
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
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
    .line 1423
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1436
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static final cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_0

    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    .line 465
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private clearExceptionalCompletion()V
    .locals 8

    .prologue
    .line 475
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 476
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 477
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 479
    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 480
    .local v6, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    .line 481
    .local v2, "i":I
    aget-object v0, v6, v2

    .line 482
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    .line 483
    .local v5, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 484
    iget-object v4, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 485
    .local v4, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_2

    .line 486
    if-nez v5, :cond_1

    .line 487
    aput-object v4, v6, v2

    .line 495
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 496
    const/4 v7, 0x0

    iput v7, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 500
    return-void

    .line 489
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    :try_start_1
    iput-object v4, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 498
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 492
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v2    # "i":I
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v5    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    move-object v5, v0

    .line 493
    move-object v0, v4

    .line 494
    goto :goto_0
.end method

.method private doInvoke()I
    .locals 5

    .prologue
    .line 357
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    .local v0, "s":I
    if-gez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    return v0

    .restart local v0    # "s":I
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v4, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v3, v4, p0}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    move-result v0

    goto :goto_0

    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    goto :goto_0
.end method

.method private doJoin()I
    .locals 5

    .prologue
    .line 342
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v0, "s":I
    if-gez v0, :cond_0

    move v4, v0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v4, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v4, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v3, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    if-gez v0, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v4, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, v2, p0}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    move-result v4

    goto :goto_0

    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v4

    goto :goto_0
.end method

.method private static expungeStaleExceptions()V
    .locals 9

    .prologue
    .line 563
    .local v6, "x":Ljava/lang/ref/Reference;
    :cond_0
    :goto_0
    sget-object v7, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 564
    instance-of v7, v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 565
    check-cast v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ForkJoinTask;

    .line 566
    .local v2, "key":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 567
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    and-int v1, v7, v8

    .line 568
    .local v1, "i":I
    aget-object v0, v5, v1

    .line 569
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v4, 0x0

    .line 570
    .local v4, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v0, :cond_0

    .line 571
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 572
    .local v3, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    if-ne v0, v6, :cond_2

    .line 573
    if-nez v4, :cond_1

    .line 574
    aput-object v3, v5, v1

    goto :goto_0

    .line 576
    :cond_1
    iput-object v3, v4, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    goto :goto_0

    .line 579
    :cond_2
    move-object v4, v0

    .line 580
    move-object v0, v3

    .line 581
    goto :goto_1

    .line 584
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 8

    .prologue
    .line 289
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinPool;->externalHelpJoin(Ljava/util/concurrent/ForkJoinTask;)V

    .line 290
    const/4 v7, 0x0

    .line 291
    .local v7, "interrupted":Z
    :cond_0
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_2

    .line 292
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_1

    .line 296
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 297
    :catch_0
    move-exception v6

    .line 298
    .local v6, "ie":Ljava/lang/InterruptedException;
    const/4 v7, 0x1

    .line 299
    goto :goto_1

    .line 302
    .end local v6    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 306
    :cond_2
    if-eqz v7, :cond_3

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 308
    :cond_3
    return v4
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 318
    :cond_0
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinPool;->externalHelpJoin(Ljava/util/concurrent/ForkJoinTask;)V

    .line 319
    :cond_1
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_3

    .line 320
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_2

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 326
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 325
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 329
    :cond_3
    return v4
.end method

.method public static getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 2

    .prologue
    .line 1117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1118
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    :goto_0
    return-object v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getQueuedTaskCount()I
    .locals 3

    .prologue
    .line 1161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    .line 1162
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1165
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1164
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1165
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v2

    goto :goto_1
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    .prologue
    .line 1182
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v5, 0x0

    .line 517
    iget v6, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v7, -0x10000000

    and-int/2addr v6, v7

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_1

    move-object v1, v5

    .line 556
    :cond_0
    :goto_0
    return-object v1

    .line 519
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 521
    .local v2, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 522
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 524
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 525
    sget-object v4, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 526
    .local v4, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    aget-object v0, v4, v6

    .line 527
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_2

    .line 528
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 530
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v4    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 533
    if-eqz v0, :cond_3

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    move-object v1, v5

    .line 534
    goto :goto_0
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .prologue
    .line 591
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 592
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 599
    :cond_0
    return-void

    .line 596
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public static helpQuiesce()V
    .locals 4

    .prologue
    .line 1078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1079
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1080
    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1084
    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-void

    .line 1083
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->externalHelpQuiescePool()V

    goto :goto_0
.end method

.method public static inForkJoinPool()Z
    .locals 1

    .prologue
    .line 1131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/high16 v6, -0x10000000

    .line 781
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-eqz v5, :cond_0

    instance-of v5, p0, Ljava/util/List;

    if-nez v5, :cond_2

    .line 782
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v5}, Ljava/util/concurrent/ForkJoinTask;->invokeAll([Ljava/util/concurrent/ForkJoinTask;)V

    .line 812
    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object v4, p0

    .line 786
    check-cast v4, Ljava/util/List;

    .line 788
    .local v4, "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 789
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 790
    .local v2, "last":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 791
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    .line 792
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_4

    .line 793
    if-nez v0, :cond_3

    .line 794
    new-instance v0, Ljava/lang/NullPointerException;

    .end local v0    # "ex":Ljava/lang/Throwable;
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 790
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 796
    :cond_4
    if-eqz v1, :cond_5

    .line 797
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_2

    .line 798
    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v5

    if-ge v5, v6, :cond_3

    if-nez v0, :cond_3

    .line 799
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 801
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    const/4 v1, 0x1

    :goto_3
    if-gt v1, v2, :cond_9

    .line 802
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    .line 803
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_7

    .line 804
    if-eqz v0, :cond_8

    .line 805
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    .line 801
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 806
    :cond_8
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v6, :cond_7

    .line 807
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    .line 810
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_9
    if-eqz v0, :cond_1

    .line 811
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static invokeAll(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "t1":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p1, "t2":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/high16 v3, -0x10000000

    .line 712
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 713
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v2

    and-int v0, v2, v3

    .local v0, "s1":I
    if-eq v0, v3, :cond_0

    .line 714
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 715
    :cond_0
    invoke-direct {p1}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v2

    and-int v1, v2, v3

    .local v1, "s2":I
    if-eq v1, v3, :cond_1

    .line 716
    invoke-direct {p1, v1}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 717
    :cond_1
    return-void
.end method

.method public static varargs invokeAll([Ljava/util/concurrent/ForkJoinTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "tasks":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    const/high16 v5, -0x10000000

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "ex":Ljava/lang/Throwable;
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .line 737
    .local v2, "last":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 738
    aget-object v3, p0, v1

    .line 739
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_1

    .line 740
    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/NullPointerException;

    .end local v0    # "ex":Ljava/lang/Throwable;
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 737
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 743
    :cond_1
    if-eqz v1, :cond_2

    .line 744
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_1

    .line 745
    :cond_2
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v4

    if-ge v4, v5, :cond_0

    if-nez v0, :cond_0

    .line 746
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 748
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v2, :cond_6

    .line 749
    aget-object v3, p0, v1

    .line 750
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_4

    .line 751
    if-eqz v0, :cond_5

    .line 752
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    .line 748
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 753
    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v4

    if-ge v4, v5, :cond_4

    .line 754
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3

    .line 757
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    if-eqz v0, :cond_7

    .line 758
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 759
    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    .line 1238
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1241
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 1240
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1241
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->peek()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    goto :goto_1
.end method

.method protected static pollNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1255
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static pollTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1460
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1461
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1462
    .local v0, "ex":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1463
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "ex":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 1464
    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 628
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000

    if-ne p1, v0, :cond_0

    .line 629
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 630
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 631
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 632
    :cond_1
    return-void
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 605
    if-eqz p0, :cond_2

    .line 606
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 607
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "ex":Ljava/lang/Throwable;
    throw p0

    .line 608
    .restart local p0    # "ex":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 609
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "ex":Ljava/lang/Throwable;
    throw p0

    .line 610
    .restart local p0    # "ex":Ljava/lang/Throwable;
    :cond_1
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 612
    :cond_2
    return-void
.end method

.method private setCompletion(I)I
    .locals 6
    .param p1, "completion"    # I

    .prologue
    .line 240
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-gez v4, :cond_1

    .line 245
    .end local v4    # "s":I
    :goto_0
    return v4

    .line 242
    .restart local v4    # "s":I
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    or-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    ushr-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_2

    .line 244
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_2
    move v4, p1

    .line 245
    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 444
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    .line 445
    .local v0, "s":I
    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 446
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    .line 447
    :cond_0
    return v0
.end method

.method static uncheckedThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1451
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1452
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1453
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x40000000

    .line 843
    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final compareAndSetForkJoinTaskTag(SS)Z
    .locals 6
    .param p1, "e"    # S
    .param p2, "tag"    # S

    .prologue
    .line 1326
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    int-to-short v0, v4

    if-eq v0, p1, :cond_1

    .line 1327
    const/4 v0, 0x0

    .line 1330
    :goto_0
    return v0

    .line 1328
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p2

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    const/high16 v1, -0x10000000

    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 929
    :goto_0
    return-void

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 903
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .end local p1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 906
    return-void

    .line 903
    .restart local p1    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method final doExec()I
    .locals 4

    .prologue
    .line 259
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v2, "s":I
    if-ltz v2, :cond_0

    .line 261
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 265
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    .line 266
    const/high16 v3, -0x10000000

    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v2

    .end local v0    # "completed":Z
    :cond_0
    move v3, v2

    .line 268
    :goto_0
    return v3

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 654
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    .line 657
    :goto_0
    return-object p0

    .line 656
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->commonPool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 956
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v1

    .line 959
    .local v1, "s":I
    :goto_0
    const/high16 v2, -0x10000000

    and-int/2addr v1, v2

    const/high16 v2, -0x40000000

    if-ne v1, v2, :cond_1

    .line 960
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 956
    .end local v1    # "s":I
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v1

    goto :goto_0

    .line 961
    .restart local v1    # "s":I
    :cond_1
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 962
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 963
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 23
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 982
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 983
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 986
    :cond_0
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    .line 987
    .local v17, "ns":J
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v7, "s":I
    if-ltz v7, :cond_c

    const-wide/16 v3, 0x0

    cmp-long v3, v17, v3

    if-lez v3, :cond_c

    .line 988
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    add-long v10, v3, v17

    .line 989
    .local v10, "deadline":J
    const/16 v19, 0x0

    .line 990
    .local v19, "p":Ljava/util/concurrent/ForkJoinPool;
    const/16 v21, 0x0

    .line 991
    .local v21, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    .line 992
    .local v20, "t":Ljava/lang/Thread;
    move-object/from16 v0, v20

    instance-of v3, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_3

    move-object/from16 v22, v20

    .line 993
    check-cast v22, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 994
    .local v22, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v19, v0

    .line 995
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v21, v0

    .line 996
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpJoinOnce(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V

    .line 1000
    .end local v22    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    const/4 v9, 0x0

    .line 1001
    .local v9, "canBlock":Z
    const/4 v14, 0x0

    .line 1003
    .local v14, "interrupted":Z
    :cond_1
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v7, :cond_9

    .line 1004
    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v3, :cond_4

    .line 1005
    invoke-static/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1032
    :catchall_0
    move-exception v3

    if-eqz v19, :cond_2

    if-eqz v9, :cond_2

    .line 1033
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    .line 1032
    :cond_2
    throw v3

    .line 999
    .end local v9    # "canBlock":Z
    .end local v14    # "interrupted":Z
    :cond_3
    invoke-static/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->externalHelpJoin(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    .line 1006
    .restart local v9    # "canBlock":Z
    .restart local v14    # "interrupted":Z
    :cond_4
    if-nez v9, :cond_6

    .line 1007
    if-eqz v19, :cond_5

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1008
    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 1011
    :cond_6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v15

    .local v15, "ms":J
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-lez v3, :cond_8

    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v4, 0x10000

    or-int v8, v7, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1013
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ltz v3, :cond_b

    .line 1016
    :try_start_3
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1024
    :cond_7
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1026
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v7, :cond_9

    if-nez v14, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v3

    sub-long v17, v10, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v17, v3

    if-gtz v3, :cond_1

    .line 1032
    .end local v15    # "ms":J
    :cond_9
    if-eqz v19, :cond_a

    if-eqz v9, :cond_a

    .line 1033
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    .line 1035
    :cond_a
    if-eqz v14, :cond_c

    .line 1036
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1017
    .restart local v15    # "ms":J
    :catch_0
    move-exception v13

    .line 1018
    .local v13, "ie":Ljava/lang/InterruptedException;
    if-nez v19, :cond_7

    .line 1019
    const/4 v14, 0x1

    goto :goto_2

    .line 1023
    .end local v13    # "ie":Ljava/lang/InterruptedException;
    :cond_b
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 1024
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1038
    .end local v9    # "canBlock":Z
    .end local v10    # "deadline":J
    .end local v14    # "interrupted":Z
    .end local v15    # "ms":J
    .end local v19    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v20    # "t":Ljava/lang/Thread;
    .end local v21    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_c
    const/high16 v3, -0x10000000

    and-int/2addr v7, v3

    const/high16 v3, -0x10000000

    if-eq v7, v3, :cond_f

    .line 1040
    const/high16 v3, -0x40000000

    if-ne v7, v3, :cond_d

    .line 1041
    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v3

    .line 1042
    :cond_d
    const/high16 v3, -0x80000000

    if-eq v7, v3, :cond_e

    .line 1043
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3

    .line 1044
    :cond_e
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v12

    .local v12, "ex":Ljava/lang/Throwable;
    if-eqz v12, :cond_f

    .line 1045
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v12}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1047
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 882
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    and-int v0, v1, v2

    .line 883
    .local v0, "s":I
    if-lt v0, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, -0x40000000

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0
.end method

.method public final getForkJoinTaskTag()S
    .locals 1

    .prologue
    .line 1290
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 454
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 688
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v1

    and-int v0, v1, v2

    .local v0, "s":I
    if-eq v0, v2, :cond_0

    .line 689
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 690
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 851
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    .prologue
    .line 860
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v1, -0x10000000

    .line 871
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 847
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final join()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 673
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v1

    and-int v0, v1, v2

    .local v0, "s":I
    if-eq v0, v2, :cond_0

    .line 674
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 675
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final quietlyComplete()V
    .locals 1

    .prologue
    .line 941
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x10000000

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 942
    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    .prologue
    .line 1066
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    .line 1067
    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    .prologue
    .line 1057
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    .line 1058
    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 414
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_1

    .line 415
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 416
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 417
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 419
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 420
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 421
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v2, v1, v6

    .line 422
    .local v2, "i":I
    aget-object v0, v5, v2

    .line 423
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-nez v0, :cond_2

    .line 424
    new-instance v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    aget-object v7, v5, v2

    invoke-direct {v6, p0, p1, v7}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;-><init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;)V

    aput-object v6, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 433
    const/high16 v6, -0x80000000

    invoke-direct {p0, v6}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v4

    .line 435
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    return v4

    .line 427
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v1    # "h":I
    .restart local v2    # "i":I
    .restart local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_0

    .line 422
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 431
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public reinitialize()V
    .locals 2

    .prologue
    .line 1103
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1104
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->clearExceptionalCompletion()V

    .line 1107
    :goto_0
    return-void

    .line 1106
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    goto :goto_0
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 6
    .param p1, "tag"    # S

    .prologue
    .line 1303
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p1

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    int-to-short v0, v4

    return v0
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method final trySetSignal()Z
    .locals 6

    .prologue
    .line 279
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 280
    .local v4, "s":I
    if-ltz v4, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryUnfork()Z
    .locals 2

    .prologue
    .line 1146
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v1

    goto :goto_0
.end method
