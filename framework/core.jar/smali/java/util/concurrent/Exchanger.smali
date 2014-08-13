.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Exchanger$Participant;,
        Ljava/util/concurrent/Exchanger$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I = 0x7

.field private static final BLOCKER:J

.field private static final BOUND:J

.field static final FULL:I

.field private static final MATCH:J

.field private static final MMASK:I = 0xff

.field private static final NCPU:I

.field private static final NULL_ITEM:Ljava/lang/Object;

.field private static final SEQ:I = 0x100

.field private static final SLOT:J

.field private static final SPINS:I = 0x400

.field private static final TIMED_OUT:Ljava/lang/Object;

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private volatile arena:[Ljava/util/concurrent/Exchanger$Node;

.field private volatile bound:I

.field private final participant:Ljava/util/concurrent/Exchanger$Participant;

.field private volatile slot:Ljava/util/concurrent/Exchanger$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 248
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v6

    sput v6, Ljava/util/concurrent/Exchanger;->NCPU:I

    .line 255
    sget v6, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/16 v7, 0x1fe

    if-lt v6, v7, :cond_1

    const/16 v6, 0xff

    :goto_0
    sput v6, Ljava/util/concurrent/Exchanger;->FULL:I

    .line 269
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sput-object v6, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .line 276
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sput-object v6, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    .line 613
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v6

    sput-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    .line 614
    const-class v2, Ljava/util/concurrent/Exchanger;

    .line 615
    .local v2, "ek":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/concurrent/Exchanger$Node;

    .line 616
    .local v3, "nk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [Ljava/util/concurrent/Exchanger$Node;

    .line 617
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Thread;

    .line 618
    .local v5, "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-string v7, "bound"

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/Exchanger;->BOUND:J

    .line 620
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-string v7, "slot"

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/Exchanger;->SLOT:J

    .line 622
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-string v7, "match"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/Exchanger;->MATCH:J

    .line 624
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-string v7, "parkBlocker"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    .line 626
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v4

    .line 628
    .local v4, "s":I
    sget-object v6, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v6

    add-int/lit16 v6, v6, 0x80

    sput v6, Ljava/util/concurrent/Exchanger;->ABASE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    add-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v4

    if-nez v6, :cond_0

    const/16 v6, 0x80

    if-le v4, v6, :cond_2

    .line 634
    :cond_0
    new-instance v6, Ljava/lang/Error;

    const-string v7, "Unsupported array scale"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 255
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ek":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "nk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "s":I
    .end local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget v6, Ljava/util/concurrent/Exchanger;->NCPU:I

    ushr-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 630
    .restart local v2    # "ek":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 631
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 635
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "nk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "s":I
    .restart local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 496
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance v0, Ljava/util/concurrent/Exchanger$Participant;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger$Participant;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    .line 498
    return-void
.end method

.method private final arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 29
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    .prologue
    .line 335
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    .line 336
    .local v3, "a":[Ljava/util/concurrent/Exchanger$Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/Exchanger$Node;

    .line 337
    .local v12, "p":Ljava/util/concurrent/Exchanger$Node;
    iget v0, v12, Ljava/util/concurrent/Exchanger$Node;->index:I

    move/from16 v23, v0

    .line 339
    .local v23, "i":I
    :cond_0
    :goto_0
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    shl-int/lit8 v7, v23, 0x7

    sget v8, Ljava/util/concurrent/Exchanger;->ABASE:I

    add-int/2addr v7, v8

    int-to-long v4, v7

    .local v4, "j":J
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Exchanger$Node;

    .line 340
    .local v6, "q":Ljava/util/concurrent/Exchanger$Node;
    if-eqz v6, :cond_2

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move-object/from16 v27, v0

    .line 342
    .local v27, "v":Ljava/lang/Object;
    move-object/from16 v0, p1

    iput-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 343
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    move-object/from16 v28, v0

    .line 344
    .local v28, "w":Ljava/lang/Thread;
    if-eqz v28, :cond_1

    .line 345
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 391
    .end local v27    # "v":Ljava/lang/Object;
    .end local v28    # "w":Ljava/lang/Thread;
    :cond_1
    :goto_1
    return-object v27

    .line 348
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/Exchanger;->bound:I

    move/from16 v17, v0

    .local v17, "b":I
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .local v24, "m":I
    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_f

    if-nez v6, :cond_f

    .line 349
    move-object/from16 v0, p1

    iput-object v0, v12, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 350
    sget-object v7, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v11, 0x0

    move-object v8, v3

    move-wide v9, v4

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 351
    if-eqz p2, :cond_4

    if-nez v24, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    add-long v20, v7, p3

    .line 352
    .local v20, "end":J
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v26

    .line 353
    .local v26, "t":Ljava/lang/Thread;
    iget v0, v12, Ljava/util/concurrent/Exchanger$Node;->hash:I

    move/from16 v22, v0

    .local v22, "h":I
    const/16 v25, 0x400

    .line 354
    .local v25, "spins":I
    :cond_3
    :goto_3
    iget-object v0, v12, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    move-object/from16 v27, v0

    .line 355
    .restart local v27    # "v":Ljava/lang/Object;
    if-eqz v27, :cond_5

    .line 356
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava/util/concurrent/Exchanger;->MATCH:J

    const/4 v9, 0x0

    invoke-virtual {v2, v12, v7, v8, v9}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 357
    const/4 v2, 0x0

    iput-object v2, v12, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 358
    move/from16 v0, v22

    iput v0, v12, Ljava/util/concurrent/Exchanger$Node;->hash:I

    goto :goto_1

    .line 351
    .end local v20    # "end":J
    .end local v22    # "h":I
    .end local v25    # "spins":I
    .end local v26    # "t":Ljava/lang/Thread;
    .end local v27    # "v":Ljava/lang/Object;
    :cond_4
    const-wide/16 v20, 0x0

    goto :goto_2

    .line 361
    .restart local v20    # "end":J
    .restart local v22    # "h":I
    .restart local v25    # "spins":I
    .restart local v26    # "t":Ljava/lang/Thread;
    .restart local v27    # "v":Ljava/lang/Object;
    :cond_5
    if-lez v25, :cond_7

    .line 362
    shl-int/lit8 v2, v22, 0x1

    xor-int v22, v22, v2

    ushr-int/lit8 v2, v22, 0x3

    xor-int v22, v22, v2

    shl-int/lit8 v2, v22, 0xa

    xor-int v22, v22, v2

    .line 363
    if-nez v22, :cond_6

    .line 364
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    long-to-int v2, v7

    or-int/lit16 v0, v2, 0x400

    move/from16 v22, v0

    goto :goto_3

    .line 365
    :cond_6
    if-gez v22, :cond_3

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x1ff

    if-nez v2, :cond_3

    .line 367
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_3

    .line 369
    :cond_7
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v12, :cond_8

    .line 370
    const/16 v25, 0x400

    goto :goto_3

    .line 371
    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v24, :cond_b

    if-eqz p2, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long p3, v20, v7

    const-wide/16 v7, 0x0

    cmp-long v2, p3, v7

    if-lez v2, :cond_b

    .line 374
    :cond_9
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 375
    move-object/from16 v0, v26

    iput-object v0, v12, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 376
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_a

    .line 377
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-wide/from16 v0, p3

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 378
    :cond_a
    const/4 v2, 0x0

    iput-object v2, v12, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 379
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 381
    :cond_b
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_3

    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v13, 0x0

    move-object v9, v3

    move-wide v10, v4

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    if-eqz v24, :cond_c

    .line 384
    sget-object v13, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v15, Ljava/util/concurrent/Exchanger;->BOUND:J

    move/from16 v0, v17

    add-int/lit16 v2, v0, 0x100

    add-int/lit8 v18, v2, -0x1

    move-object/from16 v14, p0

    invoke-virtual/range {v13 .. v18}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .line 385
    :cond_c
    const/4 v2, 0x0

    iput-object v2, v12, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 386
    move/from16 v0, v22

    iput v0, v12, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 387
    iget v2, v12, Ljava/util/concurrent/Exchanger$Node;->index:I

    ushr-int/lit8 v23, v2, 0x1

    move/from16 v0, v23

    iput v0, v12, Ljava/util/concurrent/Exchanger$Node;->index:I

    .line 388
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 389
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 390
    :cond_d
    if-eqz p2, :cond_0

    if-nez v24, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v2, p3, v7

    if-gtz v2, :cond_0

    .line 391
    sget-object v27, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    goto/16 :goto_1

    .line 397
    .end local v20    # "end":J
    .end local v22    # "h":I
    .end local v25    # "spins":I
    .end local v26    # "t":Ljava/lang/Thread;
    .end local v27    # "v":Ljava/lang/Object;
    :cond_e
    const/4 v2, 0x0

    iput-object v2, v12, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto/16 :goto_0

    .line 400
    :cond_f
    iget v2, v12, Ljava/util/concurrent/Exchanger$Node;->bound:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_12

    .line 401
    move/from16 v0, v17

    iput v0, v12, Ljava/util/concurrent/Exchanger$Node;->bound:I

    .line 402
    const/4 v2, 0x0

    iput v2, v12, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 403
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    if-nez v24, :cond_11

    :cond_10
    move/from16 v23, v24

    .line 412
    :goto_4
    move/from16 v0, v23

    iput v0, v12, Ljava/util/concurrent/Exchanger$Node;->index:I

    goto/16 :goto_0

    .line 403
    :cond_11
    add-int/lit8 v23, v24, -0x1

    goto :goto_4

    .line 405
    :cond_12
    iget v0, v12, Ljava/util/concurrent/Exchanger$Node;->collides:I

    move/from16 v19, v0

    .local v19, "c":I
    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_13

    sget v2, Ljava/util/concurrent/Exchanger;->FULL:I

    move/from16 v0, v24

    if-eq v0, v2, :cond_13

    sget-object v13, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v15, Ljava/util/concurrent/Exchanger;->BOUND:J

    move/from16 v0, v17

    add-int/lit16 v2, v0, 0x100

    add-int/lit8 v18, v2, 0x1

    move-object/from16 v14, p0

    invoke-virtual/range {v13 .. v18}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_15

    .line 407
    :cond_13
    add-int/lit8 v2, v19, 0x1

    iput v2, v12, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 408
    if-nez v23, :cond_14

    move/from16 v23, v24

    :goto_5
    goto :goto_4

    :cond_14
    add-int/lit8 v23, v23, -0x1

    goto :goto_5

    .line 411
    :cond_15
    add-int/lit8 v23, v24, 0x1

    goto :goto_4
.end method

.method private final slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 21
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    .prologue
    .line 428
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/Exchanger$Node;

    .line 429
    .local v16, "p":Ljava/util/concurrent/Exchanger$Node;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    .line 430
    .local v18, "t":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    const/16 v19, 0x0

    .line 490
    :cond_0
    :goto_0
    return-object v19

    .line 444
    .local v6, "q":Ljava/util/concurrent/Exchanger$Node;
    :cond_1
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/Exchanger;->bound:I

    if-nez v2, :cond_2

    sget-object v7, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/Exchanger;->BOUND:J

    const/4 v11, 0x0

    const/16 v12, 0x100

    move-object/from16 v8, p0

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    sget v2, Ljava/util/concurrent/Exchanger;->FULL:I

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x7

    new-array v2, v2, [Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    .line 434
    .end local v6    # "q":Ljava/util/concurrent/Exchanger$Node;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    .restart local v6    # "q":Ljava/util/concurrent/Exchanger$Node;
    if-eqz v6, :cond_3

    .line 435
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 437
    .local v19, "v":Ljava/lang/Object;
    move-object/from16 v0, p1

    iput-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 438
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    move-object/from16 v20, v0

    .line 439
    .local v20, "w":Ljava/lang/Thread;
    if-eqz v20, :cond_0

    .line 440
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_0

    .line 448
    .end local v19    # "v":Ljava/lang/Object;
    .end local v20    # "w":Ljava/lang/Thread;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-eqz v2, :cond_4

    .line 449
    const/16 v19, 0x0

    goto :goto_0

    .line 451
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 452
    sget-object v7, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 459
    move-object/from16 v0, v16

    iget v15, v0, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 460
    .local v15, "h":I
    if-eqz p2, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v13, v2, p3

    .line 461
    .local v13, "end":J
    :goto_2
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    const/16 v17, 0x400

    .line 463
    .local v17, "spins":I
    :cond_5
    :goto_3
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    move-object/from16 v19, v0

    .restart local v19    # "v":Ljava/lang/Object;
    if-nez v19, :cond_f

    .line 464
    if-lez v17, :cond_a

    .line 465
    shl-int/lit8 v2, v15, 0x1

    xor-int/2addr v15, v2

    ushr-int/lit8 v2, v15, 0x3

    xor-int/2addr v15, v2

    shl-int/lit8 v2, v15, 0xa

    xor-int/2addr v15, v2

    .line 466
    if-nez v15, :cond_9

    .line 467
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    or-int/lit16 v15, v2, 0x400

    goto :goto_3

    .line 454
    .end local v13    # "end":J
    .end local v15    # "h":I
    .end local v17    # "spins":I
    .end local v19    # "v":Ljava/lang/Object;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto :goto_1

    .line 460
    .restart local v15    # "h":I
    :cond_7
    const-wide/16 v13, 0x0

    goto :goto_2

    .line 461
    .restart local v13    # "end":J
    :cond_8
    const/16 v17, 0x1

    goto :goto_3

    .line 468
    .restart local v17    # "spins":I
    .restart local v19    # "v":Ljava/lang/Object;
    :cond_9
    if-gez v15, :cond_5

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0x1ff

    if-nez v2, :cond_5

    .line 469
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_3

    .line 471
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, v16

    if-eq v2, v0, :cond_b

    .line 472
    const/16 v17, 0x400

    goto :goto_3

    .line 473
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v2, :cond_e

    if-eqz p2, :cond_c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long p3, v13, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_e

    .line 475
    :cond_c
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 476
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_d

    .line 478
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    move-wide/from16 v0, p3

    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 479
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 480
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 482
    :cond_e
    sget-object v7, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v11, v16

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 483
    if-eqz p2, :cond_10

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v19, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    .line 487
    :cond_f
    :goto_4
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Exchanger;->MATCH:J

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v4, v5}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 488
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 489
    move-object/from16 v0, v16

    iput v15, v0, Ljava/util/concurrent/Exchanger$Node;->hash:I

    goto/16 :goto_0

    .line 483
    :cond_10
    const/16 v19, 0x0

    goto :goto_4
.end method


# virtual methods
.method public exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 536
    if-nez p1, :cond_2

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .line 537
    .local v0, "item":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v3, v4, v5}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    .local v1, "v":Ljava/lang/Object;
    if-nez v1, :cond_3

    .end local v1    # "v":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v3, v4, v5}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "v":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 541
    .end local v1    # "v":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    move-object v0, p1

    .line 536
    goto :goto_0

    .line 542
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "v":Ljava/lang/Object;
    :cond_3
    sget-object v2, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .end local v1    # "v":Ljava/lang/Object;
    :cond_4
    return-object v1
.end method

.method public exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x1

    .line 591
    if-nez p1, :cond_2

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .line 592
    .local v0, "item":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 593
    .local v1, "ns":J
    iget-object v4, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v4, :cond_0

    invoke-direct {p0, v0, v5, v1, v2}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v3

    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_3

    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v0, v5, v1, v2}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "v":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 597
    .end local v3    # "v":Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "ns":J
    :cond_2
    move-object v0, p1

    .line 591
    goto :goto_0

    .line 598
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "ns":J
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_3
    sget-object v4, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    if-ne v3, v4, :cond_4

    .line 599
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 600
    :cond_4
    sget-object v4, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    .end local v3    # "v":Ljava/lang/Object;
    :cond_5
    return-object v3
.end method
