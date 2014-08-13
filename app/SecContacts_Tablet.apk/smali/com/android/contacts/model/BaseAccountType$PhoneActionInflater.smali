.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f0e013b

    .line 674
    if-nez p1, :cond_0

    .line 696
    :goto_0
    :pswitch_0
    return v0

    .line 675
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 696
    const v0, 0x7f0e0134

    goto :goto_0

    .line 676
    :pswitch_1
    const v0, 0x7f0e0135

    goto :goto_0

    .line 677
    :pswitch_2
    const v0, 0x7f0e0136

    goto :goto_0

    .line 678
    :pswitch_3
    const v0, 0x7f0e0137

    goto :goto_0

    .line 679
    :pswitch_4
    const v0, 0x7f0e0138

    goto :goto_0

    .line 680
    :pswitch_5
    const v0, 0x7f0e0139

    goto :goto_0

    .line 681
    :pswitch_6
    const v0, 0x7f0e013a

    goto :goto_0

    .line 683
    :pswitch_7
    const v0, 0x7f0e013c

    goto :goto_0

    .line 684
    :pswitch_8
    const v0, 0x7f0e013d

    goto :goto_0

    .line 685
    :pswitch_9
    const v0, 0x7f0e013e

    goto :goto_0

    .line 686
    :pswitch_a
    const v0, 0x7f0e013f

    goto :goto_0

    .line 687
    :pswitch_b
    const v0, 0x7f0e0140

    goto :goto_0

    .line 688
    :pswitch_c
    const v0, 0x7f0e0141

    goto :goto_0

    .line 689
    :pswitch_d
    const v0, 0x7f0e0142

    goto :goto_0

    .line 690
    :pswitch_e
    const v0, 0x7f0e0143

    goto :goto_0

    .line 691
    :pswitch_f
    const v0, 0x7f0e0144

    goto :goto_0

    .line 692
    :pswitch_10
    const v0, 0x7f0e0145

    goto :goto_0

    .line 693
    :pswitch_11
    const v0, 0x7f0e0146

    goto :goto_0

    .line 694
    :pswitch_12
    const v0, 0x7f0e0147

    goto :goto_0

    .line 695
    :pswitch_13
    const v0, 0x7f0e0148

    goto :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 669
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
