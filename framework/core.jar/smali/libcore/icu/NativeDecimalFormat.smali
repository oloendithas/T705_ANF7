.class public final Llibcore/icu/NativeDecimalFormat;
.super Ljava/lang/Object;
.source "NativeDecimalFormat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/NativeDecimalFormat$1;,
        Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    }
.end annotation


# static fields
.field private static final UNUM_CURRENCY_CODE:I = 0x5

.field private static final UNUM_CURRENCY_SYMBOL:I = 0x8

.field private static final UNUM_DECIMAL_ALWAYS_SHOWN:I = 0x2

.field private static final UNUM_DECIMAL_SEPARATOR_SYMBOL:I = 0x0

.field private static final UNUM_DEFAULT_RULESET:I = 0x6

.field private static final UNUM_DIGIT_SYMBOL:I = 0x5

.field private static final UNUM_EXPONENTIAL_SYMBOL:I = 0xb

.field private static final UNUM_FORMAT_SYMBOL_COUNT:I = 0x12

.field private static final UNUM_FORMAT_WIDTH:I = 0xd

.field private static final UNUM_FRACTION_DIGITS:I = 0x8

.field private static final UNUM_GROUPING_SEPARATOR_SYMBOL:I = 0x1

.field private static final UNUM_GROUPING_SIZE:I = 0xa

.field private static final UNUM_GROUPING_USED:I = 0x1

.field private static final UNUM_INFINITY_SYMBOL:I = 0xe

.field private static final UNUM_INTEGER_DIGITS:I = 0x5

.field private static final UNUM_INTL_CURRENCY_SYMBOL:I = 0x9

.field private static final UNUM_LENIENT_PARSE:I = 0x13

.field private static final UNUM_MAX_FRACTION_DIGITS:I = 0x6

.field private static final UNUM_MAX_INTEGER_DIGITS:I = 0x3

.field private static final UNUM_MAX_SIGNIFICANT_DIGITS:I = 0x12

.field private static final UNUM_MINUS_SIGN_SYMBOL:I = 0x6

.field private static final UNUM_MIN_FRACTION_DIGITS:I = 0x7

.field private static final UNUM_MIN_INTEGER_DIGITS:I = 0x4

.field private static final UNUM_MIN_SIGNIFICANT_DIGITS:I = 0x11

.field private static final UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL:I = 0x11

.field private static final UNUM_MONETARY_SEPARATOR_SYMBOL:I = 0xa

.field private static final UNUM_MULTIPLIER:I = 0x9

.field private static final UNUM_NAN_SYMBOL:I = 0xf

.field private static final UNUM_NEGATIVE_PREFIX:I = 0x2

.field private static final UNUM_NEGATIVE_SUFFIX:I = 0x3

.field private static final UNUM_PADDING_CHARACTER:I = 0x4

.field private static final UNUM_PADDING_POSITION:I = 0xe

.field private static final UNUM_PAD_ESCAPE_SYMBOL:I = 0xd

.field private static final UNUM_PARSE_INT_ONLY:I = 0x0

.field private static final UNUM_PATTERN_SEPARATOR_SYMBOL:I = 0x2

.field private static final UNUM_PERCENT_SYMBOL:I = 0x3

.field private static final UNUM_PERMILL_SYMBOL:I = 0xc

.field private static final UNUM_PLUS_SIGN_SYMBOL:I = 0x7

.field private static final UNUM_POSITIVE_PREFIX:I = 0x0

.field private static final UNUM_POSITIVE_SUFFIX:I = 0x1

.field private static final UNUM_PUBLIC_RULESETS:I = 0x7

.field private static final UNUM_ROUNDING_INCREMENT:I = 0xc

.field private static final UNUM_ROUNDING_MODE:I = 0xb

.field private static final UNUM_SECONDARY_GROUPING_SIZE:I = 0xf

.field private static final UNUM_SIGNIFICANT_DIGITS_USED:I = 0x10

.field private static final UNUM_SIGNIFICANT_DIGIT_SYMBOL:I = 0x10

.field private static final UNUM_ZERO_DIGIT_SYMBOL:I = 0x4


# instance fields
.field private address:J

.field private lastPattern:Ljava/lang/String;

.field private multiplierBigDecimal:Ljava/math/BigDecimal;

.field private negPrefNull:Z

.field private negSuffNull:Z

.field private transient parseBigDecimal:Z

.field private posPrefNull:Z

.field private posSuffNull:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 19
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "dfs"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Llibcore/icu/NativeDecimalFormat;->multiplierBigDecimal:Ljava/math/BigDecimal;

    .line 123
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v13

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v14

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v16

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v16}, Llibcore/icu/NativeDecimalFormat;->open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    return-void

    .line 130
    :catch_0
    move-exception v17

    .line 131
    .local v17, "npe":Ljava/lang/NullPointerException;
    throw v17

    .line 132
    .end local v17    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v18

    .line 133
    .local v18, "re":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Llibcore/icu/LocaleData;)V
    .locals 17
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "data"    # Llibcore/icu/LocaleData;

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Llibcore/icu/NativeDecimalFormat;->multiplierBigDecimal:Ljava/math/BigDecimal;

    .line 139
    move-object/from16 v0, p2

    iget-object v3, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v4, v0, Llibcore/icu/LocaleData;->decimalSeparator:C

    const/16 v5, 0x23

    move-object/from16 v0, p2

    iget-object v6, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v7, v0, Llibcore/icu/LocaleData;->groupingSeparator:C

    move-object/from16 v0, p2

    iget-object v8, v0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v10, v0, Llibcore/icu/LocaleData;->minusSign:C

    move-object/from16 v0, p2

    iget-char v11, v0, Llibcore/icu/LocaleData;->monetarySeparator:C

    move-object/from16 v0, p2

    iget-object v12, v0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v13, v0, Llibcore/icu/LocaleData;->patternSeparator:C

    move-object/from16 v0, p2

    iget-char v14, v0, Llibcore/icu/LocaleData;->percent:C

    move-object/from16 v0, p2

    iget-char v15, v0, Llibcore/icu/LocaleData;->perMill:C

    move-object/from16 v0, p2

    iget-char v0, v0, Llibcore/icu/LocaleData;->zeroDigit:C

    move/from16 v16, v0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v16}, Llibcore/icu/NativeDecimalFormat;->open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    .line 144
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private static applyPattern(JZLjava/lang/String;)V
    .locals 5
    .param p0, "addr"    # J
    .param p2, "localized"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    .prologue
    .line 486
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/icu/NativeDecimalFormat;->applyPatternImpl(JZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 492
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "npe":Ljava/lang/NullPointerException;
    throw v0

    .line 489
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 490
    .local v1, "re":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native applyPatternImpl(JZLjava/lang/String;)V
.end method

.method private static native cloneImpl(J)J
.end method

.method private static native close(J)V
.end method

.method private static native formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native formatDouble(JDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native formatLong(JJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native getAttribute(JI)I
.end method

.method private static native getTextAttribute(JI)Ljava/lang/String;
.end method

.method private makeScalePositive(ILjava/lang/StringBuilder;)I
    .locals 2
    .param p1, "scale"    # I
    .param p2, "val"    # Ljava/lang/StringBuilder;

    .prologue
    .line 314
    if-gez p1, :cond_1

    .line 315
    neg-int p1, p1

    .line 316
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 317
    const/16 v1, 0x30

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 319
    :cond_0
    const/4 p1, 0x0

    .line 321
    .end local v0    # "i":I
    :cond_1
    return p1
.end method

.method private static native open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)J
.end method

.method private static native parse(JLjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;
.end method

.method private static native setAttribute(JII)V
.end method

.method private static native setDecimalFormatSymbols(JLjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)V
.end method

.method private static native setRoundingMode(JID)V
.end method

.method private static native setSymbol(JILjava/lang/String;)V
.end method

.method private static native setTextAttribute(JILjava/lang/String;)V
.end method

.method private static native toPatternImpl(JZ)Ljava/lang/String;
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(JZLjava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(JZLjava/lang/String;)V

    .line 279
    iput-object p1, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 164
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/icu/NativeDecimalFormat;

    .line 165
    .local v0, "clone":Llibcore/icu/NativeDecimalFormat;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3}, Llibcore/icu/NativeDecimalFormat;->cloneImpl(J)J

    move-result-wide v2

    iput-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    .line 166
    iget-object v2, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    iput-object v2, v0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    .line 167
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    .line 168
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    .line 169
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    .line 170
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-object v0

    .line 172
    .end local v0    # "clone":Llibcore/icu/NativeDecimalFormat;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "unexpected":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 148
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 149
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->close(J)V

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 189
    if-ne p1, p0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    instance-of v3, p1, Llibcore/icu/NativeDecimalFormat;

    if-nez v3, :cond_2

    move v1, v2

    .line 193
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 195
    check-cast v0, Llibcore/icu/NativeDecimalFormat;

    .line 196
    .local v0, "obj":Llibcore/icu/NativeDecimalFormat;
    iget-wide v3, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    iget-wide v5, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 234
    invoke-static {p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 235
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 236
    .local v1, "result":[C
    if-eqz v0, :cond_0

    .line 237
    # invokes: Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    invoke-static {v0, p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    .line 239
    :cond_0
    return-object v1
.end method

.method public formatBigInteger(Ljava/math/BigInteger;Ljava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 243
    invoke-static {p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 244
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 245
    .local v1, "result":[C
    if-eqz v0, :cond_0

    .line 246
    # invokes: Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    invoke-static {v0, p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    .line 248
    :cond_0
    return-object v1
.end method

.method public formatDouble(DLjava/text/FieldPosition;)[C
    .locals 4
    .param p1, "value"    # D
    .param p3, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 261
    invoke-static {p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 262
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, p1, p2, v0}, Llibcore/icu/NativeDecimalFormat;->formatDouble(JDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 263
    .local v1, "result":[C
    if-eqz v0, :cond_0

    .line 264
    # invokes: Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    invoke-static {v0, p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    .line 266
    :cond_0
    return-object v1
.end method

.method public formatLong(JLjava/text/FieldPosition;)[C
    .locals 4
    .param p1, "value"    # J
    .param p3, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 252
    invoke-static {p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 253
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, p1, p2, v0}, Llibcore/icu/NativeDecimalFormat;->formatLong(JJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 254
    .local v1, "result":[C
    if-eqz v0, :cond_0

    .line 255
    # invokes: Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    invoke-static {v0, p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    .line 257
    :cond_0
    return-object v1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "object == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 286
    :cond_0
    instance-of v9, p1, Ljava/lang/Number;

    if-nez v9, :cond_1

    .line 287
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "object not a Number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    move-object v7, p1

    .line 289
    check-cast v7, Ljava/lang/Number;

    .line 290
    .local v7, "number":Ljava/lang/Number;
    new-instance v4, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    const/4 v9, 0x0

    invoke-direct {v4, v9}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>(Llibcore/icu/NativeDecimalFormat$1;)V

    .line 292
    .local v4, "fpIter":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    instance-of v9, v7, Ljava/math/BigInteger;

    if-nez v9, :cond_2

    instance-of v9, v7, Ljava/math/BigDecimal;

    if-eqz v9, :cond_3

    .line 293
    :cond_2
    new-instance v8, Ljava/lang/String;

    iget-wide v9, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v4}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .line 302
    .local v8, "text":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, v8}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "as":Ljava/text/AttributedString;
    :goto_1
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->next()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 305
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->field()Ljava/text/Format$Field;

    move-result-object v3

    .line 306
    .local v3, "field":Ljava/text/Format$Field;
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->start()I

    move-result v9

    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->limit()I

    move-result v10

    invoke-virtual {v0, v3, v3, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1

    .line 294
    .end local v0    # "as":Ljava/text/AttributedString;
    .end local v3    # "field":Ljava/text/Format$Field;
    .end local v8    # "text":Ljava/lang/String;
    :cond_3
    instance-of v9, v7, Ljava/lang/Double;

    if-nez v9, :cond_4

    instance-of v9, v7, Ljava/lang/Float;

    if-eqz v9, :cond_5

    .line 295
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 296
    .local v1, "dv":D
    new-instance v8, Ljava/lang/String;

    iget-wide v9, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v9, v10, v1, v2, v4}, Llibcore/icu/NativeDecimalFormat;->formatDouble(JDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .line 297
    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_0

    .line 298
    .end local v1    # "dv":D
    .end local v8    # "text":Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 299
    .local v5, "lv":J
    new-instance v8, Ljava/lang/String;

    iget-wide v9, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v9, v10, v5, v6, v4}, Llibcore/icu/NativeDecimalFormat;->formatLong(JJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local v5    # "lv":J
    .restart local v0    # "as":Ljava/text/AttributedString;
    :cond_6
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v9

    return-object v9
.end method

.method public getGroupingSize()I
    .locals 3

    .prologue
    .line 355
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getMaximumFractionDigits()I
    .locals 3

    .prologue
    .line 339
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 3

    .prologue
    .line 343
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 3

    .prologue
    .line 347
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 3

    .prologue
    .line 351
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getMultiplier()I
    .locals 3

    .prologue
    .line 359
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 370
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 377
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 384
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 3

    .prologue
    .line 391
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupingUsed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 403
    iget-wide v1, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v1, v2, v0}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 399
    iget-wide v1, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v1, v2, v0}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 333
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    invoke-static {v0, v1, p1, p2, v2}, Llibcore/icu/NativeDecimalFormat;->parse(JLjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 4
    .param p1, "currency"    # Ljava/util/Currency;

    .prologue
    .line 412
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0x8

    invoke-virtual {p1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Llibcore/icu/NativeDecimalFormat;->setSymbol(JILjava/lang/String;)V

    .line 413
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0x9

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Llibcore/icu/NativeDecimalFormat;->setSymbol(JILjava/lang/String;)V

    .line 414
    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 17
    .param p1, "dfs"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-wide v1, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v16

    invoke-static/range {v1 .. v16}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(JLjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)V

    .line 223
    return-void
.end method

.method public setDecimalFormatSymbols(Llibcore/icu/LocaleData;)V
    .locals 17
    .param p1, "localeData"    # Llibcore/icu/LocaleData;

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-wide v1, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    move-object/from16 v0, p1

    iget-object v3, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v4, v0, Llibcore/icu/LocaleData;->decimalSeparator:C

    const/16 v5, 0x23

    move-object/from16 v0, p1

    iget-object v6, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v7, v0, Llibcore/icu/LocaleData;->groupingSeparator:C

    move-object/from16 v0, p1

    iget-object v8, v0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v10, v0, Llibcore/icu/LocaleData;->minusSign:C

    move-object/from16 v0, p1

    iget-char v11, v0, Llibcore/icu/LocaleData;->monetarySeparator:C

    move-object/from16 v0, p1

    iget-object v12, v0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v13, v0, Llibcore/icu/LocaleData;->patternSeparator:C

    move-object/from16 v0, p1

    iget-char v14, v0, Llibcore/icu/LocaleData;->percent:C

    move-object/from16 v0, p1

    iget-char v15, v0, Llibcore/icu/LocaleData;->perMill:C

    move-object/from16 v0, p1

    iget-char v0, v0, Llibcore/icu/LocaleData;->zeroDigit:C

    move/from16 v16, v0

    invoke-static/range {v1 .. v16}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(JLjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)V

    .line 231
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 407
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 408
    .local v0, "i":I
    :goto_0
    iget-wide v1, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 409
    return-void

    .line 407
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroupingSize(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 417
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0xa

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 418
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 421
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 422
    .local v0, "i":I
    :goto_0
    iget-wide v1, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 423
    return-void

    .line 421
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaximumFractionDigits(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 426
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 427
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 430
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 431
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 434
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 435
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 438
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 439
    return-void
.end method

.method public setMultiplier(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 442
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 444
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Llibcore/icu/NativeDecimalFormat;->multiplierBigDecimal:Ljava/math/BigDecimal;

    .line 445
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 448
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    .line 449
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    if-nez v0, :cond_0

    .line 450
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    .line 452
    :cond_0
    return-void

    .line 448
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 455
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    .line 456
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    if-nez v0, :cond_0

    .line 457
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    .line 459
    :cond_0
    return-void

    .line 455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParseBigDecimal(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    .line 477
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 480
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 481
    .local v0, "i":I
    :goto_0
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, v1, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    .line 482
    return-void

    .end local v0    # "i":I
    :cond_0
    move v0, v1

    .line 480
    goto :goto_0
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 462
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    .line 463
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    if-nez v0, :cond_0

    .line 464
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    .line 466
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 462
    goto :goto_0
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 469
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    .line 470
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    if-nez v0, :cond_0

    .line 471
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v2, v3, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    .line 473
    :cond_0
    return-void

    .line 469
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;D)V
    .locals 3
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;
    .param p2, "roundingIncrement"    # D

    .prologue
    .line 496
    sget-object v1, Llibcore/icu/NativeDecimalFormat$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 504
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 497
    :pswitch_0
    const/4 v0, 0x0

    .line 506
    .local v0, "nativeRoundingMode":I
    :goto_0
    iget-wide v1, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    invoke-static {v1, v2, v0, p2, p3}, Llibcore/icu/NativeDecimalFormat;->setRoundingMode(JID)V

    .line 507
    return-void

    .line 498
    .end local v0    # "nativeRoundingMode":I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 499
    .end local v0    # "nativeRoundingMode":I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 500
    .end local v0    # "nativeRoundingMode":I
    :pswitch_3
    const/4 v0, 0x3

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 501
    .end local v0    # "nativeRoundingMode":I
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 502
    .end local v0    # "nativeRoundingMode":I
    :pswitch_5
    const/4 v0, 0x5

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 503
    .end local v0    # "nativeRoundingMode":I
    :pswitch_6
    const/4 v0, 0x6

    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->toPatternImpl(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->toPatternImpl(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
