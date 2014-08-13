.class public Lcom/visionobjects/stylus/core/InkField;
.super Ljava/lang/Object;
.source "InkField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/InkField$FormattingOption;
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
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkField__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

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

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkField;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkField__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkField;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    goto :goto_0
.end method

.method public static fromCandidate(Lcom/visionobjects/stylus/core/Candidate;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 194
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromCandidate(JLcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 333
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_6(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 321
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_5(JLcom/visionobjects/stylus/core/InkItem;[B)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v1

    .line 323
    :catch_0
    move-exception v1

    .line 325
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;F)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 306
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v2

    invoke-static {v2, v3, p0, v0, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_4(JLcom/visionobjects/stylus/core/InkItem;[BF)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v1

    .line 308
    :catch_0
    move-exception v1

    .line 310
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;FI)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    .prologue
    .line 288
    const/4 v3, 0x0

    .line 291
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 298
    :goto_0
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_3(JLcom/visionobjects/stylus/core/InkItem;[BFI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6

    .line 293
    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;FII)Lcom/visionobjects/stylus/core/InkField;
    .locals 8

    .prologue
    .line 273
    const/4 v3, 0x0

    .line 276
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 283
    :goto_0
    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_2(JLcom/visionobjects/stylus/core/InkItem;[BFII)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7

    .line 278
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;FIIF)Lcom/visionobjects/stylus/core/InkField;
    .locals 9

    .prologue
    .line 258
    const/4 v3, 0x0

    .line 261
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 268
    :goto_0
    new-instance v8, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_1(JLcom/visionobjects/stylus/core/InkItem;[BFIIF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v8

    .line 263
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;FIIFF)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    .prologue
    .line 243
    const/4 v3, 0x0

    .line 246
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 253
    :goto_0
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_0(JLcom/visionobjects/stylus/core/InkItem;[BFIIFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9

    .line 248
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromItemList(Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 464
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 465
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 466
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 467
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 466
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 470
    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_6(JLcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 444
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 445
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 446
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 445
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 448
    :cond_0
    const/4 v0, 0x0

    .line 451
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 458
    :goto_1
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static {v3, v4, v2, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_5(JLcom/visionobjects/stylus/core/ListInkItem;[B)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v1

    .line 453
    :catch_0
    move-exception v1

    .line 455
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;F)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "F)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 423
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 424
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 425
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 424
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 427
    :cond_0
    const/4 v0, 0x0

    .line 430
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 437
    :goto_1
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static {v3, v4, v2, v0, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_4(JLcom/visionobjects/stylus/core/ListInkItem;[BF)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v1

    .line 432
    :catch_0
    move-exception v1

    .line 434
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FI)Lcom/visionobjects/stylus/core/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FI)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 402
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 403
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 404
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 403
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 406
    :cond_0
    const/4 v3, 0x0

    .line 409
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 416
    :goto_1
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_3(JLcom/visionobjects/stylus/core/ListInkItem;[BFI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6

    .line 411
    :catch_0
    move-exception v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FII)Lcom/visionobjects/stylus/core/InkField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FII)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 381
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 382
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 383
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 382
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 385
    :cond_0
    const/4 v3, 0x0

    .line 388
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 395
    :goto_1
    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_2(JLcom/visionobjects/stylus/core/ListInkItem;[BFII)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7

    .line 390
    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FIIF)Lcom/visionobjects/stylus/core/InkField;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FIIF)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 360
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 361
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 362
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 361
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 364
    :cond_0
    const/4 v3, 0x0

    .line 367
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 374
    :goto_1
    new-instance v8, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_1(JLcom/visionobjects/stylus/core/ListInkItem;[BFIIF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v8

    .line 369
    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FIIFF)Lcom/visionobjects/stylus/core/InkField;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FIIFF)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 339
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 340
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 341
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 340
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 343
    :cond_0
    const/4 v3, 0x0

    .line 346
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 353
    :goto_1
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_0(JLcom/visionobjects/stylus/core/ListInkItem;[BFIIFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9

    .line 348
    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 566
    new-instance v3, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v3, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 567
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 568
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 569
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v3, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 568
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 574
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 583
    :goto_1
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 590
    :goto_2
    new-instance v2, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v3}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v4

    invoke-static {v4, v5, v3, v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_10(JLcom/visionobjects/stylus/core/ListInkItem;[B[B)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v2

    .line 576
    :catch_0
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 585
    :catch_1
    move-exception v2

    .line 587
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;F)Lcom/visionobjects/stylus/core/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 536
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 537
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 538
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 539
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 538
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 544
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 553
    :goto_1
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 560
    :goto_2
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_9(JLcom/visionobjects/stylus/core/ListInkItem;[B[BF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6

    .line 546
    :catch_0
    move-exception v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v1

    goto :goto_1

    .line 555
    :catch_1
    move-exception v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v1

    goto :goto_2
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FF)Lcom/visionobjects/stylus/core/InkField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 506
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 507
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 508
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 509
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 508
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 514
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 523
    :goto_1
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 530
    :goto_2
    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_8(JLcom/visionobjects/stylus/core/ListInkItem;[B[BFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7

    .line 516
    :catch_0
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v1

    goto :goto_1

    .line 525
    :catch_1
    move-exception v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v1

    goto :goto_2
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFF)Lcom/visionobjects/stylus/core/InkField;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFF)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 476
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 477
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 478
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 479
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 478
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 484
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 493
    :goto_1
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 500
    :goto_2
    new-instance v8, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_7(JLcom/visionobjects/stylus/core/ListInkItem;[B[BFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v8

    .line 486
    :catch_0
    move-exception v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v1

    goto :goto_1

    .line 495
    :catch_1
    move-exception v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v1

    goto :goto_2
.end method

.method public static fromLabel(Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 231
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromLabel__SWIG_2([B)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v1

    .line 233
    :catch_0
    move-exception v1

    .line 235
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromLabel(Ljava/lang/String;I)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 216
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromLabel__SWIG_1([BI)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v1

    .line 218
    :catch_0
    move-exception v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromLabel(Ljava/lang/String;II)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 201
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromLabel__SWIG_0([BII)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v1

    .line 203
    :catch_0
    move-exception v1

    .line 205
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromSegment(Lcom/visionobjects/stylus/core/Segment;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 190
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromSegment(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromWordSegmentList(Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 596
    new-instance v2, Lcom/visionobjects/stylus/core/ListSegment;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListSegment;-><init>(Ljava/lang/Iterable;)V

    .line 597
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 598
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 599
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListSegment;->native_add(Lcom/visionobjects/stylus/core/Segment;)V

    .line 598
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 602
    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListSegment;->getCPtr(Lcom/visionobjects/stylus/core/ListSegment;)J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromWordSegmentList(JLcom/visionobjects/stylus/core/ListSegment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static grafted(Ljava/util/List;I)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkField;",
            ">;I)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v2, Lcom/visionobjects/stylus/core/ListInkField;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkField;-><init>(Ljava/lang/Iterable;)V

    .line 180
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 181
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 182
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkField;->native_add(Lcom/visionobjects/stylus/core/InkField;)V

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkField;->getCPtr(Lcom/visionobjects/stylus/core/ListInkField;)J

    move-result-wide v3

    invoke-static {v3, v4, v2, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_grafted__SWIG_2(JLcom/visionobjects/stylus/core/ListInkField;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public cutAround(Lcom/visionobjects/stylus/core/InkRange;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkRange;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v6, Lcom/visionobjects/stylus/core/ListInkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_cutAround(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListInkField;-><init>(JZ)V

    return-object v6
.end method

.method public cutAt(Lcom/visionobjects/stylus/core/InkLocation;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkLocation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v6, Lcom/visionobjects/stylus/core/ListInkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_cutAt(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListInkField;-><init>(JZ)V

    return-object v6
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkField;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkField;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkField(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkField;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkField;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkField;->delete()V

    .line 26
    return-void
.end method

.method public formatted(I)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_formatted(JLcom/visionobjects/stylus/core/InkField;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public formattedExplicitSpaces(Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 161
    new-instance v5, Lcom/visionobjects/stylus/core/ListInkLocation;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkLocation;-><init>(Ljava/lang/Iterable;)V

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 163
    :goto_0
    if-ge v2, v3, :cond_0

    .line 164
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkLocation;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkLocation;->native_add(Lcom/visionobjects/stylus/core/InkLocation;)V

    .line 163
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v8, Lcom/visionobjects/stylus/core/ListInt;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    .line 168
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 169
    :goto_1
    if-ge v1, v2, :cond_1

    .line 170
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 173
    :cond_1
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkLocation;->getCPtr(Lcom/visionobjects/stylus/core/ListInkLocation;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_formattedExplicitSpaces(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/ListInkLocation;JLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public getCircledCharactersRange()Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    .prologue
    .line 611
    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_getCircledCharactersRange(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public grafted(Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    .prologue
    .line 128
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_grafted__SWIG_1(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public grafted(Lcom/visionobjects/stylus/core/InkField;I)Lcom/visionobjects/stylus/core/InkField;
    .locals 8

    .prologue
    .line 124
    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_grafted__SWIG_0(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkField;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public inkLayout()Lcom/visionobjects/stylus/core/InkLayout;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lcom/visionobjects/stylus/core/InkLayout;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_inkLayout(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkLayout;-><init>(JZ)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 635
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_isEmpty(JLcom/visionobjects/stylus/core/InkField;)Z

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
    .line 631
    new-instance v0, Lcom/visionobjects/stylus/core/ListInkItem;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_items(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public lineBreaksCount()I
    .locals 2

    .prologue
    .line 619
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_lineBreaksCount(JLcom/visionobjects/stylus/core/InkField;)I

    move-result v0

    return v0
.end method

.method public lineRangesFromLineBreaks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Lcom/visionobjects/stylus/core/ListInkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_lineRangesFromLineBreaks(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkRange;-><init>(JZ)V

    return-object v0
.end method

.method public mapped(Lcom/visionobjects/stylus/core/Transform;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    .prologue
    .line 120
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_mapped(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public normalized()Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_normalized__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public normalized(Z)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_normalized__SWIG_0(JLcom/visionobjects/stylus/core/InkField;Z)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public pendingStrokes()Ljava/util/List;
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
    .line 88
    new-instance v0, Lcom/visionobjects/stylus/core/ListInkItem;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_pendingStrokes(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public remove(Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 6

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_remove(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)V

    .line 105
    return-void
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
    .line 627
    new-instance v0, Lcom/visionobjects/stylus/core/ListSegment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_segments__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public segments(I)Ljava/util/List;
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
    .line 623
    new-instance v0, Lcom/visionobjects/stylus/core/ListSegment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_segments__SWIG_0(JLcom/visionobjects/stylus/core/InkField;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public selectedLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 641
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_selectedLabel(JLcom/visionobjects/stylus/core/InkField;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-object v0

    .line 643
    :catch_0
    move-exception v0

    .line 645
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 647
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInkLayout(Lcom/visionobjects/stylus/core/InkLayout;)V
    .locals 6

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLayout;->a(Lcom/visionobjects/stylus/core/InkLayout;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setInkLayout(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLayout;)V

    .line 81
    return-void
.end method

.method public setPendingStrokes(Ljava/util/List;)V
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
    .line 61
    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 63
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setPendingStrokes(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/ListInkItem;)V

    .line 69
    return-void
.end method

.method public setTag(Lcom/visionobjects/stylus/core/InkTag;)V
    .locals 6

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkTag;->a(Lcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setTag(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkTag;)V

    .line 77
    return-void
.end method

.method public setTopLevelSegment(Lcom/visionobjects/stylus/core/Segment;)V
    .locals 6

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setTopLevelSegment(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/Segment;)V

    .line 57
    return-void
.end method

.method public setTransform(Lcom/visionobjects/stylus/core/Transform;)V
    .locals 6

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setTransform(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/Transform;)V

    .line 73
    return-void
.end method

.method public simplified()Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_simplified(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public split(Lcom/visionobjects/stylus/core/InkRange;Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkField;)V
    .locals 12

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_split(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkField;)V

    .line 117
    return-void
.end method

.method public tagRange(I)Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    .prologue
    .line 607
    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_tagRange(JLcom/visionobjects/stylus/core/InkField;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public taggedWith(Lcom/visionobjects/stylus/core/InkTag;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    .prologue
    .line 152
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkTag;->a(Lcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_taggedWith__SWIG_1(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public taggedWith(Lcom/visionobjects/stylus/core/InkTag;Z)Lcom/visionobjects/stylus/core/InkField;
    .locals 8

    .prologue
    .line 148
    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkTag;->a(Lcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_taggedWith__SWIG_0(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkTag;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public tags()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/visionobjects/stylus/core/ListInkTag;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_tags(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkTag;-><init>(JZ)V

    return-object v0
.end method

.method public timeShifted(J)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_timeShifted(JLcom/visionobjects/stylus/core/InkField;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public topLevelSegment()Lcom/visionobjects/stylus/core/Segment;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_topLevelSegment(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public transform()Lcom/visionobjects/stylus/core/Transform;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lcom/visionobjects/stylus/core/Transform;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_transform(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Transform;-><init>(JZ)V

    return-object v0
.end method
