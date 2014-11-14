.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public SumSize:F

.field public angle:F

.field public eccen:F

.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public palm:F

.field public pressure:F

.field public size:F

.field public surfaceMajor:F

.field public surfaceMinor:F

.field public surfaceSize:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3587
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 3595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3596
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3597
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 4
    .param p0, "size"    # I

    .prologue
    .line 3601
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3602
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 3603
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3602
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3605
    :cond_f
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3750
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3752
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3753
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3754
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3755
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3756
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3757
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3758
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3759
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3760
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3762
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    .line 3765
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    .line 3766
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    .line 3768
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 10
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    const/4 v7, 0x0

    .line 3776
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3777
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3778
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_20

    .line 3779
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3780
    .local v3, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3781
    .local v2, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3782
    .local v4, "values":[F
    if-eqz v4, :cond_18

    array-length v5, v4

    if-le v2, v5, :cond_1d

    .line 3783
    :cond_18
    array-length v5, v3

    new-array v4, v5, [F

    .line 3784
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3786
    :cond_1d
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3789
    .end local v2    # "count":I
    .end local v3    # "otherValues":[F
    .end local v4    # "values":[F
    :cond_20
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3790
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3791
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3792
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3793
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3794
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3795
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3796
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3797
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3801
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    .line 3802
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    .line 3803
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    .line 3804
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->angle:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    .line 3805
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->palm:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 3806
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    .line 3807
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    .line 3813
    const-string/jumbo v5, "ro.revision"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_6b

    .line 3820
    :cond_6b
    return-void
.end method

.method public getAxisValue(I)F
    .registers 13
    .param p1, "axis"    # I

    .prologue
    const-wide/16 v9, 0x1

    .line 3832
    sparse-switch p1, :sswitch_data_5e

    .line 3873
    if-ltz p1, :cond_b

    const/16 v5, 0x3f

    if-le p1, v5, :cond_43

    .line 3874
    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3834
    :sswitch_13
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3882
    :goto_15
    return v5

    .line 3836
    :sswitch_16
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_15

    .line 3838
    :sswitch_19
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_15

    .line 3840
    :sswitch_1c
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_15

    .line 3842
    :sswitch_1f
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_15

    .line 3844
    :sswitch_22
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_15

    .line 3846
    :sswitch_25
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_15

    .line 3848
    :sswitch_28
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_15

    .line 3850
    :sswitch_2b
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_15

    .line 3853
    :sswitch_2e
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    goto :goto_15

    .line 3855
    :sswitch_31
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    goto :goto_15

    .line 3857
    :sswitch_34
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    goto :goto_15

    .line 3859
    :sswitch_37
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    goto :goto_15

    .line 3861
    :sswitch_3a
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_15

    .line 3866
    :sswitch_3d
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    goto :goto_15

    .line 3870
    :sswitch_40
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    goto :goto_15

    .line 3876
    :cond_43
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3877
    .local v2, "bits":J
    shl-long v0, v9, p1

    .line 3878
    .local v0, "axisBit":J
    and-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_51

    .line 3879
    const/4 v5, 0x0

    goto :goto_15

    .line 3881
    :cond_51
    sub-long v5, v0, v9

    and-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3882
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    goto :goto_15

    .line 3832
    nop

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_13
        0x1 -> :sswitch_16
        0x2 -> :sswitch_19
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1f
        0x5 -> :sswitch_22
        0x6 -> :sswitch_25
        0x7 -> :sswitch_28
        0x8 -> :sswitch_2b
        0x30 -> :sswitch_2e
        0x31 -> :sswitch_31
        0x32 -> :sswitch_34
        0x33 -> :sswitch_37
        0x34 -> :sswitch_3a
        0x35 -> :sswitch_40
        0x36 -> :sswitch_3d
    .end sparse-switch
.end method

.method public setAxisValue(IF)V
    .registers 16
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .prologue
    const-wide/16 v9, 0x1

    const/4 v12, 0x0

    .line 3897
    sparse-switch p1, :sswitch_data_8a

    .line 3952
    :goto_6
    if-ltz p1, :cond_c

    const/16 v8, 0x3f

    if-le p1, v8, :cond_43

    .line 3953
    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3899
    :sswitch_14
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3984
    :goto_16
    return-void

    .line 3902
    :sswitch_17
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_16

    .line 3905
    :sswitch_1a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_16

    .line 3908
    :sswitch_1d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_16

    .line 3911
    :sswitch_20
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_16

    .line 3914
    :sswitch_23
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_16

    .line 3917
    :sswitch_26
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_16

    .line 3920
    :sswitch_29
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_16

    .line 3923
    :sswitch_2c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_16

    .line 3927
    :sswitch_2f
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    goto :goto_16

    .line 3930
    :sswitch_32
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    goto :goto_16

    .line 3933
    :sswitch_35
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    goto :goto_16

    .line 3936
    :sswitch_38
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    goto :goto_16

    .line 3939
    :sswitch_3b
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_16

    .line 3945
    :sswitch_3e
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    .line 3949
    :sswitch_40
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    goto :goto_6

    .line 3955
    :cond_43
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3956
    .local v2, "bits":J
    shl-long v0, v9, p1

    .line 3957
    .local v0, "axisBit":J
    sub-long v8, v0, v9

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 3958
    .local v5, "index":I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3959
    .local v7, "values":[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_64

    .line 3960
    if-nez v7, :cond_67

    .line 3961
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 3962
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3979
    :cond_60
    :goto_60
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3981
    :cond_64
    aput p2, v7, v5

    goto :goto_16

    .line 3964
    :cond_67
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3965
    .local v4, "count":I
    array-length v8, v7

    if-ge v4, v8, :cond_78

    .line 3966
    if-eq v5, v4, :cond_60

    .line 3967
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_60

    .line 3971
    :cond_78
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 3972
    .local v6, "newValues":[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3973
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3975
    move-object v7, v6

    .line 3976
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_60

    .line 3897
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_17
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_20
        0x5 -> :sswitch_23
        0x6 -> :sswitch_26
        0x7 -> :sswitch_29
        0x8 -> :sswitch_2c
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_32
        0x32 -> :sswitch_35
        0x33 -> :sswitch_38
        0x34 -> :sswitch_3b
        0x35 -> :sswitch_40
        0x36 -> :sswitch_3e
    .end sparse-switch
.end method
