.class public Lcom/visionobjects/stylus/core/InkTag;
.super Ljava/lang/Object;
.source "InkTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/InkTag$Name;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkTag__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkTag;-><init>(JZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(ILcom/visionobjects/stylus/core/InkRange;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkTag__SWIG_1(IJLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkTag;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkTag;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkTag;)V
    .locals 3

    .prologue
    .line 114
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkTag;->a(Lcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkTag__SWIG_2(JLcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkTag;-><init>(JZ)V

    .line 115
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkTag;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkTag;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkTag;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkTag(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkTag;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InkTag;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkTag;->delete()V

    .line 26
    return-void
.end method

.method public mapped(Lcom/visionobjects/stylus/core/Transform;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkTag;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/Transform;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkTag;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v8, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 76
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_0
    :try_start_0
    new-instance v9, Lcom/visionobjects/stylus/core/InkTag;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkTag_mapped(JLcom/visionobjects/stylus/core/InkTag;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkTag;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 82
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v9

    .line 81
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 82
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public name()I
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkTag_name(JLcom/visionobjects/stylus/core/InkTag;)I

    move-result v0

    return v0
.end method

.method public range()Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkTag_range(JLcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public setName(I)V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkTag_setName(JLcom/visionobjects/stylus/core/InkTag;I)V

    .line 57
    return-void
.end method

.method public setRange(Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 6

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkTag_setRange(JLcom/visionobjects/stylus/core/InkTag;JLcom/visionobjects/stylus/core/InkRange;)V

    .line 61
    return-void
.end method

.method public simplified(Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkTag;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkTag;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 90
    :goto_0
    if-ge v2, v3, :cond_0

    .line 91
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v8, Lcom/visionobjects/stylus/core/ListInt;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    .line 95
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 96
    :goto_1
    if-ge v1, v2, :cond_1

    .line 97
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    .line 96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 100
    :cond_1
    :try_start_0
    new-instance v9, Lcom/visionobjects/stylus/core/InkTag;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkTag_simplified(JLcom/visionobjects/stylus/core/InkTag;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkTag;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 103
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 105
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v9

    .line 102
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 103
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 105
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public timeShifted(J)Lcom/visionobjects/stylus/core/InkTag;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Lcom/visionobjects/stylus/core/InkTag;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkTag;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkTag_timeShifted(JLcom/visionobjects/stylus/core/InkTag;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkTag;-><init>(JZ)V

    return-object v0
.end method
