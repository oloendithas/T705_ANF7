.class public Ljava/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field ampms:[Ljava/lang/String;

.field transient customZoneStrings:Z

.field eras:[Ljava/lang/String;

.field private localPatternChars:Ljava/lang/String;

.field final transient locale:Ljava/util/Locale;

.field transient localeData:Llibcore/icu/LocaleData;

.field months:[Ljava/lang/String;

.field shortMonths:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field weekdays:[Ljava/lang/String;

.field zoneStrings:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 106
    const-string v0, "GyMdkHmsSEDFwWahKzZLc"

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 109
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 110
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 111
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 112
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 113
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 114
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 115
    return-void
.end method

.method private static clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [[Ljava/lang/String;

    .prologue
    .line 344
    array-length v2, p0

    new-array v1, v2, [[Ljava/lang/String;

    .line 345
    .local v1, "result":[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 346
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v1, v0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-object v1
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Ljava/text/DateFormatSymbols;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 155
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 156
    return-void
.end method

.method private static timeZoneStringsEqual(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/text/DateFormatSymbols;
    .param p1, "rhs"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 205
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 161
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    if-ne p0, p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    instance-of v3, p1, Ljava/text/DateFormatSymbols;

    if-nez v3, :cond_2

    move v1, v2

    .line 189
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 191
    check-cast v0, Ljava/text/DateFormatSymbols;

    .line 192
    .local v0, "rhs":Ljava/text/DateFormatSymbols;
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, v0}, Ljava/text/DateFormatSymbols;->timeZoneStringsEqual(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 322
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/text/DateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "result":[[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v5, v0, v1

    .line 326
    .local v5, "zone":[Ljava/lang/String;
    aget-object v2, v5, v9

    .line 327
    .local v2, "id":Ljava/lang/String;
    aget-object v6, v5, v8

    if-nez v6, :cond_0

    .line 328
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v9, v8, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 330
    :cond_0
    aget-object v6, v5, v10

    if-nez v6, :cond_1

    .line 331
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v9, v9, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 333
    :cond_1
    aget-object v6, v5, v11

    if-nez v6, :cond_2

    .line 334
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v8, v8, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 336
    :cond_2
    aget-object v6, v5, v12

    if-nez v6, :cond_3

    .line 337
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 325
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "zone":[Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 353
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "zoneStrings":[[Ljava/lang/String;
    iget-object v7, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 356
    .local v2, "hashCode":I
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 357
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "element":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 360
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 362
    .end local v1    # "element":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 363
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 362
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 365
    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 366
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 368
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_4

    aget-object v1, v0, v3

    .line 369
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 371
    .end local v1    # "element":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_5

    aget-object v1, v0, v3

    .line 372
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 374
    .end local v1    # "element":Ljava/lang/String;
    :cond_5
    move-object v0, v6

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v5, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_8

    aget-object v1, v0, v3

    .line 375
    .local v1, "element":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_7
    array-length v7, v1

    if-ge v4, v7, :cond_7

    .line 376
    aget-object v7, v1, v4

    if-eqz v7, :cond_6

    .line 377
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 375
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 374
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 381
    .end local v1    # "element":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_8
    return v2
.end method

.method declared-synchronized internalZoneStrings()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 85
    :cond_0
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    iput-object p1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 445
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 7
    .param p1, "zoneStrings"    # [[Ljava/lang/String;

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "zoneStrings == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 482
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 483
    .local v3, "row":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 484
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".length < 5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 482
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v3    # "row":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 488
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/text/DateFormatSymbols;->customZoneStrings:Z

    .line 489
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[amPmStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",customZoneStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/text/DateFormatSymbols;->customZoneStrings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",eras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localPatternChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shortMonths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shortWeekdays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",weekdays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",zoneStrings=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
