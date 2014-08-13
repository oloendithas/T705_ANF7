.class public Lcom/visionobjects/stylus/core/InkSearchListener;
.super Ljava/lang/Object;
.source "InkSearchListener.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkSearchListener__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkSearchListener;-><init>(JZ)V

    .line 49
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkSearchListener;)V
    .locals 3

    .prologue
    .line 87
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkSearchListener;->a(Lcom/visionobjects/stylus/core/InkSearchListener;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkSearchListener__SWIG_1(JLcom/visionobjects/stylus/core/InkSearchListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkSearchListener;-><init>(JZ)V

    .line 88
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkSearchListener;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    goto :goto_0
.end method


# virtual methods
.method public configured(Lcom/visionobjects/stylus/core/InkSearch;I)V
    .locals 7

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkSearch;->a(Lcom/visionobjects/stylus/core/InkSearch;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearchListener_configured(JLcom/visionobjects/stylus/core/InkSearchListener;JLcom/visionobjects/stylus/core/InkSearch;I)V

    .line 53
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkSearchListener(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkSearchListener;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InkSearchListener;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkSearchListener;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkSearchListener;->delete()V

    .line 26
    return-void
.end method

.method public indexingCanceled()V
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearchListener_indexingCanceled(JLcom/visionobjects/stylus/core/InkSearchListener;)V

    .line 61
    return-void
.end method

.method public indexingProgress(II)Z
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearchListener_indexingProgress(JLcom/visionobjects/stylus/core/InkSearchListener;II)Z

    move-result v0

    return v0
.end method

.method public searchCallBack(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/SearchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v5, Lcom/visionobjects/stylus/core/ListSearchResult;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListSearchResult;-><init>(Ljava/lang/Iterable;)V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 72
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/SearchResult;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListSearchResult;->native_add(Lcom/visionobjects/stylus/core/SearchResult;)V

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListSearchResult;->getCPtr(Lcom/visionobjects/stylus/core/ListSearchResult;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearchListener_searchCallBack(JLcom/visionobjects/stylus/core/InkSearchListener;JLcom/visionobjects/stylus/core/ListSearchResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 78
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 78
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public searchCanceled()V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearchListener_searchCanceled(JLcom/visionobjects/stylus/core/InkSearchListener;)V

    .line 84
    return-void
.end method

.method public searchProgress(II)Z
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearchListener;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearchListener_searchProgress(JLcom/visionobjects/stylus/core/InkSearchListener;II)Z

    move-result v0

    return v0
.end method
