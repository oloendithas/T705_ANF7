.class Lcom/android/keyguard/sec/JPWeatherImageArchive;
.super Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
.source "JPWeatherImageArchive.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;-><init>()V

    return-void
.end method

.method private checkDayOrNight()Z
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getImage(I)I
    .registers 7
    .param p1, "index"    # I

    .prologue
    const v1, 0x7f02022b

    const v0, 0x7f02021a

    const v4, 0x7f020225

    const v2, 0x7f02021f

    const v3, 0x7f02021e

    .line 10
    sparse-switch p1, :sswitch_data_8c

    .line 240
    :cond_12
    :goto_12
    return v0

    .line 20
    :sswitch_13
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    .line 23
    goto :goto_12

    .line 39
    :sswitch_1b
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 40
    const v0, 0x7f02021b

    goto :goto_12

    .line 42
    :cond_25
    const v0, 0x7f02022c

    goto :goto_12

    .line 48
    :sswitch_29
    const v0, 0x7f02021c

    goto :goto_12

    .line 62
    :sswitch_2d
    const v0, 0x7f020222

    goto :goto_12

    .line 84
    :sswitch_31
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v2

    .line 85
    goto :goto_12

    :cond_39
    move v0, v3

    .line 87
    goto :goto_12

    :sswitch_3b
    move v0, v3

    .line 108
    goto :goto_12

    .line 118
    :sswitch_3d
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_45

    move v0, v2

    .line 119
    goto :goto_12

    :cond_45
    move v0, v3

    .line 121
    goto :goto_12

    :sswitch_47
    move v0, v3

    .line 128
    goto :goto_12

    .line 141
    :sswitch_49
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v2

    .line 142
    goto :goto_12

    :cond_51
    move v0, v3

    .line 144
    goto :goto_12

    .line 150
    :sswitch_53
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_5b

    move v0, v2

    .line 151
    goto :goto_12

    :cond_5b
    move v0, v3

    .line 153
    goto :goto_12

    .line 181
    :sswitch_5d
    const v0, 0x7f020223

    goto :goto_12

    .line 188
    :sswitch_61
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 189
    const v0, 0x7f020224

    goto :goto_12

    :cond_6b
    move v0, v4

    .line 191
    goto :goto_12

    .line 203
    :sswitch_6d
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_75

    move v0, v4

    .line 204
    goto :goto_12

    :cond_75
    move v0, v4

    .line 206
    goto :goto_12

    .line 226
    :sswitch_77
    const v0, 0x7f020226

    goto :goto_12

    .line 229
    :sswitch_7b
    const v0, 0x7f020227

    goto :goto_12

    .line 233
    :sswitch_7f
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 234
    const v0, 0x7f020228

    goto :goto_12

    :cond_89
    move v0, v1

    .line 236
    goto :goto_12

    .line 10
    nop

    :sswitch_data_8c
    .sparse-switch
        0x64 -> :sswitch_13
        0x65 -> :sswitch_1b
        0x66 -> :sswitch_31
        0x67 -> :sswitch_31
        0x68 -> :sswitch_61
        0x69 -> :sswitch_61
        0x6a -> :sswitch_31
        0x6b -> :sswitch_31
        0x6c -> :sswitch_31
        0x6e -> :sswitch_1b
        0x6f -> :sswitch_1b
        0x70 -> :sswitch_31
        0x71 -> :sswitch_31
        0x72 -> :sswitch_31
        0x73 -> :sswitch_6d
        0x74 -> :sswitch_6d
        0x75 -> :sswitch_6d
        0x76 -> :sswitch_31
        0x77 -> :sswitch_31
        0x78 -> :sswitch_31
        0x79 -> :sswitch_31
        0x7a -> :sswitch_31
        0x7b -> :sswitch_13
        0x7c -> :sswitch_13
        0x7d -> :sswitch_31
        0x7e -> :sswitch_31
        0x7f -> :sswitch_31
        0x80 -> :sswitch_31
        0x81 -> :sswitch_31
        0x82 -> :sswitch_13
        0x83 -> :sswitch_13
        0x84 -> :sswitch_1b
        0x8c -> :sswitch_31
        0xa0 -> :sswitch_61
        0xaa -> :sswitch_61
        0xb5 -> :sswitch_6d
        0xc8 -> :sswitch_29
        0xc9 -> :sswitch_1b
        0xca -> :sswitch_3b
        0xcb -> :sswitch_3b
        0xcc -> :sswitch_5d
        0xcd -> :sswitch_5d
        0xce -> :sswitch_3b
        0xcf -> :sswitch_3b
        0xd0 -> :sswitch_3b
        0xd1 -> :sswitch_29
        0xd2 -> :sswitch_1b
        0xd3 -> :sswitch_1b
        0xd4 -> :sswitch_3b
        0xd5 -> :sswitch_3b
        0xd6 -> :sswitch_3b
        0xd7 -> :sswitch_5d
        0xd8 -> :sswitch_5d
        0xd9 -> :sswitch_5d
        0xda -> :sswitch_3b
        0xdb -> :sswitch_3b
        0xdc -> :sswitch_3b
        0xdd -> :sswitch_3b
        0xde -> :sswitch_3b
        0xdf -> :sswitch_1b
        0xe0 -> :sswitch_3b
        0xe1 -> :sswitch_3b
        0xe2 -> :sswitch_3b
        0xe3 -> :sswitch_3b
        0xe4 -> :sswitch_5d
        0xe5 -> :sswitch_5d
        0xe6 -> :sswitch_5d
        0xe7 -> :sswitch_29
        0xf0 -> :sswitch_3b
        0xfa -> :sswitch_5d
        0x104 -> :sswitch_5d
        0x10e -> :sswitch_5d
        0x119 -> :sswitch_5d
        0x12c -> :sswitch_2d
        0x12d -> :sswitch_3d
        0x12e -> :sswitch_47
        0x12f -> :sswitch_77
        0x130 -> :sswitch_2d
        0x132 -> :sswitch_2d
        0x134 -> :sswitch_2d
        0x135 -> :sswitch_77
        0x137 -> :sswitch_3d
        0x139 -> :sswitch_47
        0x13a -> :sswitch_77
        0x13b -> :sswitch_77
        0x13c -> :sswitch_3d
        0x13d -> :sswitch_47
        0x140 -> :sswitch_3d
        0x141 -> :sswitch_47
        0x142 -> :sswitch_77
        0x143 -> :sswitch_3d
        0x144 -> :sswitch_3d
        0x145 -> :sswitch_3d
        0x146 -> :sswitch_77
        0x147 -> :sswitch_77
        0x148 -> :sswitch_2d
        0x149 -> :sswitch_2d
        0x154 -> :sswitch_5d
        0x15e -> :sswitch_2d
        0x169 -> :sswitch_6d
        0x173 -> :sswitch_5d
        0x190 -> :sswitch_5d
        0x191 -> :sswitch_6d
        0x192 -> :sswitch_5d
        0x193 -> :sswitch_77
        0x195 -> :sswitch_5d
        0x196 -> :sswitch_5d
        0x197 -> :sswitch_5d
        0x199 -> :sswitch_77
        0x19b -> :sswitch_6d
        0x19d -> :sswitch_5d
        0x19e -> :sswitch_77
        0x1a4 -> :sswitch_6d
        0x1a5 -> :sswitch_5d
        0x1a6 -> :sswitch_77
        0x1a7 -> :sswitch_77
        0x1a8 -> :sswitch_77
        0x1a9 -> :sswitch_5d
        0x1aa -> :sswitch_5d
        0x1ab -> :sswitch_5d
        0x1ae -> :sswitch_7b
        0x1c2 -> :sswitch_5d
        0x1f4 -> :sswitch_13
        0x226 -> :sswitch_7f
        0x228 -> :sswitch_1b
        0x229 -> :sswitch_49
        0x22e -> :sswitch_49
        0x232 -> :sswitch_1b
        0x233 -> :sswitch_49
        0x238 -> :sswitch_49
        0x23c -> :sswitch_1b
        0x23d -> :sswitch_49
        0x246 -> :sswitch_1b
        0x247 -> :sswitch_49
        0x258 -> :sswitch_13
        0x352 -> :sswitch_2d
        0x353 -> :sswitch_49
        0x355 -> :sswitch_2d
        0x356 -> :sswitch_77
        0x357 -> :sswitch_49
        0x35d -> :sswitch_49
        0x35f -> :sswitch_2d
        0x360 -> :sswitch_77
        0x361 -> :sswitch_49
        0x367 -> :sswitch_53
        0x369 -> :sswitch_2d
        0x36a -> :sswitch_77
        0x371 -> :sswitch_53
        0x373 -> :sswitch_2d
        0x374 -> :sswitch_77
    .end sparse-switch
.end method
