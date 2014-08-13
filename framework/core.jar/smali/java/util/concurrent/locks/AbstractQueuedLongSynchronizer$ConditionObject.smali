.class public Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/locks/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionObject"
.end annotation


# static fields
.field private static final REINTERRUPT:I = 0x1

.field private static final THROW_IE:I = -0x1

.field private static final serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field private transient lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)V
    .locals 0

    .prologue
    .line 1590
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1599
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1601
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-eq v2, v3, :cond_0

    .line 1602
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1603
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1605
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>(Ljava/lang/Thread;I)V

    .line 1606
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v1, :cond_1

    .line 1607
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1610
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1611
    return-object v0

    .line 1609
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 1752
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 2
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v1, 0x0

    .line 1622
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v0, :cond_1

    .line 1623
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1624
    :cond_1
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1626
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez p1, :cond_0

    .line 1627
    :cond_2
    return-void
.end method

.method private doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 3
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v2, 0x0

    .line 1634
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1636
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1637
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1638
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 1639
    move-object p1, v0

    .line 1640
    if-nez p1, :cond_0

    .line 1641
    return-void
.end method

.method private reportInterruptAfterWait(I)V
    .locals 1
    .param p1, "interruptMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1763
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1764
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1765
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1766
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 1767
    :cond_1
    return-void
.end method

.method private unlinkCancelledWaiters()V
    .locals 5

    .prologue
    .line 1658
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1659
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v2, 0x0

    .line 1660
    .local v2, "trail":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_3

    .line 1661
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1662
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2

    .line 1663
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1664
    if-nez v2, :cond_1

    .line 1665
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1668
    :goto_1
    if-nez v0, :cond_0

    .line 1669
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1673
    :cond_0
    :goto_2
    move-object v1, v0

    .line 1674
    goto :goto_0

    .line 1667
    :cond_1
    iput-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_1

    .line 1672
    :cond_2
    move-object v2, v1

    goto :goto_2

    .line 1675
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_3
    return-void
.end method


# virtual methods
.method public final await()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1783
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1784
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 1785
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 1786
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v2

    .line 1787
    .local v2, "savedState":J
    const/4 v0, 0x0

    .line 1788
    .local v0, "interruptMode":I
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1789
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1790
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1793
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 1794
    const/4 v0, 0x1

    .line 1795
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v4, :cond_4

    .line 1796
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1797
    :cond_4
    if-eqz v0, :cond_5

    .line 1798
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1799
    :cond_5
    return-void
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1899
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 1900
    .local v3, "nanosTimeout":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1901
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 1902
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v5

    .line 1903
    .local v5, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v6

    .line 1904
    .local v6, "savedState":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    add-long v0, v9, v3

    .line 1905
    .local v0, "deadline":J
    const/4 v8, 0x0

    .line 1906
    .local v8, "timedout":Z
    const/4 v2, 0x0

    .line 1907
    .local v2, "interruptMode":I
    :goto_0
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1908
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gtz v9, :cond_5

    .line 1909
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v8

    .line 1918
    :cond_1
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v9, v5, v6, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    .line 1919
    const/4 v2, 0x1

    .line 1920
    :cond_2
    iget-object v9, v5, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v9, :cond_3

    .line 1921
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1922
    :cond_3
    if-eqz v2, :cond_4

    .line 1923
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1924
    :cond_4
    if-nez v8, :cond_7

    const/4 v9, 0x1

    :goto_1
    return v9

    .line 1912
    :cond_5
    const-wide/16 v9, 0x3e8

    cmp-long v9, v3, v9

    if-ltz v9, :cond_6

    .line 1913
    invoke-static {p0, v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1914
    :cond_6
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1916
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v3, v0, v9

    goto :goto_0

    .line 1924
    :cond_7
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public final awaitNanos(J)J
    .locals 8
    .param p1, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1816
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1817
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 1818
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 1819
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v4

    .line 1820
    .local v4, "savedState":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, p1

    .line 1821
    .local v0, "deadline":J
    const/4 v2, 0x0

    .line 1822
    .local v2, "interruptMode":I
    :goto_0
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1823
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gtz v6, :cond_5

    .line 1824
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 1833
    :cond_1
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v6, v3, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    .line 1834
    const/4 v2, 0x1

    .line 1835
    :cond_2
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v6, :cond_3

    .line 1836
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1837
    :cond_3
    if-eqz v2, :cond_4

    .line 1838
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1839
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    return-wide v6

    .line 1827
    :cond_5
    const-wide/16 v6, 0x3e8

    cmp-long v6, p1, v6

    if-ltz v6, :cond_6

    .line 1828
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1829
    :cond_6
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1831
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long p1, v0, v6

    goto :goto_0
.end method

.method public final awaitUninterruptibly()V
    .locals 5

    .prologue
    .line 1722
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 1723
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v2

    .line 1724
    .local v2, "savedState":J
    const/4 v0, 0x0

    .line 1725
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1726
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1727
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1728
    const/4 v0, 0x1

    goto :goto_0

    .line 1730
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    .line 1731
    :cond_2
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 1732
    :cond_3
    return-void
.end method

.method public final awaitUntil(Ljava/util/Date;)Z
    .locals 9
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1858
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1859
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1860
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 1861
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 1862
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v4

    .line 1863
    .local v4, "savedState":J
    const/4 v6, 0x0

    .line 1864
    .local v6, "timedout":Z
    const/4 v2, 0x0

    .line 1865
    .local v2, "interruptMode":I
    :cond_1
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-lez v7, :cond_6

    .line 1867
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v6

    .line 1874
    :cond_2
    :goto_0
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 1875
    const/4 v2, 0x1

    .line 1876
    :cond_3
    iget-object v7, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v7, :cond_4

    .line 1877
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1878
    :cond_4
    if-eqz v2, :cond_5

    .line 1879
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1880
    :cond_5
    if-nez v6, :cond_7

    const/4 v7, 0x1

    :goto_1
    return v7

    .line 1870
    :cond_6
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    .line 1871
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1880
    :cond_7
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected final getWaitQueueLength()I
    .locals 4

    .prologue
    .line 1967
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1968
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 1969
    :cond_0
    const/4 v0, 0x0

    .line 1970
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 1971
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 1972
    add-int/lit8 v0, v0, 0x1

    .line 1970
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1974
    :cond_2
    return v0
.end method

.method protected final getWaitingThreads()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1987
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1988
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 1989
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1990
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v2, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 1991
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 1992
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1993
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_1

    .line 1994
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1997
    :cond_2
    return-object v0
.end method

.method protected final hasWaiters()Z
    .locals 3

    .prologue
    .line 1948
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1949
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1950
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 1951
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 1952
    const/4 v1, 0x1

    .line 1954
    :goto_1
    return v1

    .line 1950
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1954
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z
    .locals 1
    .param p1, "sync"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    .prologue
    .line 1936
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final signal()V
    .locals 2

    .prologue
    .line 1688
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1689
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1690
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1691
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1692
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 1693
    :cond_1
    return-void
.end method

.method public final signalAll()V
    .locals 2

    .prologue
    .line 1703
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1704
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1705
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1706
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1707
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 1708
    :cond_1
    return-void
.end method
