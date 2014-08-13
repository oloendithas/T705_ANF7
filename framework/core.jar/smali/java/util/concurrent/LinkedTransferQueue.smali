.class public Ljava/util/concurrent/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/TransferQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedTransferQueue$Itr;,
        Ljava/util/concurrent/LinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/TransferQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TIMED:I = 0x3

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field private static final sweepVotesOffset:J

.field private static final tailOffset:J


# instance fields
.field volatile transient head:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private volatile transient sweepVotes:I

.field private volatile transient tail:Ljava/util/concurrent/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 383
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    if-le v3, v2, :cond_0

    :goto_0
    sput-boolean v2, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    .line 1306
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    .line 1307
    const-class v1, Ljava/util/concurrent/LinkedTransferQueue;

    .line 1308
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "head"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->headOffset:J

    .line 1310
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "tail"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->tailOffset:J

    .line 1312
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "sweepVotes"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotesOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    return-void

    .line 383
    .end local v1    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1314
    .restart local v1    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 985
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 986
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    .line 999
    invoke-virtual {p0, p1}, Ljava/util/AbstractQueue;->addAll(Ljava/util/Collection;)Z

    .line 1000
    return-void
.end method

.method private awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 8
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, p5

    .line 671
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 672
    .local v5, "w":Ljava/lang/Thread;
    const/4 v4, -0x1

    .line 673
    .local v4, "spins":I
    const/4 v3, 0x0

    .line 676
    .local v3, "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_0
    :goto_1
    iget-object v2, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 677
    .local v2, "item":Ljava/lang/Object;
    if-eq v2, p3, :cond_2

    .line 679
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    .line 680
    invoke-static {v2}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 685
    .end local p3    # "e":Ljava/lang/Object;, "TE;"
    :goto_2
    return-object p3

    .line 670
    .end local v0    # "deadline":J
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    .end local v4    # "spins":I
    .end local v5    # "w":Ljava/lang/Thread;
    .restart local p3    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 682
    .restart local v0    # "deadline":J
    .restart local v2    # "item":Ljava/lang/Object;
    .restart local v3    # "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    .restart local v4    # "spins":I
    .restart local v5    # "w":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p4, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-gtz v6, :cond_4

    :cond_3
    invoke-virtual {p1, p3, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 684
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    goto :goto_2

    .line 688
    :cond_4
    if-gez v4, :cond_5

    .line 689
    iget-boolean v6, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    invoke-static {p2, v6}, Ljava/util/concurrent/LinkedTransferQueue;->spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I

    move-result v4

    if-lez v4, :cond_0

    .line 690
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v3

    goto :goto_1

    .line 692
    :cond_5
    if-lez v4, :cond_6

    .line 693
    add-int/lit8 v4, v4, -0x1

    .line 694
    const/16 v6, 0x40

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-nez v6, :cond_0

    .line 695
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 697
    :cond_6
    iget-object v6, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v6, :cond_7

    .line 698
    iput-object v5, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 700
    :cond_7
    if-eqz p4, :cond_8

    .line 701
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long p5, v0, v6

    .line 702
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-lez v6, :cond_0

    .line 703
    invoke-static {p0, p5, p6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1

    .line 706
    :cond_8
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 545
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casSweepVotes(II)Z
    .locals 6
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    .prologue
    .line 549
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotesOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 541
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 563
    return-object p0
.end method

.method private countOfMode(Z)I
    .locals 4
    .param p1, "data"    # Z

    .prologue
    .line 773
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 774
    .local v0, "count":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_1

    .line 775
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_2

    .line 776
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v3, p1, :cond_0

    .line 777
    const/4 v3, 0x0

    .line 789
    :goto_1
    return v3

    .line 778
    :cond_0
    add-int/lit8 v0, v0, 0x1

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_2

    :cond_1
    move v3, v0

    .line 789
    goto :goto_1

    .line 781
    :cond_2
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 782
    .local v1, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v1, v2, :cond_3

    .line 783
    move-object v2, v1

    goto :goto_0

    .line 785
    :cond_3
    const/4 v0, 0x0

    .line 786
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 960
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_2

    .line 961
    const/4 v2, 0x0

    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 962
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 963
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    .line 964
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 966
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 967
    const/4 v3, 0x1

    .line 979
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_1
    return v3

    .line 970
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    if-nez v0, :cond_3

    .line 979
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 972
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3
    move-object v2, v1

    .line 973
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v1, v2, :cond_0

    .line 974
    const/4 v2, 0x0

    .line 975
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0
.end method

.method private firstDataItem()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 756
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 757
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 758
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    .line 759
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    .line 760
    invoke-static {v0}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 765
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    return-object v2

    .line 762
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_1
    if-eqz v0, :cond_0

    .line 756
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_0
.end method

.method private firstOfMode(Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 3
    .param p1, "isData"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    .line 744
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_1

    .line 746
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-ne v2, p1, :cond_0

    .line 748
    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_1
    return-object v0

    .restart local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    move-object v0, v1

    .line 746
    goto :goto_1

    .line 744
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 748
    goto :goto_1
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
    .line 1287
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1290
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1291
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 1296
    return-void

    .line 1294
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I
    .locals 1
    .param p0, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p1, "haveData"    # Z

    .prologue
    .line 716
    sget-boolean v0, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 717
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_0

    .line 718
    const/16 v0, 0xc0

    .line 724
    :goto_0
    return v0

    .line 719
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    const/16 v0, 0x80

    goto :goto_0

    .line 721
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 722
    const/16 v0, 0x40

    goto :goto_0

    .line 724
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sweep()V
    .locals 4

    .prologue
    .line 942
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_1

    .line 943
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_0

    .line 945
    move-object v1, v2

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_2

    .line 954
    .end local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    return-void

    .line 948
    .restart local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    if-ne v2, v0, :cond_3

    .line 950
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0

    .line 952
    :cond_3
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_0
.end method

.method private tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 6
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "haveData"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v4, 0x0

    .line 632
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "t":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v1, v2

    .line 634
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v1, :cond_2

    .line 635
    invoke-direct {p0, v4, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, p1

    .line 652
    :cond_1
    :goto_1
    return-object v4

    .line 638
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 640
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_5

    .line 641
    if-eq v1, v2, :cond_3

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v3, "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v3, :cond_3

    move-object v2, v3

    move-object v1, v3

    .end local v3    # "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    goto :goto_0

    :cond_3
    if-eq v1, v0, :cond_4

    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, v4

    goto :goto_2

    .line 643
    :cond_5
    invoke-virtual {v1, v4, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 644
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0

    .line 646
    :cond_6
    if-eq v1, v2, :cond_9

    .line 650
    :cond_7
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, v2, :cond_8

    invoke-direct {p0, v2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_9

    iget-object p1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    iget-object p1, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    if-ne p1, v2, :cond_7

    :cond_9
    move-object v4, v1

    .line 652
    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1275
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1276
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1277
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1279
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1280
    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .locals 14
    .param p2, "haveData"    # Z
    .param p3, "how"    # I
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 578
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 579
    :cond_0
    const/4 v2, 0x0

    .line 584
    .local v2, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    iget-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v8, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v12, v8

    .local v12, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v12, :cond_2

    .line 585
    iget-boolean v9, v12, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 586
    .local v9, "isData":Z
    iget-object v10, v12, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 587
    .local v10, "item":Ljava/lang/Object;
    if-eq v10, v12, :cond_b

    if-eqz v10, :cond_5

    const/4 v1, 0x1

    :goto_1
    if-ne v1, v9, :cond_b

    .line 588
    move/from16 v0, p2

    if-ne v9, v0, :cond_6

    .line 609
    .end local v9    # "isData":Z
    .end local v10    # "item":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_4

    .line 610
    if-nez v2, :cond_3

    .line 611
    new-instance v2, Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move/from16 v0, p2

    invoke-direct {v2, p1, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    .line 612
    .restart local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3
    move/from16 v0, p2

    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue;->tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v3

    .line 613
    .local v3, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v3, :cond_1

    .line 615
    const/4 v1, 0x1

    move/from16 v0, p3

    if-eq v0, v1, :cond_4

    .line 616
    const/4 v1, 0x3

    move/from16 v0, p3

    if-ne v0, v1, :cond_d

    const/4 v5, 0x1

    :goto_2
    move-object v1, p0

    move-object v4, p1

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/LinkedTransferQueue;->awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object p1

    .line 618
    .end local v3    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    :goto_3
    return-object p1

    .line 587
    .restart local v9    # "isData":Z
    .restart local v10    # "item":Ljava/lang/Object;
    .restart local p1    # "e":Ljava/lang/Object;, "TE;"
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 590
    :cond_6
    invoke-virtual {v12, v10, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 591
    move-object v13, v12

    .local v13, "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_7
    if-eq v13, v8, :cond_9

    .line 592
    iget-object v11, v13, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 593
    .local v11, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v1, v8, :cond_a

    if-nez v11, :cond_8

    move-object v11, v13

    .end local v11    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_8
    invoke-direct {p0, v8, v11}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 594
    invoke-virtual {v8}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    .line 601
    :cond_9
    :goto_4
    iget-object v1, v12, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 602
    invoke-static {v10}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 597
    :cond_a
    iget-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v8, :cond_9

    iget-object v13, v8, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    .line 605
    .end local v13    # "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_b
    iget-object v11, v12, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 606
    .restart local v11    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v12, v11, :cond_c

    move-object v12, v11

    .line 607
    :goto_5
    goto :goto_0

    .line 606
    :cond_c
    iget-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v12, v8

    goto :goto_5

    .line 616
    .end local v9    # "isData":Z
    .end local v10    # "item":Ljava/lang/Object;
    .end local v11    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_d
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1048
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1049
    return v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 1242
    if-nez p1, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return v2

    .line 1243
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_1
    if-eqz v1, :cond_0

    .line 1244
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1245
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_2

    .line 1246
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1247
    const/4 v2, 0x1

    goto :goto_0

    .line 1249
    :cond_2
    if-eqz v0, :cond_0

    .line 1243
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1132
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1133
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1135
    :cond_1
    const/4 v1, 0x0

    .line 1136
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1137
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1140
    :cond_2
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 1148
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1149
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1150
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1152
    :cond_1
    const/4 v1, 0x0

    .line 1153
    .local v1, "n":I
    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1154
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1157
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return v1
.end method

.method public getWaitingConsumerCount()I
    .locals 1

    .prologue
    .line 1215
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 1195
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->firstOfMode(Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x1

    .line 1187
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 1188
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1189
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v2, :cond_1

    .line 1191
    :cond_0
    :goto_1
    return v1

    .line 1189
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1187
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1174
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1035
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1036
    return v2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1023
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1024
    return v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1178
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 1123
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1116
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1117
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1118
    :cond_0
    return-object v6

    .line 1119
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1009
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1010
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 1264
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1230
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1211
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method final succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 1
    .param p1, "p"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 735
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 736
    .local v0, "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v0    # "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1108
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1109
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    .line 1110
    return-object v6

    .line 1111
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1112
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public transfer(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1078
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1080
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1082
    :cond_0
    return-void
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1063
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1100
    const/4 v3, 0x3

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1103
    :goto_0
    return v2

    .line 1102
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1103
    const/4 v2, 0x0

    goto :goto_0

    .line 1104
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .locals 5
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 896
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    .line 904
    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, p2, :cond_1

    .line 905
    iget-object v2, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 906
    .local v2, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_0

    if-eq v2, p2, :cond_1

    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 909
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 910
    .local v0, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v0, p1, :cond_1

    if-eq v0, p2, :cond_1

    if-nez v0, :cond_2

    .line 935
    .end local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    :goto_1
    return-void

    .line 912
    .restart local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-nez v4, :cond_4

    .line 920
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p1, :cond_1

    iget-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p2, :cond_1

    .line 922
    :cond_3
    iget v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotes:I

    .line 923
    .local v3, "v":I
    const/16 v4, 0x20

    if-ge v3, v4, :cond_5

    .line 924
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 914
    .end local v3    # "v":I
    :cond_4
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 915
    .local v1, "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v1, :cond_1

    .line 917
    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 918
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    goto :goto_0

    .line 927
    .end local v1    # "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "v":I
    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 928
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->sweep()V

    goto :goto_1
.end method
