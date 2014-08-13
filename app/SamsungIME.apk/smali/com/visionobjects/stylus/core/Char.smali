.class public Lcom/visionobjects/stylus/core/Char;
.super Ljava/lang/Object;
.source "Char.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/Char$SpacingPref;,
        Lcom/visionobjects/stylus/core/Char$GlyphForm;,
        Lcom/visionobjects/stylus/core/Char$Type;
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
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(C)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_2(C)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 64
    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_4(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    .line 65
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_5(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    .line 69
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/Char;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Char;)V
    .locals 3

    .prologue
    .line 422
    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_6(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    .line 423
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_1(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(S)V
    .locals 3

    .prologue
    .line 60
    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_3(S)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    .line 61
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Char;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    goto :goto_0
.end method

.method public static getAbsoluteValue()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 362
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_absoluteValue_get()J

    move-result-wide v1

    .line 363
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getCloseSurrounding()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 257
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_closeSurrounding_get()J

    move-result-wide v1

    .line 258
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDblIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 337
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_dblIntegralSign_get()J

    move-result-wide v1

    .line 338
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDblSurfIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 342
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_dblSurfIntegralSign_get()J

    move-result-wide v1

    .line 343
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDegreeSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 262
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_degreeSign_get()J

    move-result-wide v1

    .line 263
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDivisionSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 277
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_divisionSign_get()J

    move-result-wide v1

    .line 278
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDivisionSlash()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 272
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_divisionSlash_get()J

    move-result-wide v1

    .line 273
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getFractionSlash()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 312
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_fractionSlash_get()J

    move-result-wide v1

    .line 313
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGestureDownThenLeft()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 242
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_gestureDownThenLeft_get()J

    move-result-wide v1

    .line 243
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGestureDownThenRight()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 247
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_gestureDownThenRight_get()J

    move-result-wide v1

    .line 248
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGestureLeft()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 232
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_gestureLeft_get()J

    move-result-wide v1

    .line 233
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGestureRight()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 237
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_gestureRight_get()J

    move-result-wide v1

    .line 238
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGreaterThanOrEqualTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 387
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_greaterThanOrEqualTo_get()J

    move-result-wide v1

    .line 388
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getHanFirst()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 317
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_hanFirst_get()J

    move-result-wide v1

    .line 318
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getHorizontalEllipsis()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 307
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_horizontalEllipsis_get()J

    move-result-wide v1

    .line 308
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getIdenticalTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 372
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_identicalTo_get()J

    move-result-wide v1

    .line 373
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 327
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_integralSign_get()J

    move-result-wide v1

    .line 328
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLeftRightDoubleArrow()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 412
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_leftRightDoubleArrow_get()J

    move-result-wide v1

    .line 413
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLeftwardsDoubleArrow()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 402
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_leftwardsDoubleArrow_get()J

    move-result-wide v1

    .line 403
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLessThanOrEqualTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 382
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_lessThanOrEqualTo_get()J

    move-result-wide v1

    .line 383
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getMuchGreaterThan()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 397
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_muchGreaterThan_get()J

    move-result-wide v1

    .line 398
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getMuchLessThan()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 392
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_muchLessThan_get()J

    move-result-wide v1

    .line 393
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getMultiplicationSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 267
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_multiplicationSign_get()J

    move-result-wide v1

    .line 268
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getNotEqualTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 367
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notEqualTo_get()J

    move-result-wide v1

    .line 368
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getNotIdenticalTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 377
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notIdenticalTo_get()J

    move-result-wide v1

    .line 378
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getOpenSurrounding()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 252
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_openSurrounding_get()J

    move-result-wide v1

    .line 253
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPI()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 282
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_PI_get()J

    move-result-wide v1

    .line 283
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getParallelTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 417
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_parallelTo_get()J

    move-result-wide v1

    .line 418
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPhi()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 297
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_phi_get()J

    move-result-wide v1

    .line 298
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPi()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 287
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_pi_get()J

    move-result-wide v1

    .line 288
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getReplacementChar()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 322
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_replacementChar_get()J

    move-result-wide v1

    .line 323
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRightwardsDoubleArrow()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 407
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_rightwardsDoubleArrow_get()J

    move-result-wide v1

    .line 408
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getSquareRoot()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 302
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_squareRoot_get()J

    move-result-wide v1

    .line 303
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getSurfIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 332
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_surfIntegralSign_get()J

    move-result-wide v1

    .line 333
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getTplIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 347
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_tplIntegralSign_get()J

    move-result-wide v1

    .line 348
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getTplSurfIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 352
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_tplSurfIntegralSign_get()J

    move-result-wide v1

    .line 353
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getVarphi()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 292
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_varphi_get()J

    move-result-wide v1

    .line 293
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getVectorSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    .prologue
    .line 357
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_vectorSign_get()J

    move-result-wide v1

    .line 358
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method


# virtual methods
.method public byteCount()I
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_byteCount(JLcom/visionobjects/stylus/core/Char;)I

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
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Char;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Char;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Char(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J
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

.method public equals(C)Z
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_equals__SWIG_1(JLcom/visionobjects/stylus/core/Char;C)Z

    move-result v0

    return v0
.end method

.method public equals(Lcom/visionobjects/stylus/core/Char;)Z
    .locals 6

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_equals__SWIG_0(JLcom/visionobjects/stylus/core/Char;JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/Char;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/Char;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/Char;->equals(Lcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Char;->delete()V

    .line 26
    return-void
.end method

.method public has(I)Z
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_has(JLcom/visionobjects/stylus/core/Char;I)Z

    move-result v0

    return v0
.end method

.method public hasAllForms()Z
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_hasAllForms(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public hasOnlyOneForm()Z
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_hasOnlyOneForm(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public is(I)Z
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_is(JLcom/visionobjects/stylus/core/Char;I)Z

    move-result v0

    return v0
.end method

.method public isArabicDigit()Z
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isArabicDigit(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isArabicLetter()Z
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isArabicLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isArabicPunctuation()Z
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isArabicPunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCJCharacter()Z
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCJCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCJKFullSizeCharacter()Z
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCJKFullSizeCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCJKPunctuation()Z
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCJKPunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isChineseCharacter()Z
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isChineseCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCircledCharacter()Z
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCircledCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCyrillicLetter()Z
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCyrillicLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isDigit()Z
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isDigit(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isEnglishCharacter()Z
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isEnglishCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isGreekLetter()Z
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isGreekLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isHebrewLetter()Z
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isHebrewLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isLatinLetter()Z
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isLatinLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isLatinPunctuation()Z
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isLatinPunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isMirroredSymbol()Z
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isMirroredSymbol(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isNull(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isRightToLeftCharacter()Z
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isRightToLeftCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isSpacing()Z
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isSpacing(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isStretchableHalfSizePunctuation()Z
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isStretchableHalfSizePunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isStretchableHalfSizeSymbol()Z
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isStretchableHalfSizeSymbol(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isThaiDigit()Z
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isThaiDigit(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isThaiLetter()Z
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isThaiLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isThaiPunctuation()Z
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isThaiPunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isUnsortedSymbol()Z
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isUnsortedSymbol(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public notEquals(C)Z
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notEquals__SWIG_1(JLcom/visionobjects/stylus/core/Char;C)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/Char;)Z
    .locals 6

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notEquals__SWIG_0(JLcom/visionobjects/stylus/core/Char;JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public prefers(IZ)Z
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_prefers(JLcom/visionobjects/stylus/core/Char;IZ)Z

    move-result v0

    return v0
.end method

.method public toAlternateSized()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    .prologue
    .line 228
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_toAlternateSized(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public toLower()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_toLower(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public toMirrored()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_toMirrored(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public toUpper()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    .prologue
    .line 220
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_toUpper(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public unicode()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_unicode(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    return-wide v0
.end method
