.class Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/javaomp/runtime/__OMPLoopScheduler$1;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized prepareDynamicChunks(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V
    .registers 12

    const-wide/16 v8, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_1a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Oops. Non-positive sized chunk encountered."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    :try_start_1a
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    const/4 v2, 0x1

    move-wide v3, v0

    :goto_23
    if-eqz v2, :cond_50

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    iget-wide v6, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    mul-long/2addr v0, v6

    add-long/2addr v0, v3

    iget-wide v6, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_37

    iget-wide v6, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_43

    :cond_37
    iget-wide v6, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_46

    iget-wide v6, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    cmp-long v6, v0, v6

    if-gtz v6, :cond_46

    :cond_43
    const/4 v2, 0x0

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    :cond_46
    new-instance v6, Lcom/samsung/javaomp/runtime/__OMPChunk;

    invoke-direct {v6, v3, v4, v0, v1}, Lcom/samsung/javaomp/runtime/__OMPChunk;-><init>(JJ)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-wide v3, v0

    goto :goto_23

    :cond_50
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;
    :try_end_57
    .catchall {:try_start_1a .. :try_end_57} :catchall_17

    goto :goto_7
.end method

.method private declared-synchronized prepareGuidedChunks(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V
    .registers 16

    const/4 v2, 0x1

    const-wide/16 v11, 0x0

    monitor-enter p0

    :try_start_4
    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_18

    if-eqz v0, :cond_a

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->chunkSize:J

    cmp-long v0, v0, v11

    if-gtz v0, :cond_1b

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Oops. Non-positive sized chunk encountered."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1b
    :try_start_1b
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumThreads()I

    move-result v6

    iget-wide v3, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_72

    const/4 v0, -0x1

    :goto_2d
    int-to-long v0, v0

    add-long v7, v3, v0

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->start:J

    move-wide v3, v0

    :goto_33
    if-eqz v2, :cond_74

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    sub-long/2addr v0, v3

    add-long/2addr v0, v7

    iget-wide v9, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    div-long/2addr v0, v9

    long-to-double v0, v0

    int-to-double v9, v6

    div-double/2addr v0, v9

    const-wide/high16 v9, 0x3fe0000000000000L

    add-double/2addr v0, v9

    double-to-long v0, v0

    iget-wide v9, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->chunkSize:J

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v9, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    mul-long/2addr v0, v9

    add-long/2addr v0, v3

    iget-wide v9, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_59

    iget-wide v9, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    cmp-long v9, v0, v9

    if-gez v9, :cond_65

    :cond_59
    iget-wide v9, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_68

    iget-wide v9, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    cmp-long v9, v0, v9

    if-gtz v9, :cond_68

    :cond_65
    const/4 v2, 0x0

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    :cond_68
    new-instance v9, Lcom/samsung/javaomp/runtime/__OMPChunk;

    invoke-direct {v9, v3, v4, v0, v1}, Lcom/samsung/javaomp/runtime/__OMPChunk;-><init>(JJ)V

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-wide v3, v0

    goto :goto_33

    :cond_72
    move v0, v2

    goto :goto_2d

    :cond_74
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;
    :try_end_7b
    .catchall {:try_start_1b .. :try_end_7b} :catchall_18

    goto :goto_8
.end method

.method private scheduleDynamic(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .registers 4

    invoke-direct {p0, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->prepareDynamicChunks(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->updateLoopData(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    return v0
.end method

.method private scheduleGuided(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->prepareGuidedChunks(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->updateLoopData(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    return v0
.end method

.method private scheduleStatic(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .registers 15

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getThreadNum()I

    move-result v1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumThreads()I

    move-result v0

    iget-boolean v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->isOrdered:Z

    if-eqz v2, :cond_60

    iget-object v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_f
    iget-wide v3, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_5f

    :cond_1b
    iget v3, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    if-ne v1, v3, :cond_5f

    iget v3, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    add-int/lit8 v3, v3, 0x1

    rem-int v0, v3, v0

    iput v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    iget v3, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_42
    iget v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    if-eq v1, v0, :cond_5f

    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_73

    move-result v0

    if-eqz v0, :cond_5f

    :try_start_54
    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_5f} :catch_6a
    .catchall {:try_start_54 .. :try_end_5f} :catchall_73

    :cond_5f
    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_73

    :cond_60
    iget-wide v2, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_76

    const/4 v0, 0x0

    :goto_69
    return v0

    :catch_6a
    move-exception v0

    :try_start_6b
    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string v1, "Unhandled exception"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_73
    move-exception v0

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_73

    throw v0

    :cond_76
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumThreads()I

    move-result v0

    int-to-long v4, v0

    int-to-long v6, v1

    iget-wide v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_db

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8e

    const/4 v0, 0x0

    goto :goto_69

    :cond_8e
    iget-wide v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    iget-wide v8, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_bd

    const/4 v0, -0x1

    :goto_99
    int-to-long v8, v0

    add-long v0, v1, v8

    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    iget-wide v8, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    div-long v8, v0, v2

    div-long v2, v8, v4

    rem-long v0, v8, v4

    cmp-long v4, v6, v0

    if-gez v4, :cond_b3

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    :cond_b3
    mul-long v4, v2, v6

    add-long/2addr v0, v4

    add-long/2addr v2, v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_bf

    const/4 v0, 0x0

    goto :goto_69

    :cond_bd
    const/4 v0, 0x1

    goto :goto_99

    :cond_bf
    iget-wide v4, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    mul-long/2addr v0, v4

    iget-wide v4, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myStart:J

    iget-wide v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    mul-long/2addr v0, v2

    iget-wide v4, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myEnd:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_d9

    const/4 v0, -0x1

    :goto_d4
    int-to-long v0, v0

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const/4 v0, 0x1

    goto :goto_69

    :cond_d9
    const/4 v0, 0x1

    goto :goto_d4

    :cond_db
    iget-wide v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    iget-wide v8, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_102

    const/4 v0, -0x1

    :goto_e6
    int-to-long v8, v0

    add-long v0, v1, v8

    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    iget-wide v8, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    div-long v2, v0, v2

    iget-wide v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    iget-wide v8, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    mul-long/2addr v4, v0

    add-long/2addr v0, v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_104

    const/4 v0, 0x0

    goto/16 :goto_69

    :cond_102
    const/4 v0, 0x1

    goto :goto_e6

    :cond_104
    cmp-long v6, v0, v2

    if-lez v6, :cond_109

    move-wide v0, v2

    :cond_109
    iget-wide v6, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    mul-long/2addr v4, v6

    iget-wide v6, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myStart:J

    iget-wide v4, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    mul-long/2addr v4, v0

    iget-wide v6, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_124

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    :goto_121
    const/4 v0, 0x1

    goto/16 :goto_69

    :cond_124
    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    goto :goto_121
.end method

.method private updateLoopData(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .registers 15

    iget-boolean v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->isOrdered:Z

    if-eqz v0, :cond_e1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumThreads()I

    move-result v5

    const/4 v0, 0x1

    if-le v5, v0, :cond_ba

    iget-object v6, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_e
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getThreadNum()I

    move-result v7

    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPChunk;

    if-eqz v0, :cond_6b

    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->lastChunk:Ljava/util/ArrayList;

    iget-wide v2, v0, Lcom/samsung/javaomp/runtime/__OMPChunk;->start:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_27
    iget v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    if-ne v7, v1, :cond_ac

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v5, :cond_75

    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->lastChunk:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_108

    if-eqz v4, :cond_64

    iget-wide v8, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_50

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_64

    :cond_50
    iget-wide v8, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_108

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_108

    :cond_64
    move-object v2, v1

    move v1, v3

    :goto_66
    add-int/lit8 v3, v3, 0x1

    move-object v4, v2

    move v2, v1

    goto :goto_2e

    :cond_6b
    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->lastChunk:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :catchall_72
    move-exception v0

    monitor-exit v6
    :try_end_74
    .catchall {:try_start_e .. :try_end_74} :catchall_72

    throw v0

    :cond_75
    :try_start_75
    iput v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_72

    move-result v1

    if-eqz v1, :cond_90

    :try_start_85
    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_90} :catch_b1
    .catchall {:try_start_85 .. :try_end_90} :catchall_72

    :cond_90
    const/4 v1, -0x1

    if-eq v2, v1, :cond_ac

    :try_start_93
    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    if-nez v1, :cond_ac

    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_ac
    monitor-exit v6

    :cond_ad
    :goto_ad
    if-nez v0, :cond_ea

    const/4 v0, 0x0

    :goto_b0
    return v0

    :catch_b1
    move-exception v0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string v1, "Unhandled interruption"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ba
    .catchall {:try_start_93 .. :try_end_ba} :catchall_72

    :cond_ba
    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPChunk;

    const/4 v1, 0x0

    iput v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    if-nez v1, :cond_ad

    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_ad

    :cond_e1
    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPChunk;

    goto :goto_ad

    :cond_ea
    iget-wide v1, v0, Lcom/samsung/javaomp/runtime/__OMPChunk;->end:J

    iget-wide v3, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_100

    const-wide/16 v1, -0x1

    iput-wide v1, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    :goto_f6
    iget-wide v1, v0, Lcom/samsung/javaomp/runtime/__OMPChunk;->start:J

    iput-wide v1, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myStart:J

    iget-wide v0, v0, Lcom/samsung/javaomp/runtime/__OMPChunk;->end:J

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myEnd:J

    const/4 v0, 0x1

    goto :goto_b0

    :cond_100
    iget-wide v1, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    goto :goto_f6

    :cond_108
    move v1, v2

    move-object v2, v4

    goto/16 :goto_66
.end method


# virtual methods
.method scheduleNext(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .registers 6

    sget-object v0, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler$1;->$SwitchMap$com$samsung$javaomp$runtime$OMPSched:[I

    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->sched:Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown scheduling type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->schedule:Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_28
    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->scheduleStatic(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    :goto_2c
    return v0

    :pswitch_2d
    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->scheduleDynamic(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    goto :goto_2c

    :pswitch_32
    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->scheduleGuided(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    goto :goto_2c

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_2d
        :pswitch_32
    .end packed-switch
.end method
