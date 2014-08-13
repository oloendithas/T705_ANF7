.class public final Llibcore/icu/ICU;
.super Ljava/lang/Object;
.source "ICU.java"


# static fields
.field private static final CACHED_PATTERNS:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final U_BUFFER_OVERFLOW_ERROR:I = 0xf

.field public static final U_ILLEGAL_CHAR_FOUND:I = 0xc

.field public static final U_INVALID_CHAR_FOUND:I = 0xa

.field public static final U_TRUNCATED_CHAR_FOUND:I = 0xb

.field public static final U_ZERO_ERROR:I

.field private static availableLocalesCache:[Ljava/util/Locale;

.field private static isoCountries:[Ljava/lang/String;

.field private static isoLanguages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    sput-object v0, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static U_FAILURE(I)Z
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 223
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getAvailableBreakIteratorLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Llibcore/icu/ICU;->getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCalendarLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCalendarLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableCalendarLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCollatorLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableCollatorLocalesNative()[Ljava/lang/String;
.end method

.method public static native getAvailableCurrencyCodes()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableDateFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableDecimalFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    .line 107
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method private static native getAvailableLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableNumberFormatLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableNumberFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    monitor-enter v3

    .line 141
    :try_start_0
    sget-object v2, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    invoke-virtual {v2, v0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "pattern":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 143
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    sget-object v2, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    invoke-virtual {v2, v0, v1}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    monitor-exit v3

    return-object v1

    .line 147
    .end local v1    # "pattern":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCldrVersion()Ljava/lang/String;
.end method

.method public static native getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCurrencyDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCurrencyFractionDigits(Ljava/lang/String;)I
.end method

.method public static native getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDateFormatOrder(Ljava/lang/String;)[C
    .locals 14
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x4c

    const/16 v12, 0x79

    const/16 v11, 0x64

    const/16 v10, 0x4d

    const/16 v9, 0x27

    .line 153
    const/4 v8, 0x3

    new-array v2, v8, [C

    .line 154
    .local v2, "result":[C
    const/4 v3, 0x0

    .line 155
    .local v3, "resultIndex":I
    const/4 v5, 0x0

    .line 156
    .local v5, "sawDay":Z
    const/4 v6, 0x0

    .line 157
    .local v6, "sawMonth":Z
    const/4 v7, 0x0

    .line 159
    .local v7, "sawYear":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_b

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 161
    .local v0, "ch":C
    if-eq v0, v11, :cond_0

    if-eq v0, v13, :cond_0

    if-eq v0, v10, :cond_0

    if-ne v0, v12, :cond_5

    .line 162
    :cond_0
    if-ne v0, v11, :cond_2

    if-nez v5, :cond_2

    .line 163
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "resultIndex":I
    .local v4, "resultIndex":I
    aput-char v11, v2, v3

    .line 164
    const/4 v5, 0x1

    move v3, v4

    .line 159
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_2
    if-eq v0, v13, :cond_3

    if-ne v0, v10, :cond_4

    :cond_3
    if-nez v6, :cond_4

    .line 166
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    aput-char v10, v2, v3

    .line 167
    const/4 v6, 0x1

    move v3, v4

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    .line 168
    :cond_4
    if-ne v0, v12, :cond_1

    if-nez v7, :cond_1

    .line 169
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    aput-char v12, v2, v3

    .line 170
    const/4 v7, 0x1

    move v3, v4

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    .line 172
    :cond_5
    const/16 v8, 0x47

    if-eq v0, v8, :cond_1

    .line 174
    const/16 v8, 0x61

    if-lt v0, v8, :cond_6

    const/16 v8, 0x7a

    if-le v0, v8, :cond_7

    :cond_6
    const/16 v8, 0x41

    if-lt v0, v8, :cond_8

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_8

    .line 175
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad pattern character \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 176
    :cond_8
    if-ne v0, v9, :cond_1

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_9

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_9
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 181
    const/4 v8, -0x1

    if-ne v1, v8, :cond_a

    .line 182
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad quoting in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 184
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 190
    .end local v0    # "ch":C
    :cond_b
    return-object v2
.end method

.method public static native getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3CountryNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3LanguageNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Llibcore/icu/ICU;->getISOCountriesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    .line 53
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOCountriesNative()[Ljava/lang/String;
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguagesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    .line 43
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOLanguagesNative()[Ljava/lang/String;
.end method

.method public static native getIcuVersion()Ljava/lang/String;
.end method

.method public static native getScript(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getUnicodeVersion()Ljava/lang/String;
.end method

.method static native initLocaleDataNative(Ljava/lang/String;Llibcore/icu/LocaleData;)Z
.end method

.method public static localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 9
    .param p0, "localeName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x5f

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 63
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 64
    .local v1, "first":I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 65
    .local v3, "second":I
    if-ne v1, v6, :cond_0

    .line 67
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-object v5

    .line 68
    :cond_0
    if-ne v3, v6, :cond_1

    .line 70
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "language":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "country":Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 76
    .restart local v2    # "language":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "country":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "variant":Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;
    .locals 6
    .param p0, "localeNames"    # [Ljava/lang/String;

    .prologue
    .line 86
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 87
    .local v4, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/util/Locale;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 88
    .local v3, "localeName":Ljava/lang/String;
    invoke-static {v3}, Llibcore/icu/ICU;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v5, "zh_Hans_CN"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const-string v5, "zh_CN"

    invoke-static {v5}, Llibcore/icu/ICU;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    const-string v5, "zh_Hant_HK"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    const-string v5, "zh_HK"

    invoke-static {v5}, Llibcore/icu/ICU;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    const-string v5, "zh_Hant_TW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    const-string v5, "zh_TW"

    invoke-static {v5}, Llibcore/icu/ICU;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "localeName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/Locale;

    return-object v5
.end method

.method public static native toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
