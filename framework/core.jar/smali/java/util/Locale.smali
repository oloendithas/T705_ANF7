.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CANADA:Ljava/util/Locale;

.field public static final CANADA_FRENCH:Ljava/util/Locale;

.field public static final CHINA:Ljava/util/Locale;

.field public static final CHINESE:Ljava/util/Locale;

.field public static final ENGLISH:Ljava/util/Locale;

.field public static final FRANCE:Ljava/util/Locale;

.field public static final FRENCH:Ljava/util/Locale;

.field public static final GERMAN:Ljava/util/Locale;

.field public static final GERMANY:Ljava/util/Locale;

.field public static final ITALIAN:Ljava/util/Locale;

.field public static final ITALY:Ljava/util/Locale;

.field public static final JAPAN:Ljava/util/Locale;

.field public static final JAPANESE:Ljava/util/Locale;

.field public static final KOREA:Ljava/util/Locale;

.field public static final KOREAN:Ljava/util/Locale;

.field public static final PRC:Ljava/util/Locale;

.field public static final ROOT:Ljava/util/Locale;

.field public static final SIMPLIFIED_CHINESE:Ljava/util/Locale;

.field public static final TAIWAN:Ljava/util/Locale;

.field public static final TRADITIONAL_CHINESE:Ljava/util/Locale;

.field public static final UK:Ljava/util/Locale;

.field public static final US:Ljava/util/Locale;

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient cachedToStringResult:Ljava/lang/String;

.field private transient countryCode:Ljava/lang/String;

.field private transient languageCode:Ljava/lang/String;

.field private transient variantCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 135
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "CA"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    .line 140
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, "CA"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    .line 145
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 150
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 155
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 160
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, "FR"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 165
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 170
    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 175
    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, "DE"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 180
    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 185
    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, "IT"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 190
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, "JP"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 195
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 200
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, "KR"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 205
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 210
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    .line 218
    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 223
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 228
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "TW"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 233
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "TW"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 238
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "GB"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 243
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "US"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 249
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 252
    const-string v3, "user.language"

    const-string v4, "en"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "language":Ljava/lang/String;
    const-string v3, "user.region"

    const-string v4, "US"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "region":Ljava/lang/String;
    const-string v3, "user.variant"

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "variant":Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 640
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/io/ObjectStreamField;

    const/4 v4, 0x0

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "country"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    new-instance v4, Ljava/io/ObjectStreamField;

    const-string v5, "hashcode"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v4, v3, v8

    const/4 v4, 0x2

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "language"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "variant"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    sput-object v3, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",variant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 302
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 303
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 322
    :goto_0
    return-void

    .line 307
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    const-string v0, "iw"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 318
    :cond_3
    :goto_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    goto :goto_0

    .line 312
    :cond_4
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 313
    const-string v0, "in"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_1

    .line 314
    :cond_5
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "yi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    const-string v0, "ji"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_1
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "unused"    # Z
    .param p2, "lowerCaseLanguageCode"    # Ljava/lang/String;
    .param p3, "upperCaseCountryCode"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 273
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 364
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 658
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "country"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 659
    const-string v1, "language"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 660
    const-string v1, "variant"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 592
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 593
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "locale == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 595
    :cond_0
    :try_start_1
    sput-object p0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    monitor-exit v1

    return-void
.end method

.method private static toNewString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "variantCode"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x5f

    .line 620
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 621
    const-string v1, ""

    .line 637
    :goto_0
    return-object v1

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 628
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 630
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 634
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 649
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "country"

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    const-string v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 651
    const-string v1, "language"

    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    const-string v1, "variant"

    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 654
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 326
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    if-ne p1, p0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v1

    .line 340
    :cond_1
    instance-of v3, p1, Ljava/util/Locale;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 341
    check-cast v0, Ljava/util/Locale;

    .line 342
    .local v0, "o":Ljava/util/Locale;
    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "o":Ljava/util/Locale;
    :cond_3
    move v1, v2

    .line 346
    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 399
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    const-string v0, ""

    .line 406
    :cond_0
    :goto_0
    return-object v0

    .line 402
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 421
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    const-string v1, ""

    .line 437
    :cond_0
    :goto_0
    return-object v1

    .line 428
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "localeString":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v3, "tl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    const-string v2, "fil"

    iget-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Ljava/util/Locale;->toNewString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Llibcore/icu/ICU;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 435
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Llibcore/icu/ICU;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v6, 0x1

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v5, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 466
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "displayLanguage":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .end local v3    # "displayLanguage":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    add-int/lit8 v1, v1, 0x1

    .line 470
    :cond_1
    iget-object v5, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 471
    if-ne v1, v6, :cond_2

    .line 472
    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "displayCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .end local v2    # "displayCountry":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    add-int/lit8 v1, v1, 0x1

    .line 478
    :cond_4
    iget-object v5, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 479
    if-ne v1, v6, :cond_9

    .line 480
    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, "displayVariant":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .end local v4    # "displayVariant":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    add-int/lit8 v1, v1, 0x1

    .line 488
    :cond_7
    if-le v1, v6, :cond_8

    .line 489
    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 481
    :cond_9
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 482
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 509
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 510
    iget-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 516
    :cond_0
    :goto_0
    return-object v0

    .line 512
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 5

    .prologue
    .line 525
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->getISO3CountryNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No 3-letter country code for locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FormatData_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortCountry"

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_0
    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 5

    .prologue
    .line 538
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->getISO3LanguageNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No 3-letter language code for locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FormatData_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortLanguage"

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 542
    :cond_0
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    .prologue
    .line 579
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 611
    iget-object v0, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    .line 612
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 613
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ljava/util/Locale;->toNewString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    .line 615
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
