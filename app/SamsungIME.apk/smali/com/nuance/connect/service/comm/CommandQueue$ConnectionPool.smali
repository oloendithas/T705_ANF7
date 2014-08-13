.class Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionPool"
.end annotation


# instance fields
.field private isPaused:Z

.field private pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/nuance/connect/service/comm/CommandQueue;

.field private unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 8
    .param p2, "corePoolSize"    # I
    .param p3, "maximumPoolSize"    # I
    .param p4, "keepAliveTime"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 328
    .local p7, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 329
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 324
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 325
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->unpaused:Ljava/util/concurrent/locks/Condition;

    .line 330
    return-void
.end method

.method static synthetic access$2400(Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    return v0
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 360
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 362
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 370
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "PAUSING"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 339
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 343
    return-void

    .line 341
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "RESUMING"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 351
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    .line 352
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 356
    return-void

    .line 354
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
