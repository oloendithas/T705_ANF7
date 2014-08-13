.class public abstract Ljava/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_STYLES:I = 0x0

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final DATE:I = 0x5

.field public static final DAY_OF_MONTH:I = 0x5

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final DAY_OF_YEAR:I = 0x6

.field public static final DECEMBER:I = 0xb

.field public static final DST_OFFSET:I = 0x10

.field public static final ERA:I = 0x0

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x11

.field private static final FIELD_NAMES:[Ljava/lang/String;

.field public static final FRIDAY:I = 0x6

.field public static final HOUR:I = 0xa

.field public static final HOUR_OF_DAY:I = 0xb

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LONG:I = 0x2

.field public static final MARCH:I = 0x2

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field public static final MINUTE:I = 0xc

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field public static final PM:I = 0x1

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field public static final SEPTEMBER:I = 0x8

.field public static final SHORT:I = 0x1

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEK_OF_MONTH:I = 0x4

.field public static final WEEK_OF_YEAR:I = 0x3

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0xf

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field protected areFieldsSet:Z

.field protected fields:[I

.field private firstDayOfWeek:I

.field protected isSet:[Z

.field protected isTimeSet:Z

.field transient lastDateFieldSet:I

.field transient lastTimeFieldSet:I

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field protected time:J

.field private zone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 693
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ERA"

    aput-object v1, v0, v4

    const-string v1, "YEAR"

    aput-object v1, v0, v5

    const-string v1, "MONTH"

    aput-object v1, v0, v6

    const-string v1, "WEEK_OF_YEAR"

    aput-object v1, v0, v7

    const-string v1, "WEEK_OF_MONTH"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "DAY_OF_MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DAY_OF_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DAY_OF_WEEK"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DAY_OF_WEEK_IN_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AM_PM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HOUR_OF_DAY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MILLISECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ZONE_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DST_OFFSET"

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 1352
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "areFieldsSet"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "fields"

    const-class v3, [I

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "firstDayOfWeek"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "isSet"

    const-class v3, [Z

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "isTimeSet"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "lenient"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimalDaysInFirstWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "nextStamp"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "time"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "zone"

    const-class v4, Ljava/util/TimeZone;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Calendar;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 703
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 704
    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    const/16 v1, 0x11

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->fields:[I

    .line 708
    new-array v0, v1, [Z

    iput-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 710
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 711
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 712
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .param p1, "timezone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 718
    invoke-direct {p0, p1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 719
    invoke-static {p2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 720
    .local v0, "localeData":Llibcore/icu/LocaleData;
    iget-object v1, v0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 721
    iget-object v1, v0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 722
    return-void
.end method

.method private static checkStyle(I)V
    .locals 3
    .param p0, "style"    # I

    .prologue
    .line 1307
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_0
    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    .line 938
    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCalendarLocales()[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;
    .locals 4
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x2

    .line 1288
    if-ltz p1, :cond_0

    const/16 v1, 0x11

    if-lt p1, v1, :cond_1

    .line 1289
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1291
    :cond_1
    invoke-static {p2}, Ljava/util/Calendar;->checkStyle(I)V

    .line 1292
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 1293
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_0

    .line 1303
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1295
    :sswitch_0
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1297
    :sswitch_1
    if-ne p2, v2, :cond_2

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1299
    :sswitch_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1301
    :sswitch_3
    if-ne p2, v2, :cond_3

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1293
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 960
    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 968
    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2
    .param p0, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 976
    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2
    .param p0, "timezone"    # Ljava/util/TimeZone;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 984
    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1342
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_1

    .line 1350
    :cond_0
    return-void

    .line 1345
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1346
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1347
    aget-object v1, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1384
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1385
    .local v0, "readFields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "areFieldsSet"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1386
    const-string v1, "fields"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Ljava/util/Calendar;->fields:[I

    .line 1387
    const-string v1, "firstDayOfWeek"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 1388
    const-string v1, "isSet"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    check-cast v1, [Z

    iput-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    .line 1389
    const-string v1, "isTimeSet"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1390
    const-string v1, "lenient"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    .line 1391
    const-string v1, "minimalDaysInFirstWeek"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 1392
    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 1393
    const-string v1, "zone"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 1394
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1367
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1368
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1369
    .local v0, "putFields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "areFieldsSet"

    iget-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1370
    const-string v1, "fields"

    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1371
    const-string v1, "firstDayOfWeek"

    iget v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1372
    const-string v1, "isSet"

    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1373
    const-string v1, "isTimeSet"

    iget-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1374
    const-string v1, "lenient"

    iget-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1375
    const-string v1, "minimalDaysInFirstWeek"

    iget v2, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1376
    const-string v1, "nextStamp"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1377
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1378
    const-string v1, "time"

    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 1379
    const-string v1, "zone"

    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1380
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1381
    return-void
.end method


# virtual methods
.method public abstract add(II)V
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "calendar"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 751
    instance-of v1, p1, Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 754
    .end local p1    # "calendar":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "calendar":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "calendar":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "calendar"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 770
    instance-of v1, p1, Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 773
    .end local p1    # "calendar":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "calendar":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "calendar":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 783
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    aput v2, v1, v0

    .line 784
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 786
    :cond_0
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 787
    return-void
.end method

.method public final clear(I)V
    .locals 2
    .param p1, "field"    # I

    .prologue
    const/4 v1, 0x0

    .line 795
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v0, p1

    .line 796
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v0, p1

    .line 797
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 798
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 806
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 807
    .local v0, "clone":Ljava/util/Calendar;
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Ljava/util/Calendar;->fields:[I

    .line 808
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    iput-object v2, v0, Ljava/util/Calendar;->isSet:[Z

    .line 809
    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;

    iput-object v2, v0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    return-object v0

    .line 811
    .end local v0    # "clone":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 289
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Calendar;)I
    .locals 6
    .param p1, "anotherCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 1247
    if-nez p1, :cond_0

    .line 1248
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "anotherCalendar == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1250
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1251
    .local v2, "timeInMillis":J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1252
    .local v0, "anotherTimeInMillis":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 1253
    const/4 v4, 0x1

    .line 1258
    :goto_0
    return v4

    .line 1255
    :cond_1
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 1256
    const/4 v4, 0x0

    goto :goto_0

    .line 1258
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method protected complete()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 825
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    .line 826
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 827
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 829
    :cond_0
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-nez v0, :cond_1

    .line 830
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 831
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 833
    :cond_1
    return-void
.end method

.method protected abstract computeFields()V
.end method

.method protected abstract computeTime()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 859
    if-ne p0, p1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v1

    .line 862
    :cond_1
    instance-of v3, p1, Ljava/util/Calendar;

    if-nez v3, :cond_2

    move v1, v2

    .line 863
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 865
    check-cast v0, Ljava/util/Calendar;

    .line 866
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 885
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 886
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getActualMaximum(I)I
    .locals 5
    .param p1, "field"    # I

    .prologue
    .line 895
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    .local v0, "next":I
    if-ne v4, v0, :cond_0

    move v3, v0

    .line 908
    :goto_0
    return v3

    .line 898
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 899
    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 900
    .local v1, "orgTime":J
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 902
    :cond_1
    move v3, v0

    .line 903
    .local v3, "value":I
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->roll(IZ)V

    .line 904
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 905
    if-gt v0, v3, :cond_1

    .line 906
    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 907
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_0
.end method

.method public getActualMinimum(I)I
    .locals 6
    .param p1, "field"    # I

    .prologue
    const/4 v5, 0x0

    .line 916
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    .local v0, "next":I
    if-ne v4, v0, :cond_0

    move v3, v0

    .line 929
    :goto_0
    return v3

    .line 919
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 920
    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 921
    .local v1, "orgTime":J
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 923
    :cond_1
    move v3, v0

    .line 924
    .local v3, "value":I
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->roll(IZ)V

    .line 925
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 926
    if-lt v0, v3, :cond_1

    .line 927
    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 928
    iput-boolean v5, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_0
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1279
    if-nez p2, :cond_0

    .line 1280
    const/4 p2, 0x1

    .line 1282
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1284
    .local v1, "value":I
    if-eqz v0, :cond_1

    aget-object v2, v0, v1

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .locals 3
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1329
    invoke-static {p2}, Ljava/util/Calendar;->checkStyle(I)V

    .line 1330
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1332
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    .line 1333
    :cond_0
    invoke-direct {p0, p1, v1, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    .line 1335
    :cond_1
    if-eq p2, v2, :cond_2

    if-nez p2, :cond_3

    .line 1336
    :cond_2
    invoke-direct {p0, p1, v2, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    .line 1338
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public abstract getGreatestMinimum(I)I
.end method

.method public abstract getLeastMaximum(I)I
.end method

.method public abstract getMaximum(I)I
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    .prologue
    .line 1004
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public abstract getMinimum(I)I
.end method

.method public final getTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 1021
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 1033
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 1035
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1037
    :cond_0
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1049
    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d5

    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4cf

    goto :goto_0
.end method

.method protected final internalGet(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 1057
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 1065
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    return v0
.end method

.method public final isSet(I)Z
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public roll(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 1091
    if-ltz p2, :cond_0

    const/4 v2, 0x1

    .line 1092
    .local v2, "increment":Z
    :goto_0
    if-eqz v2, :cond_1

    move v0, p2

    .line 1093
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 1094
    invoke-virtual {p0, p1, v2}, Ljava/util/Calendar;->roll(IZ)V

    .line 1093
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1091
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "increment":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1092
    .restart local v2    # "increment":Z
    :cond_1
    neg-int v0, p2

    goto :goto_1

    .line 1096
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public abstract roll(IZ)V
.end method

.method public set(II)V
    .locals 4
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x9

    .line 1110
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 1111
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1113
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    if-ge p1, v2, :cond_0

    .line 1114
    iput p1, p0, Ljava/util/Calendar;->lastDateFieldSet:I

    .line 1116
    :cond_0
    if-eq p1, v3, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 1117
    :cond_1
    iput p1, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    .line 1119
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1120
    iput v3, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    .line 1122
    :cond_3
    return-void
.end method

.method public final set(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 1130
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1131
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1132
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1133
    return-void
.end method

.method public final set(IIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    .line 1141
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 1142
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 1143
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    .line 1144
    return-void
.end method

.method public final set(IIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    .line 1152
    invoke-virtual/range {p0 .. p5}, Ljava/util/Calendar;->set(IIIII)V

    .line 1153
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    .line 1154
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1161
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 1162
    return-void
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1169
    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    .line 1170
    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1176
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 1177
    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1183
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1184
    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 2
    .param p1, "milliseconds"    # J

    .prologue
    .line 1191
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 1192
    :cond_0
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1194
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1195
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1197
    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 1203
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 1204
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v2, :cond_0

    iget-wide v4, p0, Ljava/util/Calendar;->time:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",areFieldsSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",lenient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",zone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",firstDayOfWeek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",minimalDaysInFirstWeek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x11

    if-ge v0, v2, :cond_2

    .line 1220
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1221
    sget-object v2, Ljava/util/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1223
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 1224
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1219
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1212
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/lang/StringBuilder;
    :cond_0
    const-string v2, "?"

    goto :goto_0

    .line 1226
    .restart local v0    # "i":I
    .restart local v1    # "result":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1229
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
