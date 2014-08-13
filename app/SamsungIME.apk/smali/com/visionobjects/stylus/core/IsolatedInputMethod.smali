.class public Lcom/visionobjects/stylus/core/IsolatedInputMethod;
.super Lcom/visionobjects/stylus/core/InputMethod;
.source "IsolatedInputMethod.java"


# instance fields
.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_IsolatedInputMethod__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/IsolatedInputMethod;-><init>(JZ)V

    .line 49
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 3

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IsolatedInputMethod_SWIGUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethod;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/IsolatedInputMethod;->b:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/IsolatedInputMethod;)V
    .locals 3

    .prologue
    .line 69
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_IsolatedInputMethod__SWIG_2(JLcom/visionobjects/stylus/core/IsolatedInputMethod;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/IsolatedInputMethod;-><init>(JZ)V

    .line 70
    return-void

    .line 69
    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/IsolatedInputMethod;->b:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    invoke-static {p1}, Lcom/visionobjects/stylus/core/IsolatedInputMethod;->a(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/IsolatedInputMethod;-><init>(JZ)V

    .line 66
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 55
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_IsolatedInputMethod__SWIG_1([B)J

    move-result-wide v0

    return-wide v0

    .line 57
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IsolatedInputMethod;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->a:Z

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->a:Z

    .line 31
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IsolatedInputMethod;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_IsolatedInputMethod(J)V

    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/IsolatedInputMethod;->b:J

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/visionobjects/stylus/core/InputMethod;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 28
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/IsolatedInputMethod;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/IsolatedInputMethod;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/IsolatedInputMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/IsolatedInputMethod;->delete()V

    .line 25
    return-void
.end method
