.class public abstract Ljava/util/concurrent/CountedCompleter;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final completer:Ljava/util/concurrent/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 708
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    .line 709
    sget-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/CountedCompleter;

    const-string v3, "pending"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/CountedCompleter;->PENDING:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 416
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 418
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 409
    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 410
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/CountedCompleter;I)V
    .locals 0
    .param p2, "initialPendingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 398
    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 399
    iput p2, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .line 400
    return-void
.end method


# virtual methods
.method public final addToPendingCount(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    .line 496
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .local v4, "c":I
    add-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    return-void
.end method

.method public final compareAndSetPendingCount(II)Z
    .locals 6
    .param p1, "expected"    # I
    .param p2, "count"    # I

    .prologue
    .line 508
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "rawResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    .line 601
    invoke-virtual {p0, p0}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 602
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    .line 603
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .local v0, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 605
    :cond_0
    return-void
.end method

.method public abstract compute()V
.end method

.method public final decrementPendingCountUnlessZero()I
    .locals 6

    .prologue
    .line 519
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .local v4, "c":I
    if-eqz v4, :cond_1

    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    :cond_1
    return v4
.end method

.method protected final exec()Z
    .locals 1

    .prologue
    .line 679
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->compute()V

    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public final firstComplete()Ljava/util/concurrent/CountedCompleter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .local v4, "c":I
    if-nez v4, :cond_1

    .line 621
    .end local p0    # "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :goto_0
    return-object p0

    .line 620
    .restart local p0    # "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_1
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getCompleter()Ljava/util/concurrent/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    return-object v0
.end method

.method public final getPendingCount()I
    .locals 1

    .prologue
    .line 477
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    return v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRoot()Ljava/util/concurrent/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 532
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v1, :cond_0

    .line 533
    move-object v0, v1

    goto :goto_0

    .line 534
    :cond_0
    return-object v0
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 669
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v1, v0

    .line 671
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    iget-object v0, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_0

    iget v2, v0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-ltz v2, :cond_0

    .line 672
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 673
    :cond_0
    return-void
.end method

.method public final nextComplete()Ljava/util/concurrent/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .local v0, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .line 648
    :goto_0
    return-object v1

    .line 647
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    .line 648
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    return-void
.end method

.method public onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p2, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final propagateCompletion()V
    .locals 7

    .prologue
    .line 568
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v1, p0

    .local v1, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v6, v1

    .line 570
    .local v6, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    iget v4, v1, Ljava/util/concurrent/CountedCompleter;->pending:I

    .local v4, "c":I
    if-nez v4, :cond_1

    .line 571
    move-object v6, v1

    iget-object v1, v1, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    .line 577
    :goto_0
    return-void

    .line 576
    :cond_1
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final quietlyCompleteRoot()V
    .locals 2

    .prologue
    .line 656
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 657
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-nez v1, :cond_0

    .line 658
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    .line 659
    return-void

    .line 661
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final setPendingCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 486
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iput p1, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .line 487
    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final tryComplete()V
    .locals 7

    .prologue
    .line 544
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v1, p0

    .local v1, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v6, v1

    .line 546
    .local v6, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    iget v4, v1, Ljava/util/concurrent/CountedCompleter;->pending:I

    .local v4, "c":I
    if-nez v4, :cond_1

    .line 547
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 548
    move-object v6, v1

    iget-object v1, v1, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v1, :cond_0

    .line 549
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    .line 554
    :goto_0
    return-void

    .line 553
    :cond_1
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
