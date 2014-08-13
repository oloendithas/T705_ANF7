.class public Lcom/diotek/ime/framework/sidesync/SideSyncUtils;
.super Ljava/lang/Object;
.source "SideSyncUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInputEngineNeed(I)Z
    .locals 1
    .param p0, "languageID"    # I

    .prologue
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 42
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 40
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x4b52
        :pswitch_0
    .end packed-switch
.end method

.method public static isThisKeyEnable(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 20
    sparse-switch p0, :sswitch_data_0

    .line 28
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 26
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 20
    nop

    :sswitch_data_0
    .sparse-switch
        -0x191 -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x79 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x6c -> :sswitch_0
    .end sparse-switch
.end method
