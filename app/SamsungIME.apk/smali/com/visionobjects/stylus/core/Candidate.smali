.class public Lcom/visionobjects/stylus/core/Candidate;
.super Ljava/lang/Object;
.source "Candidate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/Candidate$Flags;,
        Lcom/visionobjects/stylus/core/Candidate$Type;
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
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Candidate__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Candidate;-><init>(JZ)V

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

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Candidate;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Candidate;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Candidate__SWIG_1(JLcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Candidate;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Candidate;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    goto :goto_0
.end method


# virtual methods
.method public append(Lcom/visionobjects/stylus/core/Segment;)V
    .locals 6

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_append(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Segment;)V

    .line 88
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Candidate;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Candidate;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Candidate(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J
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

.method public equals(Lcom/visionobjects/stylus/core/Candidate;)Z
    .locals 6

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_equals(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/Candidate;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/Candidate;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/Candidate;->equals(Lcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Candidate;->delete()V

    .line 26
    return-void
.end method

.method public flags()I
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_flags(JLcom/visionobjects/stylus/core/Candidate;)I

    move-result v0

    return v0
.end method

.method public grafted(Lcom/visionobjects/stylus/core/Candidate;I)Lcom/visionobjects/stylus/core/Candidate;
    .locals 8

    .prologue
    .line 142
    new-instance v7, Lcom/visionobjects/stylus/core/Candidate;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_grafted(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/Candidate;-><init>(JZ)V

    return-object v7
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_isEmpty(JLcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    return v0
.end method

.method public isLineBreak()Z
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_isLineBreak(JLcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    return v0
.end method

.method public isSpace()Z
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_isSpace(JLcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    return v0
.end method

.method public isTab()Z
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_isTab(JLcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    return v0
.end method

.method public isWhitespace()Z
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_isWhitespace(JLcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    return v0
.end method

.method public label()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_label(JLcom/visionobjects/stylus/core/Candidate;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapped(Lcom/visionobjects/stylus/core/Transform;Ljava/util/List;)Lcom/visionobjects/stylus/core/Candidate;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/Transform;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)",
            "Lcom/visionobjects/stylus/core/Candidate;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v8, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 129
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 131
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_0
    :try_start_0
    new-instance v9, Lcom/visionobjects/stylus/core/Candidate;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_mapped(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/Candidate;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 137
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v9

    .line 136
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 137
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public normalized(Lcom/visionobjects/stylus/core/InkRange;Ljava/util/List;)Lcom/visionobjects/stylus/core/Candidate;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkRange;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/visionobjects/stylus/core/Candidate;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v8, Lcom/visionobjects/stylus/core/ListInt;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    .line 183
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 184
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 185
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    .line 184
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 188
    :cond_0
    new-instance v9, Lcom/visionobjects/stylus/core/Candidate;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_normalized__SWIG_1(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/Candidate;-><init>(JZ)V

    return-object v9
.end method

.method public normalized(Lcom/visionobjects/stylus/core/InkRange;Ljava/util/List;Z)Lcom/visionobjects/stylus/core/Candidate;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkRange;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lcom/visionobjects/stylus/core/Candidate;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v8, Lcom/visionobjects/stylus/core/ListInt;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    .line 171
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 173
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    .line 172
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 176
    :cond_0
    new-instance v10, Lcom/visionobjects/stylus/core/Candidate;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_normalized__SWIG_0(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListInt;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v1, v2}, Lcom/visionobjects/stylus/core/Candidate;-><init>(JZ)V

    return-object v10
.end method

.method public normalizedRecognitionScore()F
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_normalizedRecognitionScore(JLcom/visionobjects/stylus/core/Candidate;)F

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/Candidate;)Z
    .locals 6

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_notEquals(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    return v0
.end method

.method public resemblanceScore()F
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_resemblanceScore(JLcom/visionobjects/stylus/core/Candidate;)F

    move-result v0

    return v0
.end method

.method public seamlesslyGraftsTo(Lcom/visionobjects/stylus/core/Candidate;)Z
    .locals 6

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_seamlesslyGraftsTo(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    return v0
.end method

.method public segments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/visionobjects/stylus/core/ListSegment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_segments(JLcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public setFlags(I)V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_setFlags(JLcom/visionobjects/stylus/core/Candidate;I)V

    .line 84
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 63
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_setLabel(JLcom/visionobjects/stylus/core/Candidate;[B)V

    .line 72
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setNormalizedRecognitionScore(F)V
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_setNormalizedRecognitionScore(JLcom/visionobjects/stylus/core/Candidate;F)V

    .line 80
    return-void
.end method

.method public setResemblanceScore(F)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_setResemblanceScore(JLcom/visionobjects/stylus/core/Candidate;F)V

    .line 76
    return-void
.end method

.method public setType(I)V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_setType(JLcom/visionobjects/stylus/core/Candidate;I)V

    .line 57
    return-void
.end method

.method public simplified(Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/Candidate;
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
            "Lcom/visionobjects/stylus/core/Candidate;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 147
    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 149
    :goto_0
    if-ge v2, v3, :cond_0

    .line 150
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 149
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v8, Lcom/visionobjects/stylus/core/ListInt;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    .line 154
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 155
    :goto_1
    if-ge v1, v2, :cond_1

    .line 156
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    .line 155
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 159
    :cond_1
    :try_start_0
    new-instance v9, Lcom/visionobjects/stylus/core/Candidate;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_simplified(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/Candidate;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 162
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 164
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v9

    .line 161
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 162
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 164
    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public split(Lcom/visionobjects/stylus/core/InkRange;Lcom/visionobjects/stylus/core/Candidate;Lcom/visionobjects/stylus/core/Candidate;Z)V
    .locals 13

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v6

    invoke-static/range {p3 .. p3}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_split(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;Z)V

    .line 124
    return-void
.end method

.method public timeShifted(J)Lcom/visionobjects/stylus/core/Candidate;
    .locals 4

    .prologue
    .line 193
    new-instance v0, Lcom/visionobjects/stylus/core/Candidate;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_timeShifted(JLcom/visionobjects/stylus/core/Candidate;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Candidate;-><init>(JZ)V

    return-object v0
.end method

.method public type()I
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Candidate;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Candidate_type(JLcom/visionobjects/stylus/core/Candidate;)I

    move-result v0

    return v0
.end method
