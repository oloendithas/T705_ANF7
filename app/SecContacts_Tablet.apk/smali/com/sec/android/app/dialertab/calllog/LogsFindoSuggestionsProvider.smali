.class public Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "LogsFindoSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    }
.end annotation


# static fields
.field private static final AND:Ljava/lang/String; = "AND"

.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.dialertab.calllog.LogsFindoSuggestionsProvider"

.field private static final FINDO_SEARCH_COLUMNS:[Ljava/lang/String;

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PHONES_PROJECTION:[Ljava/lang/String;

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final SEARCH_REGEX_SUGGEST:I = 0x2

.field private static final SEARCH_SUGGEST:I = 0x0

.field private static final SHORTCUT_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LogsFindoSuggestionsProvider"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final AUTOREJECTED_TYPE:I

.field private final INCOMING_TYPE:I

.field private final INTERNET_CALL:I

.field private final MISSED_TYPE:I

.field private final MMS:I

.field private final OUTGOING_TYPE:I

.field private final REJECTED_TYPE:I

.field private final SMS:I

.field private final VIDEO_CALL:I

.field private final VOICEMAIL:I

.field private final VOICEMAIL_TYPE:I

.field private final VOICE_CALL:I

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mEndTime:J

.field private mLimit:I

.field private mLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private querystring:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 87
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_3"

    aput-object v1, v0, v6

    const-string v1, "suggest_text_4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_extra_flags"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->FINDO_SEARCH_COLUMNS:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_reverse"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "label"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->SMS:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->MMS:I

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->VOICEMAIL:I

    .line 71
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->VIDEO_CALL:I

    .line 72
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->VOICE_CALL:I

    .line 73
    const/16 v0, 0x20

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->INTERNET_CALL:I

    .line 76
    const/16 v0, 0x40

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->OUTGOING_TYPE:I

    .line 77
    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->INCOMING_TYPE:I

    .line 78
    const/16 v0, 0x100

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->MISSED_TYPE:I

    .line 79
    const/16 v0, 0x200

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->REJECTED_TYPE:I

    .line 80
    const/16 v0, 0x400

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->AUTOREJECTED_TYPE:I

    .line 81
    const/16 v0, 0x800

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->VOICEMAIL_TYPE:I

    .line 103
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->uri:Landroid/net/Uri;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mLogList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    .line 113
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mLimit:I

    .line 346
    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 199
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 200
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v1, "com.sec.android.app.dialertab.calllog.LogsFindoSuggestionsProvider"

    const-string v2, "search_suggest_regex_query"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    return-object v0
.end method

.method private checkCallType(I)I
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 512
    .local v0, "value":I
    packed-switch p1, :pswitch_data_0

    .line 531
    :goto_0
    return v0

    .line 514
    :pswitch_0
    const/16 v0, 0x100

    .line 515
    goto :goto_0

    .line 517
    :pswitch_1
    const/16 v0, 0x200

    .line 518
    goto :goto_0

    .line 520
    :pswitch_2
    const/16 v0, 0x400

    .line 521
    goto :goto_0

    .line 523
    :pswitch_3
    const/16 v0, 0x800

    .line 524
    goto :goto_0

    .line 527
    :pswitch_4
    const/16 v0, 0xc0

    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkContains(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputText"    # [Ljava/lang/String;

    .prologue
    .line 466
    array-length v1, p3

    .line 468
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 469
    aget-object v2, p3, v0

    const-string v3, "AND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    :cond_3
    const/4 v2, 0x0

    .line 478
    :goto_1
    return v2

    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private checkGroup(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;)Z
    .locals 13
    .param p1, "_selectedLogItem"    # Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    .param p2, "_logItem"    # Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    .prologue
    .line 536
    move-object v7, p1

    .line 537
    .local v7, "selectedLogItem":Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    move-object v0, p2

    .line 539
    .local v0, "logItem":Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    const/4 v5, 0x0

    .line 540
    .local v5, "sameNumber":Z
    const/4 v3, 0x0

    .line 541
    .local v3, "sameDate":Z
    const/4 v4, 0x0

    .line 542
    .local v4, "sameLogType":Z
    const/4 v1, 0x0

    .line 543
    .local v1, "sameCNAP":Z
    const/4 v6, 0x1

    .line 544
    .local v6, "sameServiceType":Z
    const/4 v2, 0x0

    .line 545
    .local v2, "sameCallType":Z
    const/4 v8, 0x1

    .line 548
    .local v8, "shouldLogGroup":Z
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getE164NumberText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getE164NumberText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 549
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getE164NumberText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getE164NumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 550
    const/4 v5, 0x1

    .line 553
    :cond_0
    if-nez v5, :cond_1

    .line 554
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 558
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getTimeText()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getTimeText()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 561
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getLogType()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->checkLogGroup(I)I

    move-result v9

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getLogType()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->checkLogGroup(I)I

    move-result v10

    if-ne v9, v10, :cond_3

    const/4 v4, 0x1

    .line 564
    :goto_0
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getCNAPName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getCNAPName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 570
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getCallType()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->checkCallType(I)I

    move-result v9

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getCallType()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->checkCallType(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    const/4 v2, 0x1

    .line 572
    :goto_1
    if-nez v5, :cond_5

    .line 573
    const/4 v8, 0x0

    .line 586
    :cond_2
    :goto_2
    return v8

    .line 561
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 570
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 574
    :cond_5
    if-nez v3, :cond_6

    .line 575
    const/4 v8, 0x0

    goto :goto_2

    .line 576
    :cond_6
    if-nez v1, :cond_7

    .line 577
    const/4 v8, 0x0

    goto :goto_2

    .line 578
    :cond_7
    if-nez v4, :cond_8

    .line 579
    const/4 v8, 0x0

    goto :goto_2

    .line 580
    :cond_8
    if-nez v6, :cond_9

    .line 581
    const/4 v8, 0x0

    goto :goto_2

    .line 582
    :cond_9
    if-nez v2, :cond_2

    .line 583
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private checkLogGroup(I)I
    .locals 1
    .param p1, "logType"    # I

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 484
    .local v0, "value":I
    sparse-switch p1, :sswitch_data_0

    .line 506
    :goto_0
    return v0

    .line 491
    :sswitch_0
    const/16 v0, 0x38

    .line 492
    goto :goto_0

    .line 499
    :sswitch_1
    const/4 v0, 0x4

    .line 500
    goto :goto_0

    .line 503
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 484
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    const-string p1, ""

    .line 697
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 685
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    iget-object p3, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mCurrentCountryIso:Ljava/lang/String;

    .line 694
    :cond_2
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getFindoSuggestions([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .param p1, "query"    # [Ljava/lang/String;

    .prologue
    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->makeList()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mLogList:Ljava/util/ArrayList;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->setGrouping(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 267
    .local v4, "count":I
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->FINDO_SEARCH_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 269
    .local v5, "cursor":Landroid/database/MatrixCursor;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v4, :cond_7

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getNameText()Ljava/lang/String;

    move-result-object v14

    .line 273
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v15

    .line 275
    .local v15, "number":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getCountryISO()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getTimeText()J

    move-result-wide v7

    .line 279
    .local v7, "date_time":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "date":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x101

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v7, v8, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v16

    .line 282
    .local v16, "time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallType:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;)I

    move-result v3

    .line 283
    .local v3, "callType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mLogType:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->access$100(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;)I

    move-result v13

    .line 285
    .local v13, "logType":I
    const/4 v10, 0x0

    .line 289
    .local v10, "icon1":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getImage1()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 290
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->randomThumbnail(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 296
    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->mLookupURI:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_0

    .line 299
    const/4 v12, 0x0

    .line 300
    .local v12, "isEmergencyNumber":Z
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    .line 301
    if-eqz v12, :cond_4

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e0327

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 311
    .end local v12    # "isEmergencyNumber":Z
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    const-string v19, "phone"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v17

    .line 314
    .local v17, "voicemailNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e009b

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 319
    :cond_1
    const-string v18, "-1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e009c

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 321
    const-string v15, ""

    .line 329
    :cond_2
    :goto_3
    const-string v18, "LogsFindoSuggestionsProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSuggestions:name : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v18, "LogsFindoSuggestionsProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSuggestions:number : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v18, "LogsFindoSuggestionsProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSuggestions:icon1 : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v18, "LogsFindoSuggestionsProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSuggestions:callType : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v18, "LogsFindoSuggestionsProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSuggestions:logType : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v18, "LogsFindoSuggestionsProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSuggestions:getType(callType)|getType(logType) : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->getType(I)I

    move-result v20

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->getType(I)I

    move-result v21

    or-int v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    aput-object v11, v19, v18

    const/16 v18, 0x1

    aput-object v14, v19, v18

    const/16 v18, 0x2

    aput-object v15, v19, v18

    const/16 v18, 0x3

    aput-object v6, v19, v18

    const/16 v18, 0x4

    aput-object v16, v19, v18

    const/16 v18, 0x5

    aput-object v10, v19, v18

    const/16 v18, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->getType(I)I

    move-result v20

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->getType(I)I

    move-result v21

    or-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v18

    const/16 v18, 0x7

    aput-object v11, v19, v18

    const/16 v20, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 292
    .end local v17    # "voicemailNumber":Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mSelectedLogList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getImage1()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto/16 :goto_1

    .line 304
    .restart local v12    # "isEmergencyNumber":Z
    :cond_4
    move-object v14, v15

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e0326

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 322
    .end local v12    # "isEmergencyNumber":Z
    .restart local v17    # "voicemailNumber":Ljava/lang/String;
    :cond_5
    const-string v18, "-2"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e009d

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 324
    const-string v15, ""

    goto/16 :goto_3

    .line 325
    :cond_6
    const-string v18, "-3"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0e009e

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 327
    const-string v15, ""

    goto/16 :goto_3

    .line 341
    .end local v3    # "callType":I
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "date_time":J
    .end local v10    # "icon1":Ljava/lang/String;
    .end local v11    # "id":Ljava/lang/String;
    .end local v13    # "logType":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    .end local v16    # "time":Ljava/lang/String;
    .end local v17    # "voicemailNumber":Ljava/lang/String;
    :cond_7
    return-object v5

    .line 294
    .restart local v3    # "callType":I
    .restart local v6    # "date":Ljava/lang/String;
    .restart local v7    # "date_time":J
    .restart local v10    # "icon1":Ljava/lang/String;
    .restart local v11    # "id":Ljava/lang/String;
    .restart local v13    # "logType":I
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "number":Ljava/lang/String;
    .restart local v16    # "time":Ljava/lang/String;
    :catch_0
    move-exception v18

    goto/16 :goto_1
.end method

.method private getPhotoUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    const-string v0, "LogsFindoSuggestionsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhotoUri contains number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 674
    :goto_0
    return-object v0

    .line 637
    :cond_0
    const/4 v7, 0x0

    .line 638
    .local v7, "photoUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 647
    .local v6, "phonesCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 649
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    const/4 v8, 0x0

    .line 652
    .local v8, "photoUriString":Ljava/lang/String;
    const-string v0, "photo_uri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 653
    if-eqz v8, :cond_1

    .line 654
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 658
    :cond_1
    if-eqz v8, :cond_4

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    .end local v8    # "photoUriString":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 670
    :cond_3
    const-string v0, "LogsFindoSuggestionsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-eqz v7, :cond_5

    .line 672
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 661
    .restart local v8    # "photoUriString":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mPhotos:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 665
    .end local v8    # "photoUriString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    move-object v0, v3

    .line 674
    goto :goto_0
.end method

.method private getType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "value":I
    sparse-switch p1, :sswitch_data_0

    .line 409
    :goto_0
    return v0

    .line 372
    :sswitch_0
    const/4 v0, 0x1

    .line 373
    goto :goto_0

    .line 375
    :sswitch_1
    const/4 v0, 0x2

    .line 376
    goto :goto_0

    .line 379
    :sswitch_2
    const/4 v0, 0x4

    .line 380
    goto :goto_0

    .line 382
    :sswitch_3
    const/16 v0, 0x8

    .line 383
    goto :goto_0

    .line 386
    :sswitch_4
    const/16 v0, 0x10

    .line 387
    goto :goto_0

    .line 389
    :sswitch_5
    const/16 v0, 0x20

    .line 390
    goto :goto_0

    .line 393
    :sswitch_6
    const/16 v0, 0x40

    .line 394
    goto :goto_0

    .line 397
    :sswitch_7
    const/16 v0, 0x80

    .line 398
    goto :goto_0

    .line 400
    :sswitch_8
    const/16 v0, 0x100

    .line 401
    goto :goto_0

    .line 403
    :sswitch_9
    const/16 v0, 0x200

    .line 404
    goto :goto_0

    .line 406
    :sswitch_a
    const/16 v0, 0x400

    goto :goto_0

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_3
        0x320 -> :sswitch_5
        0x384 -> :sswitch_2
        0x3b6 -> :sswitch_2
        0x3e8 -> :sswitch_4
    .end sparse-switch
.end method

.method private makeList()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v22, "logList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;>;"
    const/4 v4, 0x0

    .line 593
    .local v4, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 598
    .local v21, "cursor":Landroid/database/Cursor;
    if-nez v21, :cond_1

    .line 628
    :goto_0
    return-object v22

    .line 601
    :cond_1
    const-string v1, "LogsFindoSuggestionsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor getCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 606
    :cond_2
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    const-string v1, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v1, "lookup_uri"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "logtype"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v1, "type"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v1, "name"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v1, "number"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "e164_number"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "date"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v1, "cnap_name"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v1, "countryiso"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v1, "lookup_uri"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v20}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .local v5, "logitem":Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 626
    .end local v5    # "logitem":Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    :cond_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private setGrouping(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p2, "inputText"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "logList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;>;"
    const/4 v0, 0x0

    .line 415
    .local v0, "i":I
    const/4 v1, 0x0

    .line 416
    .local v1, "iLogList":I
    const/4 v2, 0x0

    .line 418
    .local v2, "iTempSelectLogList":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v6, "tempSelectLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v4, "selectLogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 423
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v1, v1, 0x1

    .line 425
    add-int/lit8 v2, v2, 0x1

    .line 428
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 429
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    .line 430
    .local v3, "logItem":Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    .line 432
    .local v5, "selectedLogItem":Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->checkGroup(Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 433
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getGroupCount()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->setGroupCount(I)V

    .line 439
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 444
    .end local v3    # "logItem":Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    .end local v5    # "selectedLogItem":Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;
    :cond_1
    const/4 v1, 0x0

    .line 445
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 446
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual {v9}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getNumberText()Ljava/lang/String;

    move-result-object v8

    .line 447
    .local v8, "tempSelectedNumber":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-virtual {v9}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->getNameText()Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "tempSelectedName":Ljava/lang/String;
    if-eqz p2, :cond_2

    if-eqz p2, :cond_5

    invoke-direct {p0, v8, v7, p2}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->checkContains(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 453
    :cond_2
    iget v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mLimit:I

    if-lt v0, v9, :cond_4

    .line 462
    .end local v7    # "tempSelectedName":Ljava/lang/String;
    .end local v8    # "tempSelectedNumber":Ljava/lang/String;
    :cond_3
    return-object v4

    .line 456
    .restart local v7    # "tempSelectedName":Ljava/lang/String;
    .restart local v8    # "tempSelectedNumber":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;

    invoke-direct {p0, v8}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->getPhotoUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider$LogItem;->setImage1(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v0, v0, 0x1

    .line 460
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 461
    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 206
    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query called with uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz p4, :cond_0

    .line 209
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    .line 212
    :cond_0
    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 250
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :pswitch_0
    const-string v3, "LogsFindoSuggestionsProvider"

    const-string v4, "Search regex suggest called"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v3, "limit"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "temp":Ljava/lang/String;
    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz v2, :cond_1

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mLimit:I

    .line 224
    :cond_1
    const-string v3, "stime"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_2

    .line 226
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    .line 231
    :goto_0
    const-string v3, "etime"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    if-eqz v2, :cond_3

    .line 233
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    .line 238
    :goto_1
    const-string v3, "LogsFindoSuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mEndTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/QueryParser;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/QueryParser;-><init>()V

    .line 241
    .local v0, "qParser":Lcom/sec/android/app/dialertab/calllog/QueryParser;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 242
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->querystring:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/QueryParser;->regexParser(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "result":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->getFindoSuggestions([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 246
    .end local v1    # "result":[Ljava/lang/String;
    :goto_2
    return-object v3

    .line 228
    .end local v0    # "qParser":Lcom/sec/android/app/dialertab/calllog/QueryParser;
    :cond_2
    iput-wide v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mStartTime:J

    goto :goto_0

    .line 235
    :cond_3
    iput-wide v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->mEndTime:J

    goto :goto_1

    .line 246
    .restart local v0    # "qParser":Lcom/sec/android/app/dialertab/calllog/QueryParser;
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsFindoSuggestionsProvider;->getFindoSuggestions([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method
