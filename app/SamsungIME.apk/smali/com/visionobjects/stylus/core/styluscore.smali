.class public Lcom/visionobjects/stylus/core/styluscore;
.super Ljava/lang/Object;
.source "styluscore.java"

# interfaces
.implements Lcom/visionobjects/stylus/core/styluscoreConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/visionobjects/stylus/core/Point;Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    .prologue
    .line 141
    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->add(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method

.method public static getChar_PI_unicode()I
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_PI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_absoluteSign_unicode()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_absoluteSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_dblIntegralSign_unicode()I
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_dblIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_dblSurfIntegralSign_unicode()I
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_dblSurfIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_degreeSign_unicode()I
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_degreeSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_divisionSign_unicode()I
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_divisionSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_divisionSlash_unicode()I
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_divisionSlash_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_fractionSlash_unicode()I
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_fractionSlash_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_greaterThanOrEqualTo_unicode()I
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_greaterThanOrEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_hanOne_unicode()I
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_hanOne_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_horizontalEllipsis_unicode()I
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_horizontalEllipsis_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_identicalTo_unicode()I
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_identicalTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_integralSign_unicode()I
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_integralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_leftRightDoubleArrow_unicode()I
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_leftRightDoubleArrow_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_leftwardsDoubleArrow_unicode()I
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_leftwardsDoubleArrow_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_lessThanOrEqualTo_unicode()I
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_lessThanOrEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_muchGreaterThan_unicode()I
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_muchGreaterThan_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_muchLessThan_unicode()I
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_muchLessThan_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_multiplicationSign_unicode()I
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_multiplicationSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_notEqualTo_unicode()I
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_notIdenticalTo_unicode()I
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notIdenticalTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_parallelTo_unicode()I
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_parallelTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_phi_unicode()I
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_phi_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_pi_unicode()I
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_pi_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_replacementChar_unicode()I
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_replacementChar_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_rightwardsDoubleArrow_unicode()I
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_rightwardsDoubleArrow_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_squareRoot_unicode()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_squareRoot_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_surfIntegralSign_unicode()I
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_surfIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_tplIntegralSign_unicode()I
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_tplIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_tplSurfIntegralSign_unicode()I
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_tplSurfIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_varphi_unicode()I
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_varphi_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_vectorSign_unicode()I
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_vectorSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static minus(Lcom/visionobjects/stylus/core/Point;Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    .prologue
    .line 145
    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->minus(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method
