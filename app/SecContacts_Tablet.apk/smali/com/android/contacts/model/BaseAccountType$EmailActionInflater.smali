.class public Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 739
    if-nez p1, :cond_0

    const v0, 0x7f0e0164

    .line 745
    :goto_0
    return v0

    .line 740
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 745
    const v0, 0x7f0e0163

    goto :goto_0

    .line 741
    :pswitch_0
    const v0, 0x7f0e015f

    goto :goto_0

    .line 742
    :pswitch_1
    const v0, 0x7f0e0161

    goto :goto_0

    .line 743
    :pswitch_2
    const v0, 0x7f0e0162

    goto :goto_0

    .line 744
    :pswitch_3
    const v0, 0x7f0e0160

    goto :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
