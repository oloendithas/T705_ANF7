.class Lcom/android/keyguard/sec/KWeatherImageArchive;
.super Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
.source "KWeatherImageArchive.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;-><init>()V

    return-void
.end method

.method private checkDayOrNight()Z
    .registers 11

    .prologue
    const/16 v9, 0x12

    const/4 v8, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v0, :cond_3f

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 96
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 97
    .local v3, "month":I
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 99
    .local v1, "hour":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "locale":Ljava/lang/String;
    if-eqz v2, :cond_4d

    .line 102
    const-string v6, "ko_KR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 103
    const/4 v6, 0x3

    if-lt v3, v6, :cond_40

    const/16 v6, 0xa

    if-ge v3, v6, :cond_40

    .line 104
    if-lt v1, v8, :cond_3e

    const/16 v6, 0x13

    if-lt v1, v6, :cond_3f

    :cond_3e
    move v4, v5

    .line 127
    .end local v1    # "hour":I
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "month":I
    :cond_3f
    :goto_3f
    return v4

    .line 109
    .restart local v1    # "hour":I
    .restart local v2    # "locale":Ljava/lang/String;
    .restart local v3    # "month":I
    :cond_40
    const/4 v6, 0x7

    if-lt v1, v6, :cond_45

    if-lt v1, v9, :cond_3f

    :cond_45
    move v4, v5

    .line 110
    goto :goto_3f

    .line 115
    :cond_47
    if-lt v1, v8, :cond_4b

    if-lt v1, v9, :cond_3f

    :cond_4b
    move v4, v5

    .line 116
    goto :goto_3f

    .line 121
    :cond_4d
    if-lt v1, v8, :cond_51

    if-lt v1, v9, :cond_3f

    :cond_51
    move v4, v5

    .line 122
    goto :goto_3f
.end method


# virtual methods
.method public getImage(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 12
    packed-switch p1, :pswitch_data_48

    .line 84
    const v0, 0x7f02021a

    .line 87
    .local v0, "resource":I
    :goto_6
    return v0

    .line 14
    .end local v0    # "resource":I
    :pswitch_7
    invoke-direct {p0}, Lcom/android/keyguard/sec/KWeatherImageArchive;->checkDayOrNight()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 15
    const v0, 0x7f02021a

    .restart local v0    # "resource":I
    goto :goto_6

    .line 17
    .end local v0    # "resource":I
    :cond_11
    const v0, 0x7f02022b

    .line 19
    .restart local v0    # "resource":I
    goto :goto_6

    .line 23
    .end local v0    # "resource":I
    :pswitch_15
    invoke-direct {p0}, Lcom/android/keyguard/sec/KWeatherImageArchive;->checkDayOrNight()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 24
    const v0, 0x7f02021b

    .restart local v0    # "resource":I
    goto :goto_6

    .line 26
    .end local v0    # "resource":I
    :cond_1f
    const v0, 0x7f02022c

    .line 28
    .restart local v0    # "resource":I
    goto :goto_6

    .line 31
    .end local v0    # "resource":I
    :pswitch_23
    const v0, 0x7f02021c

    .line 32
    .restart local v0    # "resource":I
    goto :goto_6

    .line 34
    .end local v0    # "resource":I
    :pswitch_27
    const v0, 0x7f02021d

    .line 35
    .restart local v0    # "resource":I
    goto :goto_6

    .line 39
    .end local v0    # "resource":I
    :pswitch_2b
    const v0, 0x7f02021e

    .line 40
    .restart local v0    # "resource":I
    goto :goto_6

    .line 44
    .end local v0    # "resource":I
    :pswitch_2f
    const v0, 0x7f02021f

    .line 45
    .restart local v0    # "resource":I
    goto :goto_6

    .line 47
    .end local v0    # "resource":I
    :pswitch_33
    const v0, 0x7f020220

    .line 48
    .restart local v0    # "resource":I
    goto :goto_6

    .line 54
    .end local v0    # "resource":I
    :pswitch_37
    const v0, 0x7f020222

    .line 55
    .restart local v0    # "resource":I
    goto :goto_6

    .line 59
    .end local v0    # "resource":I
    :pswitch_3b
    const v0, 0x7f020224

    .line 60
    .restart local v0    # "resource":I
    goto :goto_6

    .line 66
    .end local v0    # "resource":I
    :pswitch_3f
    const v0, 0x7f020225

    .line 67
    .restart local v0    # "resource":I
    goto :goto_6

    .line 81
    .end local v0    # "resource":I
    :pswitch_43
    const v0, 0x7f020226

    .line 82
    .restart local v0    # "resource":I
    goto :goto_6

    .line 12
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_7
        :pswitch_15
        :pswitch_23
        :pswitch_23
        :pswitch_15
        :pswitch_15
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method
