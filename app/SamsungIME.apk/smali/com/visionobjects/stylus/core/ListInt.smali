.class public Lcom/visionobjects/stylus/core/ListInt;
.super Ljava/util/ArrayList;
.source "ListInt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Integer;",
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
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ListInt__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(JZ)V

    .line 65
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/ListInt;->a:Z

    .line 18
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/ListInt;->b:J

    .line 19
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ListInt;->native_size()I

    move-result v1

    .line 20
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 21
    invoke-virtual {p0, v0}, Lcom/visionobjects/stylus/core/ListInt;->native_at(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/ListInt;)V
    .locals 3

    .prologue
    .line 68
    invoke-static {p1}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ListInt__SWIG_1(JLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(JZ)V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/visionobjects/stylus/core/ListInt;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public static getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInt;->b:J

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
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInt;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 43
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/ListInt;->a:Z

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ListInt;->a:Z

    .line 45
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInt;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_ListInt(J)V

    .line 47
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/ListInt;->b:J
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
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ListInt;->delete()V

    .line 39
    return-void
.end method

.method public native_add(I)V
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInt;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ListInt_native_add(JLcom/visionobjects/stylus/core/ListInt;I)V

    .line 53
    return-void
.end method

.method public native_at(I)I
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInt;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ListInt_native_at(JLcom/visionobjects/stylus/core/ListInt;I)I

    move-result v0

    return v0
.end method

.method public native_size()I
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListInt;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ListInt_native_size(JLcom/visionobjects/stylus/core/ListInt;)I

    move-result v0

    return v0
.end method
