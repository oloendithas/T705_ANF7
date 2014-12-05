.class Lcom/android/keyguard/sec/AccuWeatherImageArchive;
.super Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
.source "AccuWeatherImageArchive.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 8
    packed-switch p1, :pswitch_data_54

    .line 67
    const v0, 0x7f02021b

    .line 70
    .local v0, "resource":I
    :goto_6
    return v0

    .line 10
    .end local v0    # "resource":I
    :pswitch_7
    const v0, 0x7f02021a

    .line 11
    .restart local v0    # "resource":I
    goto :goto_6

    .line 13
    .end local v0    # "resource":I
    :pswitch_b
    const v0, 0x7f02021b

    .line 14
    .restart local v0    # "resource":I
    goto :goto_6

    .line 16
    .end local v0    # "resource":I
    :pswitch_f
    const v0, 0x7f02021c

    .line 17
    .restart local v0    # "resource":I
    goto :goto_6

    .line 19
    .end local v0    # "resource":I
    :pswitch_13
    const v0, 0x7f02021d

    .line 20
    .restart local v0    # "resource":I
    goto :goto_6

    .line 22
    .end local v0    # "resource":I
    :pswitch_17
    const v0, 0x7f02021e

    .line 23
    .restart local v0    # "resource":I
    goto :goto_6

    .line 25
    .end local v0    # "resource":I
    :pswitch_1b
    const v0, 0x7f02021f

    .line 26
    .restart local v0    # "resource":I
    goto :goto_6

    .line 28
    .end local v0    # "resource":I
    :pswitch_1f
    const v0, 0x7f020220

    .line 29
    .restart local v0    # "resource":I
    goto :goto_6

    .line 31
    .end local v0    # "resource":I
    :pswitch_23
    const v0, 0x7f020221

    .line 32
    .restart local v0    # "resource":I
    goto :goto_6

    .line 34
    .end local v0    # "resource":I
    :pswitch_27
    const v0, 0x7f020222

    .line 35
    .restart local v0    # "resource":I
    goto :goto_6

    .line 37
    .end local v0    # "resource":I
    :pswitch_2b
    const v0, 0x7f020223

    .line 38
    .restart local v0    # "resource":I
    goto :goto_6

    .line 40
    .end local v0    # "resource":I
    :pswitch_2f
    const v0, 0x7f020224

    .line 41
    .restart local v0    # "resource":I
    goto :goto_6

    .line 43
    .end local v0    # "resource":I
    :pswitch_33
    const v0, 0x7f020225

    .line 44
    .restart local v0    # "resource":I
    goto :goto_6

    .line 46
    .end local v0    # "resource":I
    :pswitch_37
    const v0, 0x7f020226

    .line 47
    .restart local v0    # "resource":I
    goto :goto_6

    .line 49
    .end local v0    # "resource":I
    :pswitch_3b
    const v0, 0x7f020227

    .line 50
    .restart local v0    # "resource":I
    goto :goto_6

    .line 52
    .end local v0    # "resource":I
    :pswitch_3f
    const v0, 0x7f020228

    .line 53
    .restart local v0    # "resource":I
    goto :goto_6

    .line 55
    .end local v0    # "resource":I
    :pswitch_43
    const v0, 0x7f020229

    .line 56
    .restart local v0    # "resource":I
    goto :goto_6

    .line 58
    .end local v0    # "resource":I
    :pswitch_47
    const v0, 0x7f02022a

    .line 59
    .restart local v0    # "resource":I
    goto :goto_6

    .line 61
    .end local v0    # "resource":I
    :pswitch_4b
    const v0, 0x7f02022b

    .line 62
    .restart local v0    # "resource":I
    goto :goto_6

    .line 64
    .end local v0    # "resource":I
    :pswitch_4f
    const v0, 0x7f02022c

    .line 65
    .restart local v0    # "resource":I
    goto :goto_6

    .line 8
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
    .end packed-switch
.end method
