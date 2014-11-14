.class public Lcom/samsung/javaomp/runtime/OMPLock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/javaomp/runtime/IOMPLock;


# instance fields
.field private volatile semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyLock()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public initLock()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public setLock()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string v1, "Unhandled interruption"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public testLock()I
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public unsetLock()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
