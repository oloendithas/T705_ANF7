.class public Lcom/visionobjects/stylus/core/InkDebug;
.super Ljava/lang/Object;
.source "InkDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/InkDebug$Type;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 111
    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkDebug__SWIG_0(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    .line 112
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/InkDebug;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkDebug;)V
    .locals 3

    .prologue
    .line 115
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkDebug__SWIG_1(JLcom/visionobjects/stylus/core/InkDebug;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    .line 116
    return-void

    .line 115
    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    goto :goto_0
.end method

.method public static disable()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_disable__SWIG_1()V

    .line 61
    return-void
.end method

.method public static disable(I)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_disable__SWIG_0(I)V

    .line 57
    return-void
.end method

.method public static disableSerialization()V
    .locals 0

    .prologue
    .line 91
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_disableSerialization()V

    .line 92
    return-void
.end method

.method public static elapsed(Lcom/visionobjects/stylus/core/VoTimeStamp;)J
    .locals 2

    .prologue
    .line 72
    invoke-static {p0}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_elapsed(JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static enable()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_enable__SWIG_1()V

    .line 53
    return-void
.end method

.method public static enable(I)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_enable__SWIG_0(I)V

    .line 49
    return-void
.end method

.method public static enableSerialization(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 79
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_enableSerialization([B)V

    .line 88
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFilter()I
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_getFilter()I

    move-result v0

    return v0
.end method

.method public static getSerializationFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_getSerializationFilePath()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static serializationEnabled()Z
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_serializationEnabled()Z

    move-result v0

    return v0
.end method

.method public static setTimings(Z)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_setTimings(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkDebug(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkDebug;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InkDebug;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkDebug;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkDebug;->delete()V

    .line 26
    return-void
.end method

.method public maybeSpace()Lcom/visionobjects/stylus/core/InkDebug;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/visionobjects/stylus/core/InkDebug;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_maybeSpace(JLcom/visionobjects/stylus/core/InkDebug;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-object v0
.end method

.method public nospace()Lcom/visionobjects/stylus/core/InkDebug;
    .locals 4

    .prologue
    .line 123
    new-instance v0, Lcom/visionobjects/stylus/core/InkDebug;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_nospace(JLcom/visionobjects/stylus/core/InkDebug;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-object v0
.end method

.method public space()Lcom/visionobjects/stylus/core/InkDebug;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lcom/visionobjects/stylus/core/InkDebug;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_space(JLcom/visionobjects/stylus/core/InkDebug;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-object v0
.end method
