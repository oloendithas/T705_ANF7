.class Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatWindowMode"
.end annotation


# instance fields
.field mOption:I

.field mType:I

.field mZone:I

.field final synthetic this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;III)V
    .registers 5
    .param p2, "type"    # I
    .param p3, "zone"    # I
    .param p4, "option"    # I

    .prologue
    .line 770
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput p2, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mType:I

    .line 772
    iput p3, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mZone:I

    .line 773
    iput p4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    .line 774
    return-void
.end method


# virtual methods
.method getCurrentMode()I
    .registers 3

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getZone()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getMode()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getOption()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method getMode()I
    .registers 3

    .prologue
    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "mode":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mType:I

    if-nez v1, :cond_8

    .line 779
    const/high16 v0, 0x1000000

    .line 783
    :goto_7
    return v0

    .line 781
    :cond_8
    const/high16 v0, 0x2000000

    goto :goto_7
.end method

.method getOption()I
    .registers 3

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "option":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    .line 820
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 822
    :cond_a
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    .line 823
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 825
    :cond_13
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1c

    .line 826
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 828
    :cond_1c
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_25

    .line 829
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 831
    :cond_25
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2e

    .line 832
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 834
    :cond_2e
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_37

    .line 835
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 837
    :cond_37
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3f

    .line 838
    or-int/lit16 v0, v0, 0x1000

    .line 840
    :cond_3f
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_47

    .line 841
    or-int/lit16 v0, v0, 0x800

    .line 843
    :cond_47
    return v0
.end method

.method getZone()I
    .registers 3

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, "zone":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mZone:I

    packed-switch v1, :pswitch_data_1a

    .line 811
    :pswitch_6
    const/4 v0, 0x0

    .line 814
    :goto_7
    return v0

    .line 790
    :pswitch_8
    const/16 v0, 0xf

    .line 791
    goto :goto_7

    .line 793
    :pswitch_b
    const/4 v0, 0x3

    .line 794
    goto :goto_7

    .line 796
    :pswitch_d
    const/16 v0, 0xc

    .line 797
    goto :goto_7

    .line 799
    :pswitch_10
    const/4 v0, 0x1

    .line 800
    goto :goto_7

    .line 802
    :pswitch_12
    const/4 v0, 0x2

    .line 803
    goto :goto_7

    .line 805
    :pswitch_14
    const/4 v0, 0x4

    .line 806
    goto :goto_7

    .line 808
    :pswitch_16
    const/16 v0, 0x8

    .line 809
    goto :goto_7

    .line 788
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_12
        :pswitch_b
        :pswitch_14
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_16
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
