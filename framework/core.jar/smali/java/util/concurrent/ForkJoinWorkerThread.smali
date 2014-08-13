.class public Ljava/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# instance fields
.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field final workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 1
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .prologue
    .line 49
    const-string v0, "aForkJoinWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 51
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 52
    return-void
.end method


# virtual methods
.method public getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:I

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, "exception":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onStart()V

    .line 108
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 118
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    :goto_0
    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 121
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v0

    .line 113
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    goto :goto_0

    .line 112
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 113
    :try_start_3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 118
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    :goto_1
    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 112
    throw v2

    .line 114
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 115
    if-nez v1, :cond_0

    .line 116
    move-object v1, v0

    .line 118
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    goto :goto_0

    :catchall_1
    move-exception v2

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v2

    .line 114
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 115
    .restart local v0    # "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .line 116
    move-object v1, v0

    .line 118
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_2
    move-exception v2

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v2

    .line 114
    :catch_3
    move-exception v0

    .line 115
    .restart local v0    # "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    .line 116
    move-object v1, v0

    .line 118
    :cond_2
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_3
    move-exception v2

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v2
.end method
