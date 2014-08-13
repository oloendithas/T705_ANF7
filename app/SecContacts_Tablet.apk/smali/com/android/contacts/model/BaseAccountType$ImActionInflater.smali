.class public Lcom/android/contacts/model/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f0e0171

    .line 790
    if-nez p1, :cond_0

    .line 801
    :goto_0
    :pswitch_0
    return v0

    .line 791
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 792
    :pswitch_1
    const v0, 0x7f0e0169

    goto :goto_0

    .line 793
    :pswitch_2
    const v0, 0x7f0e016a

    goto :goto_0

    .line 794
    :pswitch_3
    const v0, 0x7f0e016b

    goto :goto_0

    .line 795
    :pswitch_4
    const v0, 0x7f0e016c

    goto :goto_0

    .line 796
    :pswitch_5
    const v0, 0x7f0e016d

    goto :goto_0

    .line 797
    :pswitch_6
    const v0, 0x7f0e016e

    goto :goto_0

    .line 798
    :pswitch_7
    const v0, 0x7f0e016f

    goto :goto_0

    .line 799
    :pswitch_8
    const v0, 0x7f0e0170

    goto :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
