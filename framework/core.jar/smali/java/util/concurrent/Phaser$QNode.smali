.class final Ljava/util/concurrent/Phaser$QNode;
.super Ljava/lang/Object;
.source "Phaser.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Phaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# instance fields
.field final deadline:J

.field final interruptible:Z

.field nanos:J

.field next:Ljava/util/concurrent/Phaser$QNode;

.field final phase:I

.field final phaser:Ljava/util/concurrent/Phaser;

.field volatile thread:Ljava/lang/Thread;

.field final timed:Z

.field wasInterrupted:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Phaser;IZZJ)V
    .locals 2
    .param p1, "phaser"    # Ljava/util/concurrent/Phaser;
    .param p2, "phase"    # I
    .param p3, "interruptible"    # Z
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J

    .prologue
    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput-object p1, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    .line 1075
    iput p2, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    .line 1076
    iput-boolean p3, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    .line 1077
    iput-wide p5, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    .line 1078
    iput-boolean p4, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    .line 1079
    if-eqz p4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p5

    :goto_0
    iput-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->deadline:J

    .line 1080
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1081
    return-void

    .line 1079
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public block()Z
    .locals 4

    .prologue
    .line 1109
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    const/4 v0, 0x1

    .line 1115
    :goto_0
    return v0

    .line 1111
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    if-nez v0, :cond_2

    .line 1112
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1115
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v0

    goto :goto_0

    .line 1113
    :cond_2
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1114
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method public isReleasable()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 1084
    iget-object v1, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 1105
    :goto_0
    return v0

    .line 1086
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    invoke-virtual {v1}, Ljava/util/concurrent/Phaser;->getPhase()I

    move-result v1

    iget v2, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    if-eq v1, v2, :cond_1

    .line 1087
    iput-object v5, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    goto :goto_0

    .line 1090
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1091
    iput-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    .line 1092
    :cond_2
    iget-boolean v1, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    if-eqz v1, :cond_3

    .line 1093
    iput-object v5, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    goto :goto_0

    .line 1096
    :cond_3
    iget-boolean v1, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz v1, :cond_5

    .line 1097
    iget-wide v1, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_4

    .line 1098
    iget-wide v1, p0, Ljava/util/concurrent/Phaser$QNode;->deadline:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    .line 1100
    :cond_4
    iget-wide v1, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    cmp-long v1, v1, v6

    if-gtz v1, :cond_5

    .line 1101
    iput-object v5, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    goto :goto_0

    .line 1105
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
