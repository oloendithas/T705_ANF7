.class final Ljava/util/concurrent/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final QLOCK:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field volatile currentJoin:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field currentSteal:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile eventCount:I

.field hint:I

.field final mode:I

.field nextWait:I

.field nsteals:I

.field final owner:Ljava/util/concurrent/ForkJoinWorkerThread;

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

.field volatile pad1c:Ljava/lang/Object;

.field volatile pad1d:Ljava/lang/Object;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field poolIndex:I

.field volatile qlock:I

.field seed:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1031
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v4

    sput-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1032
    const-class v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1033
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [Ljava/util/concurrent/ForkJoinTask;

    .line 1034
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-string v5, "qlock"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    .line 1036
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    sput v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    .line 1037
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    .line 1038
    .local v3, "scale":I
    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 1039
    new-instance v4, Ljava/lang/Error;

    const-string v5, "data type scale not a power of two"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "scale":I
    :catch_0
    move-exception v1

    .line 1042
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1040
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "scale":I
    :cond_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1f

    sput v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1044
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;II)V
    .locals 1
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p2, "owner"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p3, "mode"    # I
    .param p4, "seed"    # I

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 676
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 677
    iput p3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:I

    .line 678
    iput p4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->seed:I

    .line 680
    const/16 v0, 0x1000

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 681
    return-void
.end method

.method private pollAndExecAll()V
    .locals 1

    .prologue
    .line 902
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    .local v0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 904
    :cond_0
    return-void
.end method

.method private popAndExecAll()V
    .locals 9

    .prologue
    .line 890
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    .local v6, "m":I
    if-ltz v6, :cond_1

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v7, v0, -0x1

    .local v7, "s":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v7, v0

    if-ltz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    and-int v5, v6, v7

    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v5, v8

    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v5, v8

    int-to-long v2, v5

    .local v2, "j":J
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_1

    .line 891
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    iput v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 893
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 896
    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "m":I
    .end local v7    # "s":I
    :cond_1
    return-void
.end method


# virtual methods
.method final cancelAll()V
    .locals 2

    .prologue
    .line 858
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    .line 859
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    .line 860
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    .local v0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 861
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    .line 862
    :cond_0
    return-void
.end method

.method final growArray()[Ljava/util/concurrent/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 735
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 736
    .local v1, "oldA":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    array-length v0, v1

    shl-int/lit8 v12, v0, 0x1

    .line 737
    .local v12, "size":I
    :goto_0
    const/high16 v0, 0x4000000

    if-le v12, v0, :cond_1

    .line 738
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Queue capacity exceeded"

    invoke-direct {v0, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    .end local v12    # "size":I
    :cond_0
    const/16 v12, 0x2000

    goto :goto_0

    .line 740
    .restart local v12    # "size":I
    :cond_1
    new-array v6, v12, [Ljava/util/concurrent/ForkJoinTask;

    iput-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 741
    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_4

    array-length v0, v1

    add-int/lit8 v10, v0, -0x1

    .local v10, "oldMask":I
    if-ltz v10, :cond_4

    iget v13, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v13, "t":I
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v7, "b":I
    sub-int v0, v13, v7

    if-lez v0, :cond_4

    .line 743
    add-int/lit8 v9, v12, -0x1

    .line 746
    .local v9, "mask":I
    :cond_2
    and-int v0, v7, v10

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v11, v0, v2

    .line 747
    .local v11, "oldj":I
    and-int v0, v7, v9

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v8, v0, v2

    .line 748
    .local v8, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v11

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 749
    .local v4, "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_3

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 751
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    invoke-virtual {v0, v6, v2, v3, v4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 752
    :cond_3
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v13, :cond_2

    .line 754
    .end local v4    # "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "b":I
    .end local v8    # "j":I
    .end local v9    # "mask":I
    .end local v10    # "oldMask":I
    .end local v11    # "oldj":I
    .end local v13    # "t":I
    :cond_4
    return-object v6
.end method

.method final isApparentlyUnblocked()Z
    .locals 3

    .prologue
    .line 1017
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v2, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    .local v0, "s":Ljava/lang/Thread$State;
    sget-object v2, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "s":Ljava/lang/Thread$State;
    .end local v1    # "wt":Ljava/lang/Thread;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final isEmpty()Z
    .locals 9

    .prologue
    .line 698
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v3, "s":I
    sub-int v2, v4, v3

    .line 699
    .local v2, "n":I
    if-gez v2, :cond_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_0

    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    sget v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v5, v6

    int-to-long v5, v5

    sget v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v4, v0, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "m":I
    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method final nextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 824
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0
.end method

.method final nextSeed()I
    .locals 2

    .prologue
    .line 872
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->seed:I

    .line 873
    .local v0, "r":I
    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 874
    ushr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    .line 875
    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->seed:I

    return v0
.end method

.method final peek()Ljava/util/concurrent/ForkJoinTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 832
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    array-length v4, v0

    add-int/lit8 v3, v4, -0x1

    .local v3, "m":I
    if-gez v3, :cond_1

    .line 833
    .end local v3    # "m":I
    :cond_0
    const/4 v4, 0x0

    .line 836
    :goto_0
    return-object v4

    .line 834
    .restart local v3    # "m":I
    :cond_1
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:I

    if-nez v4, :cond_2

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v1, v4, -0x1

    .line 835
    .local v1, "i":I
    :goto_1
    and-int v4, v1, v3

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v4, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v2, v4, v5

    .line 836
    .local v2, "j":I
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v5, v2

    invoke-virtual {v4, v0, v5, v6}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 834
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    goto :goto_1
.end method

.method final poll()Ljava/util/concurrent/ForkJoinTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 801
    :cond_0
    :goto_0
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v6, v0

    if-gez v0, :cond_2

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_2

    .line 802
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v6

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v7, v0, v2

    .line 803
    .local v7, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 804
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_1

    .line 805
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 817
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "j":I
    :goto_1
    return-object v4

    .line 811
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "j":I
    :cond_1
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_0

    .line 812
    add-int/lit8 v0, v6, 0x1

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v2, :cond_3

    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "j":I
    :cond_2
    move-object v4, v5

    .line 817
    goto :goto_1

    .line 814
    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "j":I
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method final pollAndExecCC(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 960
    .local p1, "root":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v6, v0

    if-gez v0, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    .line 961
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v6

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v5

    int-to-long v2, v0

    .line 962
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .local v7, "o":Ljava/lang/Object;
    if-eqz v7, :cond_1

    instance-of v0, v7, Ljava/util/concurrent/CountedCompleter;

    if-nez v0, :cond_2

    .line 980
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v7    # "o":Ljava/lang/Object;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .restart local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "j":J
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_2
    move-object v4, v7

    .line 965
    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    .local v4, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v8, v4

    .line 966
    .local v8, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_3
    if-ne v8, p1, :cond_4

    .line 967
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 970
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 971
    const/4 v0, 0x1

    goto :goto_1

    .line 976
    :cond_4
    iget-object v8, v8, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v8, :cond_3

    goto :goto_0
.end method

.method final pollAt(I)Ljava/util/concurrent/ForkJoinTask;
    .locals 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 784
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    .line 785
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v6, v0, v2

    .line 786
    .local v6, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, p1, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 793
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "j":I
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method final pop()Ljava/util/concurrent/ForkJoinTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 763
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    .local v6, "m":I
    if-ltz v6, :cond_1

    .line 764
    :cond_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v7, v0, -0x1

    .local v7, "s":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v7, v0

    if-ltz v0, :cond_1

    .line 765
    and-int v0, v6, v7

    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v8

    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v8

    int-to-long v2, v0

    .line 766
    .local v2, "j":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_2

    .end local v2    # "j":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "m":I
    .end local v7    # "s":I
    :cond_1
    move-object v4, v5

    .line 774
    :goto_0
    return-object v4

    .line 768
    .restart local v2    # "j":J
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "m":I
    .restart local v7    # "s":I
    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iput v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0
.end method

.method final push(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 717
    .local v5, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 718
    array-length v6, v0

    add-int/lit8 v2, v6, -0x1

    .local v2, "m":I
    and-int v6, v2, v5

    sget v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v6, v7

    sget v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v1, v6, v7

    .line 719
    .local v1, "j":I
    sget-object v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v7, v1

    invoke-virtual {v6, v0, v7, v8, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 720
    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v3, v6, v7

    .local v3, "n":I
    const/4 v6, 0x2

    if-gt v3, v6, :cond_1

    .line 721
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    .local v4, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v4, :cond_0

    .line 722
    invoke-virtual {v4, p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 727
    .end local v1    # "j":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    .end local v4    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_0
    :goto_0
    return-void

    .line 724
    .restart local v1    # "j":I
    .restart local v2    # "m":I
    .restart local v3    # "n":I
    :cond_1
    if-lt v3, v2, :cond_0

    .line 725
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0
.end method

.method final queueSize()I
    .locals 3

    .prologue
    .line 687
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v1, v2

    .line 688
    .local v0, "n":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    neg-int v1, v0

    goto :goto_0
.end method

.method final runSubtask(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_0

    .line 1006
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1007
    .local v0, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1008
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1010
    .end local v0    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    return-void
.end method

.method final runTask(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_0

    .line 989
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 990
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 991
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 992
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 993
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->mode:I

    if-nez v0, :cond_1

    .line 994
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->popAndExecAll()V

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecAll()V

    goto :goto_0
.end method

.method final tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v5, 0x0

    .line 914
    const/4 v13, 0x1

    .local v13, "stat":Z
    const/4 v11, 0x0

    .local v11, "removed":Z
    const/4 v7, 0x1

    .line 916
    .local v7, "empty":Z
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v9, v0, -0x1

    .local v9, "m":I
    if-ltz v9, :cond_1

    iget v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v12, "s":I
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    sub-int v10, v12, v6

    .local v10, "n":I
    if-lez v10, :cond_1

    .line 919
    :cond_0
    add-int/lit8 v12, v12, -0x1

    and-int v0, v12, v9

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v8, v0, v2

    .line 920
    .local v8, "j":I
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 921
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_3

    .line 949
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "b":I
    .end local v8    # "j":I
    .end local v9    # "m":I
    .end local v10    # "n":I
    .end local v12    # "s":I
    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    .line 950
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 951
    :cond_2
    return v13

    .line 923
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "b":I
    .restart local v8    # "j":I
    .restart local v9    # "m":I
    .restart local v10    # "n":I
    .restart local v12    # "s":I
    :cond_3
    if-ne v4, p1, :cond_5

    .line 924
    add-int/lit8 v0, v12, 0x1

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v2, :cond_4

    .line 925
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-result v0

    if-eqz v0, :cond_1

    .line 927
    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 928
    const/4 v11, 0x1

    goto :goto_0

    .line 930
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_1

    .line 931
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    new-instance v5, Ljava/util/concurrent/ForkJoinPool$EmptyTask;

    invoke-direct {v5}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;-><init>()V

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-result v11

    goto :goto_0

    .line 935
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_5
    iget v0, v4, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_7

    .line 936
    const/4 v7, 0x0

    .line 942
    :cond_6
    add-int/lit8 v10, v10, -0x1

    if-nez v10, :cond_0

    .line 943
    if-nez v7, :cond_1

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_1

    .line 944
    const/4 v13, 0x0

    goto :goto_0

    .line 937
    :cond_7
    add-int/lit8 v0, v12, 0x1

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v2, :cond_6

    .line 938
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0
.end method

.method final tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v6, "s":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v6, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v2, v6

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iput v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 849
    const/4 v0, 0x1

    .line 851
    .end local v6    # "s":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
