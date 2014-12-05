.class Lcom/android/keyguard/sec/CmaWeatherImageArchive;
.super Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
.source "CmaWeatherImageArchive.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage(I)I
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 10
    const-string v1, "CmaWeatherImageArchive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    packed-switch p1, :pswitch_data_78

    .line 79
    const v0, 0x7f02021a

    .line 82
    .local v0, "resource":I
    :goto_1e
    return v0

    .line 13
    .end local v0    # "resource":I
    :pswitch_1f
    const v0, 0x7f02021a

    .line 14
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 16
    .end local v0    # "resource":I
    :pswitch_23
    const v0, 0x7f02021b

    .line 17
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 19
    .end local v0    # "resource":I
    :pswitch_27
    const v0, 0x7f02021c

    .line 20
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 22
    .end local v0    # "resource":I
    :pswitch_2b
    const v0, 0x7f02021d

    .line 23
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 25
    .end local v0    # "resource":I
    :pswitch_2f
    const v0, 0x7f020222

    .line 26
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 28
    .end local v0    # "resource":I
    :pswitch_33
    const v0, 0x7f02021e

    .line 29
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 31
    .end local v0    # "resource":I
    :pswitch_37
    const v0, 0x7f02021f

    .line 32
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 34
    .end local v0    # "resource":I
    :pswitch_3b
    const v0, 0x7f020220

    .line 35
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 37
    .end local v0    # "resource":I
    :pswitch_3f
    const v0, 0x7f020221

    .line 38
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 40
    .end local v0    # "resource":I
    :pswitch_43
    const v0, 0x7f020223

    .line 41
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 43
    .end local v0    # "resource":I
    :pswitch_47
    const v0, 0x7f020224

    .line 44
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 46
    .end local v0    # "resource":I
    :pswitch_4b
    const v0, 0x7f020225

    .line 47
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 49
    .end local v0    # "resource":I
    :pswitch_4f
    const v0, 0x7f020226

    .line 50
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 52
    .end local v0    # "resource":I
    :pswitch_53
    const v0, 0x7f020227

    .line 53
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 55
    .end local v0    # "resource":I
    :pswitch_57
    const v0, 0x7f020228

    .line 56
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 58
    .end local v0    # "resource":I
    :pswitch_5b
    const v0, 0x7f020229

    .line 59
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 61
    .end local v0    # "resource":I
    :pswitch_5f
    const v0, 0x7f02022a

    .line 62
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 64
    .end local v0    # "resource":I
    :pswitch_63
    const v0, 0x7f02022b

    .line 65
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 67
    .end local v0    # "resource":I
    :pswitch_67
    const v0, 0x7f02022c

    .line 68
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 70
    .end local v0    # "resource":I
    :pswitch_6b
    const v0, 0x7f02022d

    .line 71
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 73
    .end local v0    # "resource":I
    :pswitch_6f
    const v0, 0x7f02022e

    .line 74
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 76
    .end local v0    # "resource":I
    :pswitch_73
    const v0, 0x7f02022f

    .line 77
    .restart local v0    # "resource":I
    goto :goto_1e

    .line 11
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2f
        :pswitch_2b
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
        :pswitch_53
        :pswitch_57
        :pswitch_5b
        :pswitch_5f
        :pswitch_63
        :pswitch_67
        :pswitch_6b
        :pswitch_6f
        :pswitch_73
    .end packed-switch
.end method
