.class public Lcom/visionobjects/stylus/core/ListString;
.super Ljava/util/ArrayList;
.source "ListString.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
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
    .line 83
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ListString__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/ListString;->a:Z

    .line 18
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/ListString;->b:J

    .line 19
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ListString;->native_size()I

    move-result v1

    .line 20
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 21
    invoke-virtual {p0, v0}, Lcom/visionobjects/stylus/core/ListString;->native_at(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/ListString;)V
    .locals 3

    .prologue
    .line 87
    invoke-static {p1}, Lcom/visionobjects/stylus/core/ListString;->getCPtr(Lcom/visionobjects/stylus/core/ListString;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ListString__SWIG_1(JLcom/visionobjects/stylus/core/ListString;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/visionobjects/stylus/core/ListString;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public static getCPtr(Lcom/visionobjects/stylus/core/ListString;)J
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListString;->b:J

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
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListString;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 43
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/ListString;->a:Z

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ListString;->a:Z

    .line 45
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListString;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_ListString(J)V

    .line 47
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/ListString;->b:J
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
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ListString;->delete()V

    .line 39
    return-void
.end method

.method public native_add(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 55
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ListString;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ListString_native_add(JLcom/visionobjects/stylus/core/ListString;[B)V

    .line 64
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public native_at(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ListString;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ListString_native_at(JLcom/visionobjects/stylus/core/ListString;I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native_size()I
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ListString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ListString_native_size(JLcom/visionobjects/stylus/core/ListString;)I

    move-result v0

    return v0
.end method
