.class public final Llibcore/icu/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# static fields
.field private static final localeDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llibcore/icu/LocaleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public NaN:Ljava/lang/String;

.field public amPm:[Ljava/lang/String;

.field public currencyPattern:Ljava/lang/String;

.field public currencySymbol:Ljava/lang/String;

.field public decimalSeparator:C

.field public eras:[Ljava/lang/String;

.field public exponentSeparator:Ljava/lang/String;

.field public firstDayOfWeek:Ljava/lang/Integer;

.field public fullDateFormat:Ljava/lang/String;

.field public fullTimeFormat:Ljava/lang/String;

.field public groupingSeparator:C

.field public infinity:Ljava/lang/String;

.field public integerPattern:Ljava/lang/String;

.field public internationalCurrencySymbol:Ljava/lang/String;

.field public longDateFormat:Ljava/lang/String;

.field public longMonthNames:[Ljava/lang/String;

.field public longStandAloneMonthNames:[Ljava/lang/String;

.field public longStandAloneWeekdayNames:[Ljava/lang/String;

.field public longTimeFormat:Ljava/lang/String;

.field public longWeekdayNames:[Ljava/lang/String;

.field public mediumDateFormat:Ljava/lang/String;

.field public mediumTimeFormat:Ljava/lang/String;

.field public minimalDaysInFirstWeek:Ljava/lang/Integer;

.field public minusSign:C

.field public monetarySeparator:C

.field public numberPattern:Ljava/lang/String;

.field public patternSeparator:C

.field public perMill:C

.field public percent:C

.field public percentPattern:Ljava/lang/String;

.field public shortDateFormat:Ljava/lang/String;

.field public shortDateFormat4:Ljava/lang/String;

.field public shortMonthNames:[Ljava/lang/String;

.field public shortStandAloneMonthNames:[Ljava/lang/String;

.field public shortStandAloneWeekdayNames:[Ljava/lang/String;

.field public shortTimeFormat:Ljava/lang/String;

.field public shortWeekdayNames:[Ljava/lang/String;

.field public timeFormat12:Ljava/lang/String;

.field public timeFormat24:Ljava/lang/String;

.field public tinyMonthNames:[Ljava/lang/String;

.field public tinyStandAloneMonthNames:[Ljava/lang/String;

.field public tinyStandAloneWeekdayNames:[Ljava/lang/String;

.field public tinyWeekdayNames:[Ljava/lang/String;

.field public today:Ljava/lang/String;

.field public tomorrow:Ljava/lang/String;

.field public yesterday:Ljava/lang/String;

.field public zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    .line 40
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 41
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static get(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "localeName":Ljava/lang/String;
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 124
    :try_start_0
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/icu/LocaleData;

    .line 125
    .local v0, "localeData":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_1

    .line 126
    monitor-exit v4

    .line 136
    .end local v0    # "localeData":Llibcore/icu/LocaleData;
    :goto_0
    return-object v0

    .line 128
    .restart local v0    # "localeData":Llibcore/icu/LocaleData;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    invoke-static {p0}, Llibcore/icu/LocaleData;->initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 130
    .local v2, "newLocaleData":Llibcore/icu/LocaleData;
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 131
    :try_start_1
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "localeData":Llibcore/icu/LocaleData;
    check-cast v0, Llibcore/icu/LocaleData;

    .line 132
    .restart local v0    # "localeData":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_2

    .line 133
    monitor-exit v4

    goto :goto_0

    .line 137
    .end local v0    # "localeData":Llibcore/icu/LocaleData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 128
    .end local v2    # "newLocaleData":Llibcore/icu/LocaleData;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 135
    .restart local v0    # "localeData":Llibcore/icu/LocaleData;
    .restart local v2    # "newLocaleData":Llibcore/icu/LocaleData;
    :cond_2
    :try_start_3
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method private static initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 173
    new-instance v0, Llibcore/icu/LocaleData;

    invoke-direct {v0}, Llibcore/icu/LocaleData;-><init>()V

    .line 174
    .local v0, "localeData":Llibcore/icu/LocaleData;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/icu/ICU;->initLocaleDataNative(Ljava/lang/String;Llibcore/icu/LocaleData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t initialize LocaleData for locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 179
    :cond_0
    const-string v1, "hm"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    .line 180
    const-string v1, "Hm"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    .line 183
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    const/16 v2, 0x76

    const/16 v3, 0x7a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    .line 191
    :cond_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    const-string v2, "\\.[#,]*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    .line 200
    :cond_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    const-string v2, "\\byy\\b"

    const-string v3, "y"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    .line 201
    return-object v0
.end method


# virtual methods
.method public getDateFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :pswitch_0
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    .line 153
    :goto_0
    return-object v0

    .line 149
    :pswitch_1
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimeFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 169
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 161
    :pswitch_0
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    .line 167
    :goto_0
    return-object v0

    .line 163
    :pswitch_1
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
