.class public Lcom/visionobjects/stylus/core/ListInkRange;
.super Ljava/util/ArrayList;
.source "ListInkRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/visionobjects/stylus/core/InkRange;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ListInkRange__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListInkRange;-><init>(JZ)V

    .line 65
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/ListInkRange;->a:Z

    .line 18
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/ListInkRange;->b:J

    .line 19
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ListInkRange;->native_size()I

    move-result v1

    .line 20
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 21
    invoke-virtual {p0, v0}, Lcom/visionobjects/stylus/core/ListInkRange;->native_at(I)Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/ListInkRange;)V
    .locals 3

    .prologue
    .line 68
    invoke-static {p1}, Lcom/visionobjects/stylus/core/ListInkRange;->getCPtr(Lcom/visionobjects/stylus/core/ListInkRange;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ListInkRange__SWIG_1(JLcom/visionobjects/stylus/core/ListInkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListInkRange;-><init>(JZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/visionobjects/stylus/core/InkRange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/visionobjects/stylus/core/ListInkRange;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkRange;

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public static getCPtr(Lcom/visionobjects/stylus/core/ListInkRange;)J
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInkRange;->b:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInkRange;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 43
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/ListInkRange;->a:Z

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ListInkRange;->a:Z

    .line 45
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInkRange;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_ListInkRange(J)V

    .line 47
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/ListInkRange;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ListInkRange;->delete()V

    .line 39
    return-void
.end method

.method public native_add(Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 6

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ListInkRange_native_add(JLcom/visionobjects/stylus/core/ListInkRange;JLcom/visionobjects/stylus/core/InkRange;)V

    .line 53
    return-void
.end method

.method public native_at(I)Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ListInkRange;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ListInkRange_native_at(JLcom/visionobjects/stylus/core/ListInkRange;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public native_size()I
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInkRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ListInkRange_native_size(JLcom/visionobjects/stylus/core/ListInkRange;)I

    move-result v0

    return v0
.end method
