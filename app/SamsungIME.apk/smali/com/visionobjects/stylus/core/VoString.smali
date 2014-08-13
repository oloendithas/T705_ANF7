.class public Lcom/visionobjects/stylus/core/VoString;
.super Ljava/lang/Object;
.source "VoString.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoString__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(C)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoString__SWIG_1(C)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    .line 53
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/VoString;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Char;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoString__SWIG_2(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoString;->a(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    .line 74
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 63
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoString__SWIG_3([B)J

    move-result-wide v0

    return-wide v0

    .line 65
    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static number(D)Ljava/lang/String;
    .locals 3

    .prologue
    .line 420
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_number__SWIG_2(D)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-object v0

    .line 422
    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 426
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static number(DC)Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_number__SWIG_1(DC)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-object v0

    .line 410
    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 414
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static number(DCI)Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_number__SWIG_0(DCI)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-object v0

    .line 398
    :catch_0
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 402
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 204
    .line 207
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 216
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-wide v3, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v3, v4, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_add(JLcom/visionobjects/stylus/core/VoString;[B)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_1
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 222
    goto :goto_1
.end method

.method public addAffect(Ljava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 4

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 230
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v2, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v2, v3, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_addAffect(JLcom/visionobjects/stylus/core/VoString;[B)J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v1

    .line 232
    :catch_0
    move-exception v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 4

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 84
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v2, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v2, v3, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_append(JLcom/visionobjects/stylus/core/VoString;[B)J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v1

    .line 86
    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public at(I)Lcom/visionobjects/stylus/core/Char;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_at(JLcom/visionobjects/stylus/core/VoString;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public byteCount()I
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_byteCount(JLcom/visionobjects/stylus/core/VoString;)I

    move-result v0

    return v0
.end method

.method public chop(I)V
    .locals 2

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_chop(JLcom/visionobjects/stylus/core/VoString;I)V

    .line 339
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_clear(JLcom/visionobjects/stylus/core/VoString;)V

    .line 78
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 245
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_contains(JLcom/visionobjects/stylus/core/VoString;[B)Z

    move-result v0

    return v0

    .line 247
    :catch_0
    move-exception v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public containsOneCharOf(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 260
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_containsOneCharOf(JLcom/visionobjects/stylus/core/VoString;[B)Z

    move-result v0

    return v0

    .line 262
    :catch_0
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public count(Lcom/visionobjects/stylus/core/Char;)I
    .locals 6

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_count(JLcom/visionobjects/stylus/core/VoString;JLcom/visionobjects/stylus/core/Char;)I

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
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/VoString;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VoString;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_VoString(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/VoString;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/VoString;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/VoString;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 177
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_equals(JLcom/visionobjects/stylus/core/VoString;[B)Z

    move-result v0

    return v0

    .line 179
    :catch_0
    move-exception v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/VoString;->delete()V

    .line 26
    return-void
.end method

.method public findBytePos(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 138
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_findBytePos__SWIG_1(JLcom/visionobjects/stylus/core/VoString;[B)I

    move-result v0

    return v0

    .line 140
    :catch_0
    move-exception v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public findBytePos(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 123
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, v0, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_findBytePos__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[BI)I

    move-result v0

    return v0

    .line 125
    :catch_0
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public firstChar()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_firstChar(JLcom/visionobjects/stylus/core/VoString;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_isEmpty(JLcom/visionobjects/stylus/core/VoString;)Z

    move-result v0

    return v0
.end method

.method public isUnicodeChar(J)Z
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_isUnicodeChar(JLcom/visionobjects/stylus/core/VoString;J)Z

    move-result v0

    return v0
.end method

.method public lastChar()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_lastChar(JLcom/visionobjects/stylus/core/VoString;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_length(JLcom/visionobjects/stylus/core/VoString;)I

    move-result v0

    return v0
.end method

.method public mid(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_mid__SWIG_1(JLcom/visionobjects/stylus/core/VoString;I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mid(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_mid__SWIG_0(JLcom/visionobjects/stylus/core/VoString;II)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notEquals(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 192
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_notEquals(JLcom/visionobjects/stylus/core/VoString;[B)Z

    move-result v0

    return v0

    .line 194
    :catch_0
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public remapCircledCharacters()V
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_remapCircledCharacters(JLcom/visionobjects/stylus/core/VoString;)V

    .line 343
    return-void
.end method

.method public remove(II)Lcom/visionobjects/stylus/core/VoString;
    .locals 4

    .prologue
    .line 334
    new-instance v0, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_remove__SWIG_1(JLcom/visionobjects/stylus/core/VoString;II)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 4

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 322
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v2, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v2, v3, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_remove__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[B)J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v1

    .line 324
    :catch_0
    move-exception v1

    .line 326
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public repeated(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_repeated(JLcom/visionobjects/stylus/core/VoString;I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-object v0

    .line 354
    :catch_0
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 358
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(IILjava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 7

    .prologue
    .line 304
    const/4 v5, 0x0

    .line 307
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 314
    :goto_0
    new-instance v6, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_replace__SWIG_1(JLcom/visionobjects/stylus/core/VoString;II[B)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v6

    .line 309
    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 280
    .line 283
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 292
    :goto_0
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 299
    :goto_1
    new-instance v2, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v3, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v3, v4, p0, v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_replace__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[B[B)J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v2

    .line 285
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 294
    :catch_1
    move-exception v2

    .line 296
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public split(C)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/visionobjects/stylus/core/ListString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_split(JLcom/visionobjects/stylus/core/VoString;C)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public toDouble()D
    .locals 2

    .prologue
    .line 386
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_toDouble(JLcom/visionobjects/stylus/core/VoString;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toInt()I
    .locals 2

    .prologue
    .line 390
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_toInt(JLcom/visionobjects/stylus/core/VoString;)I

    move-result v0

    return v0
.end method

.method public toLower()Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_toLower(JLcom/visionobjects/stylus/core/VoString;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-object v0

    .line 366
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 370
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toUpper()Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_toUpper(JLcom/visionobjects/stylus/core/VoString;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-object v0

    .line 378
    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 382
    const/4 v0, 0x0

    goto :goto_0
.end method
