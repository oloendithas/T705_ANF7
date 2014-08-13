.class public Lcom/visionobjects/stylus/core/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Segment__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    .line 49
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Segment;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Segment;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Segment__SWIG_1(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Segment;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    goto :goto_0
.end method

.method public static getBaselineSkewUndefined()F
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_baselineSkewUndefined_get()F

    move-result v0

    return v0
.end method

.method public static getBaselineUndefined()F
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_baselineUndefined_get()F

    move-result v0

    return v0
.end method

.method public static getMidlineShiftUndefined()F
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_midlineShiftUndefined_get()F

    move-result v0

    return v0
.end method


# virtual methods
.method public append(Lcom/visionobjects/stylus/core/Candidate;)V
    .locals 6

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_append__SWIG_2(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Candidate;)V

    .line 65
    return-void
.end method

.method public append(Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 6

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_append__SWIG_1(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;)V

    .line 61
    return-void
.end method

.method public append(Lcom/visionobjects/stylus/core/ItemRange;)V
    .locals 6

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_append__SWIG_0(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/ItemRange;)V

    .line 57
    return-void
.end method

.method public appendAt(ILcom/visionobjects/stylus/core/Candidate;)V
    .locals 7

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p2}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_appendAt(JLcom/visionobjects/stylus/core/Segment;IJLcom/visionobjects/stylus/core/Candidate;)V

    .line 69
    return-void
.end method

.method public baseline()F
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_baseline(JLcom/visionobjects/stylus/core/Segment;)F

    move-result v0

    return v0
.end method

.method public baselineSkew()F
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_baselineSkew(JLcom/visionobjects/stylus/core/Segment;)F

    move-result v0

    return v0
.end method

.method public beautified(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/Segment;
    .locals 7

    .prologue
    .line 194
    new-instance v6, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_beautified(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v6
.end method

.method public begin()Lcom/visionobjects/stylus/core/InkLocation;
    .locals 4

    .prologue
    .line 249
    new-instance v0, Lcom/visionobjects/stylus/core/InkLocation;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_begin(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkLocation;-><init>(JZ)V

    return-object v0
.end method

.method public candidates()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/visionobjects/stylus/core/ListCandidate;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_candidates(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListCandidate;-><init>(JZ)V

    return-object v0
.end method

.method public contains(Lcom/visionobjects/stylus/core/InkLocation;)Z
    .locals 6

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_contains(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Segment;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Segment;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Segment(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J
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

.method public duration()I
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_duration(JLcom/visionobjects/stylus/core/Segment;)I

    move-result v0

    return v0
.end method

.method public end()Lcom/visionobjects/stylus/core/InkLocation;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Lcom/visionobjects/stylus/core/InkLocation;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_end(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkLocation;-><init>(JZ)V

    return-object v0
.end method

.method public equals(Lcom/visionobjects/stylus/core/Segment;)Z
    .locals 6

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_equals(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/Segment;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/Segment;->equals(Lcom/visionobjects/stylus/core/Segment;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->delete()V

    .line 26
    return-void
.end method

.method public fontified(Ljava/util/List;FF)Lcom/visionobjects/stylus/core/Segment;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Rect;",
            ">;FF)",
            "Lcom/visionobjects/stylus/core/Segment;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v5, Lcom/visionobjects/stylus/core/ListRect;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListRect;-><init>(Ljava/lang/Iterable;)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 205
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 206
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Rect;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListRect;->native_add(Lcom/visionobjects/stylus/core/Rect;)V

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 209
    :cond_0
    :try_start_0
    new-instance v8, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListRect;->getCPtr(Lcom/visionobjects/stylus/core/ListRect;)J

    move-result-wide v3

    move-object v2, p0

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_fontified(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/ListRect;FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 212
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v8

    .line 211
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 212
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public grafted(Lcom/visionobjects/stylus/core/Segment;I)Lcom/visionobjects/stylus/core/Segment;
    .locals 8

    .prologue
    .line 155
    new-instance v7, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_grafted(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v7
.end method

.method public inkRange()Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_inkRange(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public is(I)Z
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_is(JLcom/visionobjects/stylus/core/Segment;I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_isEmpty(JLcom/visionobjects/stylus/core/Segment;)Z

    move-result v0

    return v0
.end method

.method public items()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/visionobjects/stylus/core/ListInkItem;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_items(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public keepOnlySelectedCandidate()V
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_keepOnlySelectedCandidate(JLcom/visionobjects/stylus/core/Segment;)V

    .line 97
    return-void
.end method

.method public mapped(Lcom/visionobjects/stylus/core/Transform;Ljava/util/List;)Lcom/visionobjects/stylus/core/Segment;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/Transform;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)",
            "Lcom/visionobjects/stylus/core/Segment;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v8, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 142
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 143
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 144
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 147
    :cond_0
    :try_start_0
    new-instance v9, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_mapped(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 150
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v9

    .line 149
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 150
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public midlineShift()F
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_midlineShift(JLcom/visionobjects/stylus/core/Segment;)F

    move-result v0

    return v0
.end method

.method public normalized()Lcom/visionobjects/stylus/core/Segment;
    .locals 4

    .prologue
    .line 190
    new-instance v0, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_normalized__SWIG_2(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public normalized(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/Segment;
    .locals 7

    .prologue
    .line 186
    new-instance v6, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_normalized__SWIG_1(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v6
.end method

.method public normalized(Lcom/visionobjects/stylus/core/InkRange;Z)Lcom/visionobjects/stylus/core/Segment;
    .locals 8

    .prologue
    .line 182
    new-instance v7, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_normalized__SWIG_0(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v7
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/Segment;)Z
    .locals 6

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_notEquals(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)Z

    move-result v0

    return v0
.end method

.method public promoted()Lcom/visionobjects/stylus/core/Segment;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_promoted(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public segmentsOfType(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/visionobjects/stylus/core/ListSegment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_segmentsOfType(JLcom/visionobjects/stylus/core/Segment;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public select(I)Z
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_select(JLcom/visionobjects/stylus/core/Segment;I)Z

    move-result v0

    return v0
.end method

.method public selectLastCandidate()Z
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_selectLastCandidate(JLcom/visionobjects/stylus/core/Segment;)Z

    move-result v0

    return v0
.end method

.method public selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lcom/visionobjects/stylus/core/Candidate;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_selectedCandidate(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Candidate;-><init>(JZ)V

    return-object v0
.end method

.method public selectedIndex()I
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_selectedIndex(JLcom/visionobjects/stylus/core/Segment;)I

    move-result v0

    return v0
.end method

.method public setBaseline(F)V
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_setBaseline(JLcom/visionobjects/stylus/core/Segment;F)V

    .line 73
    return-void
.end method

.method public setBaselineSkew(F)V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_setBaselineSkew(JLcom/visionobjects/stylus/core/Segment;F)V

    .line 77
    return-void
.end method

.method public setMidlineShift(F)V
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_setMidlineShift(JLcom/visionobjects/stylus/core/Segment;F)V

    .line 81
    return-void
.end method

.method public simplified(Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/Segment;
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
            "Lcom/visionobjects/stylus/core/Segment;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 162
    :goto_0
    if-ge v2, v3, :cond_0

    .line 163
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 162
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v8, Lcom/visionobjects/stylus/core/ListInt;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    .line 167
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 168
    :goto_1
    if-ge v1, v2, :cond_1

    .line 169
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    .line 168
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 172
    :cond_1
    :try_start_0
    new-instance v9, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_simplified(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 175
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 177
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v9

    .line 174
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 175
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 177
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public split(Lcom/visionobjects/stylus/core/InkRange;Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)V
    .locals 12

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_split(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)V

    .line 133
    return-void
.end method

.method public strokeCount()I
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_strokeCount(JLcom/visionobjects/stylus/core/Segment;)I

    move-result v0

    return v0
.end method

.method public timeShifted(J)Lcom/visionobjects/stylus/core/Segment;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_timeShifted(JLcom/visionobjects/stylus/core/Segment;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public timeStamp()Lcom/visionobjects/stylus/core/VoTimeStamp;
    .locals 4

    .prologue
    .line 241
    new-instance v0, Lcom/visionobjects/stylus/core/VoTimeStamp;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Segment;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Segment_timeStamp(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    return-object v0
.end method
