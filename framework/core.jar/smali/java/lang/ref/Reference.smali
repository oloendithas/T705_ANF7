.class public abstract Ljava/lang/ref/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile pendingNext:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field

.field volatile queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile queueNext:Ljava/lang/ref/Reference;

.field volatile referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    .local p1, "r":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    .line 141
    iput-object p2, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 142
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public enqueue()Z
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->enqueueInternal()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized enqueueInternal()Z
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->enqueue(Ljava/lang/ref/Reference;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public isEnqueued()Z
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
