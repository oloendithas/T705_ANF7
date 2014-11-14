.class Lcom/samsung/javaomp/runtime/__OMPThread;
.super Ljava/lang/Thread;


# static fields
.field private static threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/samsung/javaomp/runtime/__OMPThreadStorage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private finalized:Ljava/lang/Boolean;

.field private volatile firstWorkItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

.field private volatile icv:Lcom/samsung/javaomp/runtime/__OMPICV;

.field private volatile id:I

.field isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile masterStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

.field private volatile oldStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

.field private suspendFlag:Z

.field private volatile team:Lcom/samsung/javaomp/runtime/__OMPTeam;

.field private volatile threadStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

.field private volatile workshare:Lcom/samsung/javaomp/runtime/__OMPWorkshare;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/samsung/javaomp/runtime/__OMPThread;->threadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->oldStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->finalized:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->suspendFlag:Z

    iput p1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->id:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private suspendThread()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_17

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/__OMPThread;->isFinalized()Z

    move-result v0

    if-eqz v0, :cond_9

    monitor-exit p0

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->suspendFlag:Z

    :goto_c
    iget-boolean v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->suspendFlag:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    :try_start_16
    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :cond_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_14

    goto :goto_8
.end method


# virtual methods
.method finalizeThread()Z
    .registers 3

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->finalized:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->suspendFlag:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_17

    :goto_13
    return v1

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13
.end method

.method getOmpId()I
    .registers 2

    iget v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->id:I

    return v0
.end method

.method getTeam()Lcom/samsung/javaomp/runtime/__OMPTeam;
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->team:Lcom/samsung/javaomp/runtime/__OMPTeam;

    return-object v0
.end method

.method getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->threadStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-object v0
.end method

.method public isFinalized()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->finalized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/__OMPThread;->setThreadLocal()V

    invoke-virtual {p0}, Lcom/samsung/javaomp/runtime/__OMPThread;->getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v1

    iget v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->id:I

    invoke-virtual {v1, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setId(I)V

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->workshare:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    invoke-virtual {v1, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setWorkshare(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->team:Lcom/samsung/javaomp/runtime/__OMPTeam;

    invoke-virtual {v1, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setTeam(Lcom/samsung/javaomp/runtime/__OMPTeam;)V

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->icv:Lcom/samsung/javaomp/runtime/__OMPICV;

    invoke-virtual {v1, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setICV(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->masterStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-virtual {v1, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setMasterStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->oldStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-virtual {v1, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setAncestorStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->firstWorkItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    invoke-virtual {v1, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setWorkItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->firstWorkItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    iget v2, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->id:I

    invoke-virtual {v0, v2}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__doWork(I)V

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getTeam()Lcom/samsung/javaomp/runtime/__OMPTeam;

    move-result-object v0

    iget-object v2, v0, Lcom/samsung/javaomp/runtime/__OMPTeam;->workItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->finalized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_62

    :try_start_3f
    invoke-direct {p0}, Lcom/samsung/javaomp/runtime/__OMPThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__doBarrier()V

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_51

    invoke-direct {p0}, Lcom/samsung/javaomp/runtime/__OMPThread;->suspendThread()V

    :cond_51
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    if-eqz v0, :cond_37

    invoke-direct {p0}, Lcom/samsung/javaomp/runtime/__OMPThread;->isRunning()Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {v2, v0}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    :cond_62
    :goto_62
    return-void

    :cond_63
    new-instance v3, Lcom/samsung/javaomp/runtime/__OMPICV;

    iget-object v4, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->masterStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-virtual {v4}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getICV()Lcom/samsung/javaomp/runtime/__OMPICV;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/javaomp/runtime/__OMPICV;-><init>(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    invoke-virtual {v1, v3}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setICV(Lcom/samsung/javaomp/runtime/__OMPICV;)V

    invoke-virtual {v1, v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->setWorkItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    iget v3, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->id:I

    invoke-virtual {v0, v3}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;->__doWork(I)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_79} :catch_7a

    goto :goto_37

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->finalized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_62
.end method

.method setAncestorStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->oldStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-void
.end method

.method setFirstWorkItem(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->firstWorkItem:Lcom/samsung/javaomp/runtime/__OMPWorkItem;

    return-void
.end method

.method setIcv(Lcom/samsung/javaomp/runtime/__OMPICV;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->icv:Lcom/samsung/javaomp/runtime/__OMPICV;

    return-void
.end method

.method setMasterStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->masterStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-void
.end method

.method setOmpId(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->id:I

    return-void
.end method

.method setRunning(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method setTeam(Lcom/samsung/javaomp/runtime/__OMPTeam;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->team:Lcom/samsung/javaomp/runtime/__OMPTeam;

    return-void
.end method

.method setThreadLocal()V
    .registers 3

    sget-object v0, Lcom/samsung/javaomp/runtime/__OMPThread;->threadLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->threadStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method setThreadStorage(Lcom/samsung/javaomp/runtime/__OMPThreadStorage;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->threadStorage:Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    return-void
.end method

.method setWorkshare(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->workshare:Lcom/samsung/javaomp/runtime/__OMPWorkshare;

    return-void
.end method

.method public wakeUpThread()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_d

    iput-boolean v1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->suspendFlag:Z

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v2, v3, :cond_21

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v2, v3, :cond_21

    iput-boolean v1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->suspendFlag:Z

    move v0, v1

    goto :goto_c

    :cond_21
    iput-boolean v1, p0, Lcom/samsung/javaomp/runtime/__OMPThread;->suspendFlag:Z

    monitor-enter p0

    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_c

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_29

    throw v0
.end method
