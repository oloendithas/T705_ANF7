.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f0e0150

    .line 709
    if-nez p1, :cond_0

    .line 731
    :goto_0
    :pswitch_0
    return v0

    .line 710
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 731
    const v0, 0x7f0e0149

    goto :goto_0

    .line 711
    :pswitch_1
    const v0, 0x7f0e014a

    goto :goto_0

    .line 712
    :pswitch_2
    const v0, 0x7f0e014b

    goto :goto_0

    .line 713
    :pswitch_3
    const v0, 0x7f0e014c

    goto :goto_0

    .line 714
    :pswitch_4
    const v0, 0x7f0e014d

    goto :goto_0

    .line 715
    :pswitch_5
    const v0, 0x7f0e014e

    goto :goto_0

    .line 716
    :pswitch_6
    const v0, 0x7f0e014f

    goto :goto_0

    .line 718
    :pswitch_7
    const v0, 0x7f0e0151

    goto :goto_0

    .line 719
    :pswitch_8
    const v0, 0x7f0e0152

    goto :goto_0

    .line 720
    :pswitch_9
    const v0, 0x7f0e0153

    goto :goto_0

    .line 721
    :pswitch_a
    const v0, 0x7f0e0154

    goto :goto_0

    .line 722
    :pswitch_b
    const v0, 0x7f0e0155

    goto :goto_0

    .line 723
    :pswitch_c
    const v0, 0x7f0e0156

    goto :goto_0

    .line 724
    :pswitch_d
    const v0, 0x7f0e0157

    goto :goto_0

    .line 725
    :pswitch_e
    const v0, 0x7f0e0158

    goto :goto_0

    .line 726
    :pswitch_f
    const v0, 0x7f0e0159

    goto :goto_0

    .line 727
    :pswitch_10
    const v0, 0x7f0e015a

    goto :goto_0

    .line 728
    :pswitch_11
    const v0, 0x7f0e015b

    goto :goto_0

    .line 729
    :pswitch_12
    const v0, 0x7f0e015c

    goto :goto_0

    .line 730
    :pswitch_13
    const v0, 0x7f0e015d

    goto :goto_0

    .line 710
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
    .line 704
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
