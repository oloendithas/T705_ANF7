.class public Lcom/visionobjects/stylus/core/ItfWriter;
.super Ljava/lang/Object;
.source "ItfWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/ItfWriter$Error;
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
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItfWriter__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItfWriter;-><init>(JZ)V

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

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/ItfWriter;)V
    .locals 3

    .prologue
    .line 196
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItfWriter__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItfWriter;-><init>(JZ)V

    .line 197
    return-void

    .line 196
    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    goto :goto_0
.end method

.method public static errorCodeToString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_errorCodeToString(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addStroke(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 6

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_addStroke(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InkItem;)V

    .line 130
    return-void
.end method

.method public addStrokes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 137
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_addStrokes(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/ListInkItem;)V

    .line 142
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_ItfWriter(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/ItfWriter;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/ItfWriter;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/ItfWriter;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method public errorCode()I
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_errorCode(JLcom/visionobjects/stylus/core/ItfWriter;)I

    move-result v0

    return v0
.end method

.method public errorLine()I
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_errorLine(JLcom/visionobjects/stylus/core/ItfWriter;)I

    move-result v0

    return v0
.end method

.method public errorString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_errorString(JLcom/visionobjects/stylus/core/ItfWriter;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public failed()Z
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_failed(JLcom/visionobjects/stylus/core/ItfWriter;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ItfWriter;->delete()V

    .line 26
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 117
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setComment__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;[B)V

    .line 126
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    .line 93
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 109
    :goto_1
    iget-wide v2, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v2, v3, p0, v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setComment__SWIG_0(JLcom/visionobjects/stylus/core/ItfWriter;[B[B)V

    .line 111
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setConfig(Lcom/visionobjects/stylus/core/InputMethodConfig;)V
    .locals 6

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setConfig__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InputMethodConfig;)V

    .line 68
    return-void
.end method

.method public setConfig(Lcom/visionobjects/stylus/core/InputMethodConfig;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 52
    const/4 v6, 0x0

    .line 55
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 62
    :goto_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setConfig__SWIG_0(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    .line 64
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setField(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 6

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setField__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InkField;)V

    .line 87
    return-void
.end method

.method public setField(Lcom/visionobjects/stylus/core/InkField;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 71
    const/4 v6, 0x0

    .line 74
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 81
    :goto_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setField__SWIG_0(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InkField;[B)V

    .line 83
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 148
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_write(JLcom/visionobjects/stylus/core/ItfWriter;[B)V

    .line 157
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
