.class public Lcom/visionobjects/stylus/core/InkItemParamListener;
.super Ljava/lang/Object;
.source "InkItemParamListener.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkItemParamListener()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItemParamListener;-><init>(JZ)V

    .line 61
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->b:J

    .line 18
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkItemParamListener;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->b:J

    goto :goto_0
.end method


# virtual methods
.method public createInkItemParamFrom(Lcom/visionobjects/stylus/core/InkItem;Lcom/visionobjects/stylus/core/InkItem;I)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItemParamListener_createInkItemParamFrom(JLcom/visionobjects/stylus/core/InkItemParamListener;JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkItemParamListener(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->b:J
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkItemParamListener;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InkItemParamListener;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkItemParamListener;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkItemParamListener;->delete()V

    .line 26
    return-void
.end method

.method public fromBytesToInkItemParam(Lcom/visionobjects/stylus/core/InkItem;[B)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItemParamListener_fromBytesToInkItemParam(JLcom/visionobjects/stylus/core/InkItemParamListener;JLcom/visionobjects/stylus/core/InkItem;[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromInkItemParamToBytes(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/Object;)[B
    .locals 7

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItemParamListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItemParamListener_fromInkItemParamToBytes(JLcom/visionobjects/stylus/core/InkItemParamListener;JLcom/visionobjects/stylus/core/InkItem;Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
