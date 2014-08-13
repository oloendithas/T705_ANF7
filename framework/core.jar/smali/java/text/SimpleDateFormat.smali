.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final PATTERN_CHARS:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZLc"

.field private static final RFC_822_TIMEZONE_FIELD:I = 0x12

.field private static final STAND_ALONE_DAY_OF_WEEK_FIELD:I = 0x14

.field private static final STAND_ALONE_MONTH_FIELD:I = 0x13

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Ljava/text/DateFormatSymbols;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1324
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "defaultCenturyStart"

    const-class v4, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formatData"

    const-class v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/SimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 230
    invoke-static {}, Ljava/text/SimpleDateFormat;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 335
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 336
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 337
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 355
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 356
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 357
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 358
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 359
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    .line 361
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 362
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 363
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 364
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 365
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 366
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 367
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 368
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 369
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V
    .locals 10
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "position"    # Ljava/text/FieldPosition;
    .param p4, "format"    # C
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v2, -0x1

    .line 569
    .local v2, "field":I
    const-string v7, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v7, p4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 570
    .local v4, "index":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 571
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 574
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 575
    .local v0, "beginPosition":I
    const/4 v1, 0x0

    .line 576
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    packed-switch v4, :pswitch_data_0

    .line 675
    :goto_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 676
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 679
    :cond_1
    if-eqz p3, :cond_6

    .line 680
    new-instance p2, Ljava/text/FieldPosition;

    .end local p2    # "position":Ljava/text/FieldPosition;
    invoke-direct {p2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 681
    .restart local p2    # "position":Ljava/text/FieldPosition;
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 682
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 683
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_2
    :goto_1
    return-void

    .line 578
    :pswitch_0
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 579
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 582
    :pswitch_1
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 583
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 589
    .local v6, "year":I
    const/4 v7, 0x2

    if-ne p5, v7, :cond_3

    .line 590
    const/4 v7, 0x2

    rem-int/lit8 v8, v6, 0x64

    invoke-direct {p0, p1, v7, v8}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 592
    :cond_3
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 596
    .end local v6    # "year":I
    :pswitch_2
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 597
    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;IZ)V

    goto :goto_0

    .line 600
    :pswitch_3
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 601
    const/4 v7, 0x0

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;IZ)V

    goto :goto_0

    .line 604
    :pswitch_4
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 605
    const/4 v2, 0x5

    .line 606
    goto :goto_0

    .line 608
    :pswitch_5
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 609
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 610
    .local v3, "hour":I
    if-nez v3, :cond_4

    const/16 v3, 0x18

    .end local v3    # "hour":I
    :cond_4
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 613
    :pswitch_6
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 614
    const/16 v2, 0xb

    .line 615
    goto :goto_0

    .line 617
    :pswitch_7
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 618
    const/16 v2, 0xc

    .line 619
    goto :goto_0

    .line 621
    :pswitch_8
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 622
    const/16 v2, 0xd

    .line 623
    goto :goto_0

    .line 625
    :pswitch_9
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 626
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 627
    .local v5, "value":I
    invoke-direct {p0, p1, p5, v5}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    .line 630
    .end local v5    # "value":I
    :pswitch_a
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 631
    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    .line 634
    :pswitch_b
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 635
    const/4 v7, 0x0

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    .line 638
    :pswitch_c
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 639
    const/4 v2, 0x6

    .line 640
    goto/16 :goto_0

    .line 642
    :pswitch_d
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 643
    const/16 v2, 0x8

    .line 644
    goto/16 :goto_0

    .line 646
    :pswitch_e
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 647
    const/4 v2, 0x3

    .line 648
    goto/16 :goto_0

    .line 650
    :pswitch_f
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 651
    const/4 v2, 0x4

    .line 652
    goto/16 :goto_0

    .line 654
    :pswitch_10
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 655
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 658
    :pswitch_11
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 659
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 660
    .restart local v3    # "hour":I
    if-nez v3, :cond_5

    const/16 v3, 0xc

    .end local v3    # "hour":I
    :cond_5
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    .line 663
    :pswitch_12
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 664
    const/16 v2, 0xa

    .line 665
    goto/16 :goto_0

    .line 667
    :pswitch_13
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 668
    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    .line 671
    :pswitch_14
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 672
    const/4 v7, 0x0

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    .line 686
    :cond_6
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-eq v7, v1, :cond_7

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getField()I

    move-result v7

    if-ne v7, v4, :cond_2

    :cond_7
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    if-nez v7, :cond_2

    .line 689
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 690
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_1

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "standAlone"    # Z

    .prologue
    .line 698
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v1, v2, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 699
    .local v1, "ld":Llibcore/icu/LocaleData;
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 700
    if-eqz p3, :cond_0

    iget-object v0, v1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    .line 706
    .local v0, "days":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    return-void

    .line 700
    .end local v0    # "days":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_0

    .line 701
    :cond_1
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    .line 702
    if-eqz p3, :cond_2

    iget-object v0, v1, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    .restart local v0    # "days":[Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v0    # "days":[Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v2, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v2, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    goto :goto_1

    .line 704
    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, v1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    .restart local v0    # "days":[Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v0    # "days":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_2
.end method

.method private appendMonth(Ljava/lang/StringBuffer;IZ)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "standAlone"    # Z

    .prologue
    const/4 v4, 0x2

    .line 711
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 712
    .local v1, "month":I
    if-gt p2, v4, :cond_0

    .line 713
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 727
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v3, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 719
    .local v0, "ld":Llibcore/icu/LocaleData;
    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 720
    if-eqz p3, :cond_1

    iget-object v2, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    .line 726
    .local v2, "months":[Ljava/lang/String;
    :goto_1
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 720
    .end local v2    # "months":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v3, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_1

    .line 721
    :cond_2
    const/4 v3, 0x5

    if-ne p2, v3, :cond_4

    .line 722
    if-eqz p3, :cond_3

    iget-object v2, v0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    .restart local v2    # "months":[Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v2    # "months":[Ljava/lang/String;
    :cond_3
    iget-object v2, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    goto :goto_2

    .line 724
    :cond_4
    if-eqz p3, :cond_5

    iget-object v2, v0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    .restart local v2    # "months":[Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v2    # "months":[Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v3, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_3
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "value"    # I

    .prologue
    .line 783
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v0

    .line 784
    .local v0, "minimumIntegerDigits":I
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 785
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 786
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 787
    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V
    .locals 8
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "generalTimeZone"    # Z

    .prologue
    const v7, 0x36ee80

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 762
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v0, v2, v3

    .line 763
    .local v0, "offset":I
    const/16 v1, 0x2b

    .line 764
    .local v1, "sign":C
    if-gez v0, :cond_0

    .line 765
    const/16 v1, 0x2d

    .line 766
    neg-int v0, v0

    .line 768
    :cond_0
    if-nez p3, :cond_1

    if-ne p2, v6, :cond_2

    .line 769
    :cond_1
    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 771
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 772
    div-int v2, v0, v7

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 773
    if-nez p3, :cond_3

    if-lt p2, v6, :cond_4

    .line 774
    :cond_3
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 776
    :cond_4
    rem-int v2, v0, v7

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 777
    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "generalTimeZone"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 739
    if-eqz p3, :cond_3

    .line 740
    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 741
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 742
    .local v1, "daylight":Z
    :goto_0
    const/4 v5, 0x4

    if-ge p2, v5, :cond_1

    .line 743
    .local v2, "style":I
    :goto_1
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v4, v4, Ljava/text/DateFormatSymbols;->customZoneStrings:Z

    if-nez v4, :cond_2

    .line 744
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    .end local v1    # "daylight":Z
    .end local v2    # "style":I
    .end local v3    # "tz":Ljava/util/TimeZone;
    :goto_2
    return-void

    .restart local v3    # "tz":Ljava/util/TimeZone;
    :cond_0
    move v1, v2

    .line 741
    goto :goto_0

    .restart local v1    # "daylight":Z
    :cond_1
    move v2, v4

    .line 742
    goto :goto_1

    .line 749
    .restart local v2    # "style":I
    :cond_2
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "custom":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 751
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 756
    .end local v0    # "custom":Ljava/lang/String;
    .end local v1    # "daylight":Z
    .end local v2    # "style":I
    .end local v3    # "tz":Ljava/util/TimeZone;
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto :goto_2
.end method

.method private static convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "fromChars"    # Ljava/lang/String;
    .param p2, "toChars"    # Ljava/lang/String;
    .param p3, "check"    # Z

    .prologue
    .line 1288
    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1311
    .end local p0    # "template":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1291
    .restart local p0    # "template":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 1292
    .local v5, "quote":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1293
    .local v4, "output":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1294
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_7

    .line 1296
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1297
    .local v3, "next":C
    const/16 v6, 0x27

    if-ne v3, v6, :cond_1

    .line 1298
    if-nez v5, :cond_2

    const/4 v5, 0x1

    .line 1300
    :cond_1
    :goto_2
    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    .line 1301
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1294
    .end local v1    # "index":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1298
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1302
    :cond_3
    if-eqz p3, :cond_6

    if-nez v5, :cond_6

    const/16 v6, 0x61

    if-lt v3, v6, :cond_4

    const/16 v6, 0x7a

    if-le v3, v6, :cond_5

    :cond_4
    const/16 v6, 0x41

    if-lt v3, v6, :cond_6

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_6

    .line 1303
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1305
    :cond_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1308
    .end local v3    # "next":C
    :cond_7
    if-eqz v5, :cond_8

    .line 1309
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1311
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static defaultPattern()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 411
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 412
    .local v0, "localeData":Llibcore/icu/LocaleData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .param p1, "position"    # Ljava/text/ParsePosition;
    .param p2, "offset"    # I
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 790
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 791
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 11
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 516
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v10, 0x0

    .line 517
    .local v10, "quote":Z
    const/4 v7, -0x1

    .local v7, "last":I
    const/4 v5, 0x0

    .line 518
    .local v5, "count":I
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 519
    if-eqz p3, :cond_0

    .line 520
    invoke-virtual {p3}, Ljava/text/FieldPosition;->clear()V

    .line 523
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 524
    .local v9, "patternLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_b

    .line 525
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 526
    .local v8, "next":I
    const/16 v0, 0x27

    if-ne v8, v0, :cond_4

    .line 527
    if-lez v5, :cond_1

    .line 528
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 529
    const/4 v5, 0x0

    .line 531
    :cond_1
    if-ne v7, v8, :cond_2

    .line 532
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 533
    const/4 v7, -0x1

    .line 537
    :goto_1
    if-nez v10, :cond_3

    const/4 v10, 0x1

    .line 524
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 535
    :cond_2
    move v7, v8

    goto :goto_1

    .line 537
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 540
    :cond_4
    if-nez v10, :cond_9

    if-eq v7, v8, :cond_6

    const/16 v0, 0x61

    if-lt v8, v0, :cond_5

    const/16 v0, 0x7a

    if-le v8, v0, :cond_6

    :cond_5
    const/16 v0, 0x41

    if-lt v8, v0, :cond_9

    const/16 v0, 0x5a

    if-gt v8, v0, :cond_9

    .line 542
    :cond_6
    if-ne v7, v8, :cond_7

    .line 543
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 545
    :cond_7
    if-lez v5, :cond_8

    .line 546
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 548
    :cond_8
    move v7, v8

    .line 549
    const/4 v5, 0x1

    goto :goto_2

    .line 552
    :cond_9
    if-lez v5, :cond_a

    .line 553
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 554
    const/4 v5, 0x0

    .line 556
    :cond_a
    const/4 v7, -0x1

    .line 557
    int-to-char v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 560
    .end local v8    # "next":I
    :cond_b
    if-lez v5, :cond_c

    .line 561
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 563
    :cond_c
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 470
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 471
    .local v2, "buffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v3, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/FieldPosition;>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6, v3}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 477
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    .line 481
    .local v5, "pos":Ljava/text/FieldPosition;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    .line 482
    .local v1, "attribute":Ljava/text/Format$Field;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 486
    .end local v1    # "attribute":Ljava/text/Format$Field;
    .end local v5    # "pos":Ljava/text/FieldPosition;
    :cond_0
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    return-object v6
.end method

.method private parse(Ljava/lang/String;ICI)I
    .locals 17
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "format"    # C
    .param p4, "count"    # I

    .prologue
    .line 844
    const-string v3, "GyMdkHmsSEDFwWahKzZLc"

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 845
    .local v13, "index":I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_0

    .line 846
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 848
    :cond_0
    const/4 v10, -0x1

    .line 850
    .local v10, "field":I
    const/4 v7, 0x0

    .line 851
    .local v7, "absolute":I
    if-gez p4, :cond_1

    .line 852
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 p4, v0

    .line 853
    move/from16 v7, p4

    .line 855
    :cond_1
    packed-switch v13, :pswitch_data_0

    .line 948
    :goto_0
    const/4 v3, -0x1

    if-eq v10, v3, :cond_2

    .line 949
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v6 .. v11}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result p2

    .line 951
    .end local p2    # "offset":I
    :cond_2
    :goto_1
    return p2

    .line 857
    .restart local p2    # "offset":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    .line 859
    :pswitch_1
    const/4 v3, 0x3

    move/from16 v0, p4

    if-lt v0, v3, :cond_3

    .line 860
    const/4 v10, 0x1

    goto :goto_0

    .line 862
    :cond_3
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 863
    .local v14, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 864
    .local v15, "result":Ljava/lang/Number;
    if-nez v15, :cond_4

    .line 865
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto :goto_1

    .line 867
    :cond_4
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 869
    .local v16, "year":I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    if-ltz v16, :cond_5

    .line 870
    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x64

    add-int v16, v16, v3

    .line 871
    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 872
    add-int/lit8 v16, v16, 0x64

    .line 875
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 876
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_1

    .line 880
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    .end local v16    # "year":I
    :pswitch_2
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIZ)I

    move-result p2

    goto :goto_1

    .line 882
    :pswitch_3
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIZ)I

    move-result p2

    goto :goto_1

    .line 884
    :pswitch_4
    const/4 v10, 0x5

    .line 885
    goto/16 :goto_0

    .line 887
    :pswitch_5
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 888
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 889
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_6

    .line 890
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_1

    .line 892
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 893
    .local v12, "hour":I
    const/16 v3, 0x18

    if-ne v12, v3, :cond_7

    .line 894
    const/4 v12, 0x0

    .line 896
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 897
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_1

    .line 899
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_6
    const/16 v10, 0xb

    .line 900
    goto/16 :goto_0

    .line 902
    :pswitch_7
    const/16 v10, 0xc

    .line 903
    goto/16 :goto_0

    .line 905
    :pswitch_8
    const/16 v10, 0xd

    .line 906
    goto/16 :goto_0

    .line 908
    :pswitch_9
    const/16 v10, 0xe

    .line 909
    goto/16 :goto_0

    .line 911
    :pswitch_a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;IZ)I

    move-result p2

    goto/16 :goto_1

    .line 913
    :pswitch_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;IZ)I

    move-result p2

    goto/16 :goto_1

    .line 915
    :pswitch_c
    const/4 v10, 0x6

    .line 916
    goto/16 :goto_0

    .line 918
    :pswitch_d
    const/16 v10, 0x8

    .line 919
    goto/16 :goto_0

    .line 921
    :pswitch_e
    const/4 v10, 0x3

    .line 922
    goto/16 :goto_0

    .line 924
    :pswitch_f
    const/4 v10, 0x4

    .line 925
    goto/16 :goto_0

    .line 927
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    .line 929
    :pswitch_11
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 930
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 931
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_8

    .line 932
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_1

    .line 934
    :cond_8
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 935
    .restart local v12    # "hour":I
    const/16 v3, 0xc

    if-ne v12, v3, :cond_9

    .line 936
    const/4 v12, 0x0

    .line 938
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 939
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_1

    .line 941
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_12
    const/16 v10, 0xa

    .line 942
    goto/16 :goto_0

    .line 944
    :pswitch_13
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    .line 946
    :pswitch_14
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private parseDayOfWeek(Ljava/lang/String;IZ)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "standAlone"    # Z

    .prologue
    const/4 v3, 0x7

    .line 955
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v1, v2, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 956
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz p3, :cond_1

    iget-object v2, v1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1, p2, v2, v3}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 959
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 960
    if-eqz p3, :cond_2

    iget-object v2, v1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    :goto_1
    invoke-direct {p0, p1, p2, v2, v3}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 964
    :cond_0
    return v0

    .line 956
    .end local v0    # "index":I
    :cond_1
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_0

    .line 960
    .restart local v0    # "index":I
    :cond_2
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_1
.end method

.method private parseMonth(Ljava/lang/String;IIIZ)I
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "absolute"    # I
    .param p5, "standAlone"    # Z

    .prologue
    const/4 v4, 0x2

    .line 968
    if-gt p3, v4, :cond_1

    .line 969
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v6

    .line 980
    :cond_0
    :goto_0
    return v6

    .line 971
    :cond_1
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 972
    .local v7, "ld":Llibcore/icu/LocaleData;
    if-eqz p5, :cond_2

    iget-object v0, v7, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    :goto_1
    invoke-direct {p0, p1, p2, v0, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    .line 975
    .local v6, "index":I
    if-gez v6, :cond_0

    .line 976
    if-eqz p5, :cond_3

    iget-object v0, v7, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    :goto_2
    invoke-direct {p0, p1, p2, v0, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    goto :goto_0

    .line 972
    .end local v6    # "index":I
    :cond_2
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_1

    .line 976
    .restart local v6    # "index":I
    :cond_3
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_2
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "field"    # I
    .param p5, "skew"    # I

    .prologue
    .line 1124
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1125
    .local v0, "position":Ljava/text/ParsePosition;
    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 1126
    .local v1, "result":Ljava/lang/Number;
    if-nez v1, :cond_0

    .line 1127
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 1130
    :goto_0
    return v2

    .line 1129
    :cond_0
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1130
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    goto :goto_0
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 12
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1078
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1079
    .local v4, "length":I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 1080
    .local v2, "index":I
    if-lez p1, :cond_0

    sub-int v8, v4, v2

    if-ge p1, v8, :cond_0

    .line 1081
    add-int v4, v2, p1

    .line 1083
    :cond_0
    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_2

    .line 1084
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1086
    :cond_2
    if-nez p1, :cond_4

    .line 1087
    invoke-virtual {p3, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1088
    iget-object v8, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v8, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v6

    .line 1095
    .local v6, "n":Ljava/lang/Number;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 1096
    iget-object v8, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    instance-of v8, v8, Ljava/text/DecimalFormat;

    if-eqz v8, :cond_3

    .line 1097
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    .line 1098
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1099
    .local v3, "lastChar":C
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v5

    .line 1100
    .local v5, "minusSign":C
    if-ne v3, v5, :cond_3

    .line 1101
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1102
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1120
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v3    # "lastChar":C
    .end local v5    # "minusSign":C
    .end local v6    # "n":Ljava/lang/Number;
    :cond_3
    :goto_1
    return-object v6

    .line 1109
    :cond_4
    const/4 v7, 0x0

    .line 1111
    .local v7, "result":I
    :goto_2
    if-ge v2, v4, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .local v1, "digit":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_5

    .line 1112
    mul-int/lit8 v8, v7, 0xa

    add-int v7, v8, v1

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1115
    .end local v1    # "digit":I
    :cond_5
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-ne v2, v8, :cond_6

    .line 1116
    invoke-virtual {p3, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1117
    const/4 v6, 0x0

    goto :goto_1

    .line 1119
    :cond_6
    invoke-virtual {p3, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .locals 16
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "field"    # I

    .prologue
    .line 1135
    const/4 v13, -0x1

    .line 1136
    .local v13, "bestIndex":I
    const/4 v14, -0x1

    .line 1137
    .local v14, "bestLength":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v15, v1, :cond_5

    .line 1138
    aget-object v4, p3, v15

    .line 1139
    .local v4, "option":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 1140
    .local v6, "optionLength":I
    if-nez v6, :cond_1

    .line 1137
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1143
    :cond_1
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1144
    const/4 v1, -0x1

    if-eq v13, v1, :cond_2

    if-le v6, v14, :cond_0

    .line 1145
    :cond_2
    move v13, v15

    .line 1146
    move v14, v6

    goto :goto_1

    .line 1148
    :cond_3
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    .line 1151
    const/4 v8, 0x1

    const/4 v11, 0x0

    add-int/lit8 v12, v6, -0x1

    move-object/from16 v7, p1

    move/from16 v9, p2

    move-object v10, v4

    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    const/4 v1, -0x1

    if-eq v13, v1, :cond_4

    add-int/lit8 v1, v6, -0x1

    if-le v1, v14, :cond_0

    .line 1153
    :cond_4
    move v13, v15

    .line 1154
    add-int/lit8 v14, v6, -0x1

    goto :goto_1

    .line 1159
    .end local v4    # "option":Ljava/lang/String;
    .end local v6    # "optionLength":I
    :cond_5
    const/4 v1, -0x1

    if-eq v13, v1, :cond_6

    .line 1160
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, p4

    invoke-virtual {v1, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 1161
    add-int v1, p2, v14

    .line 1163
    :goto_2
    return v1

    :cond_6
    move/from16 v0, p2

    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .locals 23
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 1167
    const-string v2, "GMT"

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    .line 1168
    .local v10, "foundGMT":Z
    if-eqz v10, :cond_0

    .line 1169
    add-int/lit8 p2, p2, 0x3

    .line 1172
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .local v21, "sign":C
    const/16 v2, 0x2b

    move/from16 v0, v21

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2d

    move/from16 v0, v21

    if-ne v0, v2, :cond_7

    .line 1173
    :cond_1
    new-instance v17, Ljava/text/ParsePosition;

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1174
    .local v17, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1175
    .local v19, "result":Ljava/lang/Number;
    if-nez v19, :cond_2

    .line 1176
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    .line 1235
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v19    # "result":Ljava/lang/Number;
    .end local v21    # "sign":C
    .end local p2    # "offset":I
    :goto_0
    return p2

    .line 1178
    .restart local v17    # "position":Ljava/text/ParsePosition;
    .restart local v19    # "result":Ljava/lang/Number;
    .restart local v21    # "sign":C
    .restart local p2    # "offset":I
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 1179
    .local v11, "hour":I
    const v2, 0x36ee80

    mul-int v18, v11, v2

    .line 1180
    .local v18, "raw":I
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v14

    .line 1181
    .local v14, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v14, v2, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_6

    .line 1182
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1184
    if-nez v19, :cond_3

    .line 1185
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    goto :goto_0

    .line 1187
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 1188
    .local v16, "minute":I
    const v2, 0xea60

    mul-int v2, v2, v16

    add-int v18, v18, v2

    .line 1192
    .end local v16    # "minute":I
    :cond_4
    :goto_1
    const/16 v2, 0x2d

    move/from16 v0, v21

    if-ne v0, v2, :cond_5

    .line 1193
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1195
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1196
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_0

    .line 1189
    :cond_6
    const/16 v2, 0x18

    if-lt v11, v2, :cond_4

    .line 1190
    div-int/lit8 v2, v11, 0x64

    const v3, 0x36ee80

    mul-int/2addr v2, v3

    rem-int/lit8 v3, v11, 0x64

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int v18, v2, v3

    goto :goto_1

    .line 1198
    .end local v11    # "hour":I
    .end local v14    # "index":I
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v18    # "raw":I
    .end local v19    # "result":Ljava/lang/Number;
    .end local v21    # "sign":C
    :cond_7
    if-eqz v10, :cond_8

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 1202
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v8

    .local v8, "arr$":[[Ljava/lang/String;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    if-ge v13, v15, :cond_10

    aget-object v20, v8, v13

    .line 1203
    .local v20, "row":[Ljava/lang/String;
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_3
    const/4 v2, 0x5

    if-ge v12, v2, :cond_f

    .line 1204
    aget-object v2, v20, v12

    if-nez v2, :cond_a

    .line 1203
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1210
    :cond_a
    const/4 v3, 0x1

    aget-object v5, v20, v12

    const/4 v6, 0x0

    aget-object v2, v20, v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1211
    const/4 v2, 0x0

    aget-object v2, v20, v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    .line 1212
    .local v22, "zone":Ljava/util/TimeZone;
    if-nez v22, :cond_b

    .line 1213
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_0

    .line 1215
    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    .line 1216
    .restart local v18    # "raw":I
    const/4 v2, 0x3

    if-eq v12, v2, :cond_c

    const/4 v2, 0x4

    if-ne v12, v2, :cond_e

    .line 1219
    :cond_c
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v9

    .line 1223
    .local v9, "dstSavings":I
    if-nez v9, :cond_d

    .line 1226
    const v9, 0x36ee80

    .line 1228
    :cond_d
    add-int v18, v18, v9

    .line 1230
    .end local v9    # "dstSavings":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1231
    aget-object v2, v20, v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int p2, p2, v2

    goto/16 :goto_0

    .line 1202
    .end local v18    # "raw":I
    .end local v22    # "zone":Ljava/util/TimeZone;
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1235
    .end local v12    # "i":I
    .end local v20    # "row":[Ljava/lang/String;
    :cond_10
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_0
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
    .line 1341
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1342
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1344
    .local v2, "version":I
    if-lez v2, :cond_0

    .line 1345
    const-string v3, "defaultCenturyStart"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1349
    .local v0, "date":Ljava/util/Date;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 1350
    const-string v3, "formatData"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1351
    const-string v3, "pattern"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1352
    return-void

    .line 1347
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_0
.end method

.method private validatePattern(Ljava/lang/String;)V
    .locals 8
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v5, 0x0

    .line 265
    .local v5, "quote":Z
    const/4 v2, -0x1

    .local v2, "last":I
    const/4 v0, 0x0

    .line 267
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 268
    .local v4, "patternLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_a

    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 270
    .local v3, "next":I
    const/16 v6, 0x27

    if-ne v3, v6, :cond_3

    .line 271
    if-lez v0, :cond_0

    .line 272
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    .line 273
    const/4 v0, 0x0

    .line 275
    :cond_0
    if-ne v2, v3, :cond_1

    .line 276
    const/4 v2, -0x1

    .line 280
    :goto_1
    if-nez v5, :cond_2

    const/4 v5, 0x1

    .line 268
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_1
    move v2, v3

    goto :goto_1

    .line 280
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 283
    :cond_3
    if-nez v5, :cond_8

    if-eq v2, v3, :cond_5

    const/16 v6, 0x61

    if-lt v3, v6, :cond_4

    const/16 v6, 0x7a

    if-le v3, v6, :cond_5

    :cond_4
    const/16 v6, 0x41

    if-lt v3, v6, :cond_8

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_8

    .line 285
    :cond_5
    if-ne v2, v3, :cond_6

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 288
    :cond_6
    if-lez v0, :cond_7

    .line 289
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    .line 291
    :cond_7
    move v2, v3

    .line 292
    const/4 v0, 0x1

    goto :goto_2

    .line 295
    :cond_8
    if-lez v0, :cond_9

    .line 296
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    .line 297
    const/4 v0, 0x0

    .line 299
    :cond_9
    const/4 v2, -0x1

    goto :goto_2

    .line 302
    .end local v3    # "next":I
    :cond_a
    if-lez v0, :cond_b

    .line 303
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    .line 306
    :cond_b
    if-eqz v5, :cond_c

    .line 307
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 309
    :cond_c
    return-void
.end method

.method private validatePatternCharacter(C)V
    .locals 4
    .param p1, "format"    # C

    .prologue
    .line 312
    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 313
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_0
    return-void
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
    .line 1332
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1333
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "defaultCenturyStart"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1334
    const-string v1, "formatData"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1335
    const-string v1, "pattern"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1336
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1337
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1338
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 395
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 404
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 405
    .local v0, "clone":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 406
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 407
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    if-ne p0, p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 432
    :cond_1
    instance-of v3, p1, Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_2

    move v1, v2

    .line 433
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 435
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 436
    .local v0, "simple":Ljava/text/SimpleDateFormat;
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v3, v4}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPos"    # Ljava/text/FieldPosition;

    .prologue
    .line 818
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "object == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 461
    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    .line 463
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 464
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    goto :goto_0

    .line 466
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 840
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 13
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1007
    const/4 v9, 0x0

    .line 1008
    .local v9, "quote":Z
    const/4 v4, -0x1

    .local v4, "last":I
    const/4 v0, 0x0

    .local v0, "count":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1009
    .local v7, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1010
    .local v5, "length":I
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 1011
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    .line 1012
    .local v10, "zone":Ljava/util/TimeZone;
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 1013
    .local v8, "patternLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_10

    .line 1014
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1015
    .local v6, "next":I
    const/16 v11, 0x27

    if-ne v6, v11, :cond_6

    .line 1016
    if-lez v0, :cond_1

    .line 1017
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_0

    .line 1018
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    .line 1074
    .end local v6    # "next":I
    :goto_1
    return-object v1

    .line 1020
    .restart local v6    # "next":I
    :cond_0
    const/4 v0, 0x0

    .line 1022
    :cond_1
    if-ne v4, v6, :cond_4

    .line 1023
    if-ge v7, v5, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x27

    if-eq v11, v12, :cond_3

    .line 1024
    :cond_2
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    .line 1026
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 1027
    const/4 v4, -0x1

    .line 1031
    :goto_2
    if-nez v9, :cond_5

    const/4 v9, 0x1

    .line 1013
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1029
    :cond_4
    move v4, v6

    goto :goto_2

    .line 1031
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 1034
    :cond_6
    if-nez v9, :cond_b

    if-eq v4, v6, :cond_8

    const/16 v11, 0x61

    if-lt v6, v11, :cond_7

    const/16 v11, 0x7a

    if-le v6, v11, :cond_8

    :cond_7
    const/16 v11, 0x41

    if-lt v6, v11, :cond_b

    const/16 v11, 0x5a

    if-gt v6, v11, :cond_b

    .line 1036
    :cond_8
    if-ne v4, v6, :cond_9

    .line 1037
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1039
    :cond_9
    if-lez v0, :cond_a

    .line 1040
    int-to-char v11, v4

    neg-int v12, v0

    invoke-direct {p0, p1, v7, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_a

    .line 1041
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    .line 1044
    :cond_a
    move v4, v6

    .line 1045
    const/4 v0, 0x1

    goto :goto_3

    .line 1048
    :cond_b
    if-lez v0, :cond_d

    .line 1049
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_c

    .line 1050
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    .line 1052
    :cond_c
    const/4 v0, 0x0

    .line 1054
    :cond_d
    const/4 v4, -0x1

    .line 1055
    if-ge v7, v5, :cond_e

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v6, :cond_f

    .line 1056
    :cond_e
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    .line 1058
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1061
    .end local v6    # "next":I
    :cond_10
    if-lez v0, :cond_11

    .line 1062
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_11

    .line 1063
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_1

    .line 1068
    :cond_11
    :try_start_0
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1072
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1073
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_1

    .line 1069
    .end local v1    # "date":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 1070
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1261
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1262
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1263
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1264
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 1265
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "value"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 1274
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1275
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1284
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
