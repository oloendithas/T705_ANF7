.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$ParkState;
    }
.end annotation


# static fields
.field public static final MAX_PRIORITY:I = 0xa

.field public static final MIN_PRIORITY:I = 0x1

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static final NORM_PRIORITY:I = 0x5

.field private static count:I

.field private static defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private contextClassLoader:Ljava/lang/ClassLoader;

.field volatile daemon:Z

.field volatile group:Ljava/lang/ThreadGroup;

.field hasBeenStarted:Z

.field private id:J

.field inheritableValues:Ljava/lang/ThreadLocal$Values;

.field private final interruptActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field localValues:Ljava/lang/ThreadLocal$Values;

.field volatile name:Ljava/lang/String;

.field private parkBlocker:Ljava/lang/Object;

.field private parkState:I

.field volatile priority:I

.field volatile stackSize:J

.field target:Ljava/lang/Runnable;

.field private uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile vmThread:Ljava/lang/VMThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput v0, Ljava/lang/Thread;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 194
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 210
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 228
    if-nez p2, :cond_0

    .line 229
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 253
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 272
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 273
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 292
    if-nez p3, :cond_0

    .line 293
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 2
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 342
    if-nez p3, :cond_0

    .line 343
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 346
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 313
    if-nez p2, :cond_0

    .line 314
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 318
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "daemon"    # Z

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 356
    const-class v1, Ljava/lang/Thread;

    monitor-enter v1

    .line 357
    :try_start_0
    sget v0, Ljava/lang/Thread;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/lang/Thread;->count:I

    int-to-long v2, v0

    iput-wide v2, p0, Ljava/lang/Thread;->id:J

    .line 358
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    if-nez p2, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 366
    :goto_0
    if-nez p1, :cond_1

    .line 367
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "group not specified"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 363
    :cond_0
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_0

    .line 370
    :cond_1
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    .line 374
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 375
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 378
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 379
    return-void
.end method

.method public static activeCount()I
    .locals 1

    .prologue
    .line 442
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private checkNotStarted()V
    .locals 2

    .prologue
    .line 870
    iget-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v0, :cond_0

    .line 871
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Thread already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_0
    return-void
.end method

.method private create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 5
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .prologue
    .line 398
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 399
    .local v0, "currentThread":Ljava/lang/Thread;
    if-nez p1, :cond_0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 403
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    const-string v2, "Group already destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_1
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 409
    const-class v2, Ljava/lang/Thread;

    monitor-enter v2

    .line 410
    :try_start_0
    sget v1, Ljava/lang/Thread;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava/lang/Thread;->count:I

    int-to-long v3, v1

    iput-wide v3, p0, Ljava/lang/Thread;->id:J

    .line 411
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    if-nez p3, :cond_3

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 419
    :goto_0
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 420
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 422
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Ljava/lang/Thread;->priority:I

    .line 424
    iget-object v1, v0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 427
    iget-object v1, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    if-eqz v1, :cond_2

    .line 428
    new-instance v1, Ljava/lang/ThreadLocal$Values;

    iget-object v2, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    invoke-direct {v1, v2}, Ljava/lang/ThreadLocal$Values;-><init>(Ljava/lang/ThreadLocal$Values;)V

    iput-object v1, p0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    .line 432
    :cond_2
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 433
    return-void

    .line 411
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 416
    :cond_3
    iput-object p3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static currentThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Ljava/lang/VMThread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static dumpStack()V
    .locals 2

    .prologue
    .line 489
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "stack dump"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 490
    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .locals 2
    .param p0, "threads"    # [Ljava/lang/Thread;

    .prologue
    .line 503
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 504
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    return v1
.end method

.method public static getAllStackTraces()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 515
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v4, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 516
    .local v0, "count":I
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v0

    new-array v3, v4, [Ljava/lang/Thread;

    .line 519
    .local v3, "threads":[Ljava/lang/Thread;
    sget-object v4, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 520
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 521
    aget-object v4, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1092
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    invoke-virtual {v0, p0}, Ljava/lang/VMThread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static interrupted()Z
    .locals 1

    .prologue
    .line 687
    invoke-static {}, Ljava/lang/VMThread;->interrupted()Z

    move-result v0

    return v0
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 883
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 884
    return-void
.end method

.method public static sleep(J)V
    .locals 1
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 995
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 996
    return-void
.end method

.method public static sleep(JI)V
    .locals 0
    .param p0, "millis"    # J
    .param p2, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1013
    invoke-static {p0, p1, p2}, Ljava/lang/VMThread;->sleep(JI)V

    .line 1014
    return-void
.end method

.method public static yield()V
    .locals 0

    .prologue
    .line 1080
    invoke-static {}, Ljava/lang/VMThread;->yield()V

    .line 1081
    return-void
.end method


# virtual methods
.method public final checkAccess()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public countStackFrames()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public destroy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 558
    iget-wide v0, p0, Ljava/lang/Thread;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 579
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 580
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .end local v0    # "ste":[Ljava/lang/StackTraceElement;
    :goto_0
    return-object v0

    .restart local v0    # "ste":[Ljava/lang/StackTraceElement;
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public getState()Ljava/lang/Thread$State;
    .locals 4

    .prologue
    .line 591
    iget-object v2, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 595
    .local v2, "vmt":Ljava/lang/VMThread;
    iget-object v1, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 596
    .local v1, "thread":Ljava/lang/VMThread;
    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v1}, Ljava/lang/VMThread;->getStatus()I

    move-result v0

    .line 600
    .local v0, "state":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 601
    sget-object v3, Ljava/lang/VMThread;->STATE_MAP:[Ljava/lang/Thread$State;

    aget-object v3, v3, v0

    .line 604
    .end local v0    # "state":I
    :goto_0
    return-object v3

    :cond_0
    iget-boolean v3, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    goto :goto_0

    :cond_1
    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    goto :goto_0
.end method

.method public final getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 2

    .prologue
    .line 614
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 617
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 632
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_0
.end method

.method public interrupt()V
    .locals 4

    .prologue
    .line 663
    iget-object v1, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 664
    .local v1, "vmt":Ljava/lang/VMThread;
    if-eqz v1, :cond_0

    .line 665
    invoke-virtual {v1}, Ljava/lang/VMThread;->interrupt()V

    .line 668
    :cond_0
    iget-object v3, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    monitor-enter v3

    .line 669
    :try_start_0
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 670
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 669
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 672
    :cond_1
    monitor-exit v3

    .line 673
    return-void

    .line 672
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final isAlive()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDaemon()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public isInterrupted()Z
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 724
    .local v0, "vmt":Ljava/lang/VMThread;
    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0}, Ljava/lang/VMThread;->isInterrupted()Z

    move-result v1

    .line 728
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 742
    .local v0, "t":Ljava/lang/VMThread;
    if-nez v0, :cond_0

    .line 751
    :goto_0
    return-void

    .line 746
    :cond_0
    monitor-enter v0

    .line 747
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final join(J)V
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 765
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Thread;->join(JI)V

    .line 766
    return-void
.end method

.method public final join(JI)V
    .locals 18
    .param p1, "millis"    # J
    .param p3, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 781
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-ltz v14, :cond_0

    if-ltz p3, :cond_0

    const v14, 0xf4240

    move/from16 v0, p3

    if-lt v0, v14, :cond_1

    .line 782
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bad timeout: millis="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",nanos="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 786
    :cond_1
    const-wide v14, 0x7fffffffffffffffL

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    cmp-long v14, p1, v14

    if-ltz v14, :cond_3

    const/4 v10, 0x1

    .line 787
    .local v10, "overflow":Z
    :goto_0
    move/from16 v0, p3

    int-to-long v14, v0

    or-long v14, v14, p1

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_4

    const/4 v3, 0x1

    .line 788
    .local v3, "forever":Z
    :goto_1
    or-int v14, v3, v10

    if-eqz v14, :cond_5

    .line 789
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->join()V

    .line 822
    :cond_2
    :goto_2
    return-void

    .line 786
    .end local v3    # "forever":Z
    .end local v10    # "overflow":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 787
    .restart local v10    # "overflow":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 793
    .restart local v3    # "forever":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 794
    .local v13, "t":Ljava/lang/VMThread;
    if-eqz v13, :cond_2

    .line 798
    monitor-enter v13

    .line 799
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v14

    if-nez v14, :cond_6

    .line 800
    monitor-exit v13

    goto :goto_2

    .line 821
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 804
    :cond_6
    const-wide/32 v14, 0xf4240

    mul-long v14, v14, p1

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v8, v14, v16

    .line 807
    .local v8, "nanosToWait":J
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 809
    .local v11, "start":J
    :goto_3
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 810
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v14

    if-nez v14, :cond_8

    .line 821
    :cond_7
    monitor-exit v13

    goto :goto_2

    .line 813
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long v4, v14, v11

    .line 814
    .local v4, "nanosElapsed":J
    sub-long v6, v8, v4

    .line 815
    .local v6, "nanosRemaining":J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_7

    .line 818
    const-wide/32 v14, 0xf4240

    div-long p1, v6, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    const-wide/32 v14, 0xf4240

    mul-long v14, v14, p1

    sub-long v14, v6, v14

    long-to-int v0, v14

    move/from16 p3, v0

    .line 820
    goto :goto_3
.end method

.method public parkFor(J)V
    .locals 7
    .param p1, "nanos"    # J

    .prologue
    const/4 v6, 0x3

    .line 1186
    iget-object v3, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1188
    .local v3, "vmt":Ljava/lang/VMThread;
    if-nez v3, :cond_0

    .line 1190
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1193
    :cond_0
    monitor-enter v3

    .line 1194
    :try_start_0
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v4, :pswitch_data_0

    .line 1221
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "shouldn\'t happen: attempt to repark"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1225
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1196
    :pswitch_0
    const/4 v4, 0x1

    :try_start_1
    iput v4, p0, Ljava/lang/Thread;->parkState:I

    .line 1225
    :cond_1
    :goto_0
    monitor-exit v3

    .line 1226
    return-void

    .line 1200
    :pswitch_1
    const-wide/32 v4, 0xf4240

    div-long v1, p1, v4

    .line 1201
    .local v1, "millis":J
    const-wide/32 v4, 0xf4240

    rem-long/2addr p1, v4

    .line 1203
    const/4 v4, 0x3

    iput v4, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    long-to-int v4, p1

    :try_start_2
    invoke-virtual {v3, v1, v2, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1214
    :try_start_3
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    if-ne v4, v6, :cond_1

    .line 1215
    const/4 v4, 0x1

    iput v4, p0, Ljava/lang/Thread;->parkState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1214
    :try_start_5
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    if-ne v4, v6, :cond_1

    .line 1215
    const/4 v4, 0x1

    iput v4, p0, Ljava/lang/Thread;->parkState:I

    goto :goto_0

    .line 1214
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    iget v5, p0, Ljava/lang/Thread;->parkState:I

    if-ne v5, v6, :cond_2

    .line 1215
    const/4 v5, 0x1

    iput v5, p0, Ljava/lang/Thread;->parkState:I

    .line 1214
    :cond_2
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parkUntil(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1250
    iget-object v2, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1252
    .local v2, "vmt":Ljava/lang/VMThread;
    if-nez v2, :cond_0

    .line 1254
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1257
    :cond_0
    monitor-enter v2

    .line 1272
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, p1, v3

    .line 1274
    .local v0, "delayMillis":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 1275
    const/4 v3, 0x1

    iput v3, p0, Ljava/lang/Thread;->parkState:I

    .line 1279
    :goto_0
    monitor-exit v2

    .line 1280
    return-void

    .line 1277
    :cond_1
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/Thread;->parkFor(J)V

    goto :goto_0

    .line 1279
    .end local v0    # "delayMillis":J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final popInterruptAction$(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "interruptAction"    # Ljava/lang/Runnable;

    .prologue
    .line 916
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    monitor-enter v2

    .line 917
    :try_start_0
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    iget-object v3, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 918
    .local v0, "removed":Ljava/lang/Runnable;
    if-eq p1, v0, :cond_0

    .line 919
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 922
    .end local v0    # "removed":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "removed":Ljava/lang/Runnable;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    return-void
.end method

.method public final pushInterruptAction$(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "interruptAction"    # Ljava/lang/Runnable;

    .prologue
    .line 898
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    monitor-enter v1

    .line 899
    :try_start_0
    iget-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 905
    :cond_0
    return-void

    .line 900
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final resume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 830
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 843
    :cond_0
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 852
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 853
    return-void
.end method

.method public final setDaemon(Z)V
    .locals 1
    .param p1, "isDaemon"    # Z

    .prologue
    .line 863
    invoke-direct {p0}, Ljava/lang/Thread;->checkNotStarted()V

    .line 864
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    if-nez v0, :cond_0

    .line 865
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 867
    :cond_0
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 932
    if-nez p1, :cond_0

    .line 933
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "threadName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 936
    :cond_0
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 937
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 938
    .local v0, "vmt":Ljava/lang/VMThread;
    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {v0, p1}, Ljava/lang/VMThread;->nameChanged(Ljava/lang/String;)V

    .line 942
    :cond_1
    return-void
.end method

.method public final setPriority(I)V
    .locals 4
    .param p1, "priority"    # I

    .prologue
    .line 953
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0xa

    if-le p1, v1, :cond_1

    .line 954
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Priority out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 957
    :cond_1
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 958
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    .line 961
    :cond_2
    iput p1, p0, Ljava/lang/Thread;->priority:I

    .line 963
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 964
    .local v0, "vmt":Ljava/lang/VMThread;
    if-eqz v0, :cond_3

    .line 965
    invoke-virtual {v0, p1}, Ljava/lang/VMThread;->setPriority(I)V

    .line 967
    :cond_3
    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 979
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 980
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 1025
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/lang/Thread;->checkNotStarted()V

    .line 1027
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 1029
    iget-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    invoke-static {p0, v0, v1}, Ljava/lang/VMThread;->create(Ljava/lang/Thread;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    monitor-exit p0

    return-void

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/ThreadDeath;

    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    .line 1043
    return-void
.end method

.method public final declared-synchronized stop(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1052
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1061
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/Thread;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpark()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1126
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1128
    .local v0, "vmt":Ljava/lang/VMThread;
    if-nez v0, :cond_0

    .line 1136
    iput v1, p0, Ljava/lang/Thread;->parkState:I

    .line 1162
    :goto_0
    return-void

    .line 1140
    :cond_0
    monitor-enter v0

    .line 1141
    :try_start_0
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v1, :pswitch_data_0

    .line 1156
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I

    .line 1157
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1161
    :goto_1
    :pswitch_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1152
    :pswitch_1
    const/4 v1, 0x2

    :try_start_1
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
