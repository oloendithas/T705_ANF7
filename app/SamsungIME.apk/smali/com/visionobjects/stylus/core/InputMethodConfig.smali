.class public Lcom/visionobjects/stylus/core/InputMethodConfig;
.super Ljava/lang/Object;
.source "InputMethodConfig.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InputMethodConfig__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethodConfig;-><init>(JZ)V

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

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InputMethodConfig;)V
    .locals 3

    .prologue
    .line 275
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InputMethodConfig__SWIG_1(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethodConfig;-><init>(JZ)V

    .line 276
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    goto :goto_0
.end method


# virtual methods
.method public addLexicon(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v5, Lcom/visionobjects/stylus/core/ListString;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListString;-><init>(Ljava/lang/Iterable;)V

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListString;->native_add(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListString;->getCPtr(Lcom/visionobjects/stylus/core/ListString;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_addLexicon(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/ListString;)V

    .line 130
    return-void
.end method

.method public addLexiconEntry(Ljava/lang/String;)V
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
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_addLexiconEntry(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    .line 157
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addResource(Ljava/lang/String;)V
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
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_addResource(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    .line 64
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addResourceDir(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 70
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_addResourceDir(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    .line 79
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public autoIso()Z
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_autoIso(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public candidateListSize(I)J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_candidateListSize(JLcom/visionobjects/stylus/core/InputMethodConfig;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public certificate()Lcom/visionobjects/stylus/core/VectorByte;
    .locals 4

    .prologue
    .line 232
    new-instance v0, Lcom/visionobjects/stylus/core/VectorByte;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_certificate(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VectorByte;-><init>(JZ)V

    return-object v0
.end method

.method public coordinateResolution()F
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_coordinateResolution(JLcom/visionobjects/stylus/core/InputMethodConfig;)F

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
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InputMethodConfig(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J
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

.method public equals(Lcom/visionobjects/stylus/core/InputMethodConfig;)Z
    .locals 6

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_equals(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InputMethodConfig;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InputMethodConfig;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InputMethodConfig;->equals(Lcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InputMethodConfig;->delete()V

    .line 26
    return-void
.end method

.method public freezeTimeout()I
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_freezeTimeout(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public locale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_locale(JLcom/visionobjects/stylus/core/InputMethodConfig;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public missingResources()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/visionobjects/stylus/core/ListString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_missingResources(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/InputMethodConfig;)Z
    .locals 6

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_notEquals(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public productID()I
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_productID(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public resources()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcom/visionobjects/stylus/core/ListString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_resources(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public searchResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 244
    .line 247
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 256
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-wide v3, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v3, v4, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_searchResource(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :goto_1
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    goto :goto_0

    .line 258
    :catch_1
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 262
    goto :goto_1
.end method

.method public setCandidateListSize(IJ)V
    .locals 6

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setCandidateListSize(JLcom/visionobjects/stylus/core/InputMethodConfig;IJ)V

    .line 118
    return-void
.end method

.method public setCertificate(Lcom/visionobjects/stylus/core/VectorByte;)V
    .locals 6

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VectorByte;->a(Lcom/visionobjects/stylus/core/VectorByte;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setCertificate__SWIG_1(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/VectorByte;)V

    .line 165
    return-void
.end method

.method public setCertificate([B)V
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setCertificate__SWIG_0(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    .line 161
    return-void
.end method

.method public setCoordinateResolution(F)V
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setCoordinateResolution(JLcom/visionobjects/stylus/core/InputMethodConfig;F)V

    .line 173
    return-void
.end method

.method public setFreezeTimeout(I)V
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setFreezeTimeout(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V

    .line 102
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 85
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setLocale(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    .line 94
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setProductID(I)V
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setProductID(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V

    .line 169
    return-void
.end method

.method public setSpeedQualityCompromise(I)V
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setSpeedQualityCompromise(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V

    .line 98
    return-void
.end method

.method public setStrictAlienCharacters(Z)V
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setStrictAlienCharacters(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V

    .line 114
    return-void
.end method

.method public setUnfreezeWordCount(I)V
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setUnfreezeWordCount(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V

    .line 106
    return-void
.end method

.method public setUnfreezeWordsAccrossLines(Z)V
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_setUnfreezeWordsAccrossLines(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V

    .line 110
    return-void
.end method

.method public speedQualityCompromise()I
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_speedQualityCompromise(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public strictAlienCharacters()Z
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_strictAlienCharacters(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public supplementaryLexicon()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Lcom/visionobjects/stylus/core/ListString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_supplementaryLexicon(JLcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public unfreezeWordCount()I
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_unfreezeWordCount(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method

.method public unfreezeWordsAccrossLines()Z
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_unfreezeWordsAccrossLines(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    return v0
.end method

.method public updateLexicon(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v5, Lcom/visionobjects/stylus/core/ListString;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListString;-><init>(Ljava/lang/Iterable;)V

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

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListString;->native_add(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListString;->getCPtr(Lcom/visionobjects/stylus/core/ListString;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_updateLexicon(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/ListString;)V

    .line 142
    return-void
.end method

.method public writingDirection()I
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodConfig;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodConfig_writingDirection(JLcom/visionobjects/stylus/core/InputMethodConfig;)I

    move-result v0

    return v0
.end method
