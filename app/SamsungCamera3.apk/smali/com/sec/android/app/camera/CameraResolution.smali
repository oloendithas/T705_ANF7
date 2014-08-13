.class public Lcom/sec/android/app/camera/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field public static final RESOLUTION_1024X576:I = 0x27

.field public static final RESOLUTION_1024X768:I = 0x25

.field public static final RESOLUTION_1072X1072:I = 0x2f

.field public static final RESOLUTION_1248X672:I = 0x1d

.field public static final RESOLUTION_1280X720:I = 0xe

.field public static final RESOLUTION_1280X800:I = 0x16

.field public static final RESOLUTION_1280X960:I = 0xa

.field public static final RESOLUTION_1392X1392:I = 0x18

.field public static final RESOLUTION_1440X1080:I = 0x1f

.field public static final RESOLUTION_1536X864:I = 0x1c

.field public static final RESOLUTION_1600X1200:I = 0x8

.field public static final RESOLUTION_1600X960:I = 0x9

.field public static final RESOLUTION_1632X880:I = 0x1b

.field public static final RESOLUTION_176X144:I = 0x13

.field public static final RESOLUTION_1920X1080:I = 0xd

.field public static final RESOLUTION_1920X1080_60FPS:I = 0x2a

.field public static final RESOLUTION_2048X1104:I = 0x1a

.field public static final RESOLUTION_2048X1152:I = 0x17

.field public static final RESOLUTION_2048X1232:I = 0x7

.field public static final RESOLUTION_2048X1536:I = 0x6

.field public static final RESOLUTION_2448X2448:I = 0x30

.field public static final RESOLUTION_2560X1440:I = 0x15

.field public static final RESOLUTION_2560X1536:I = 0x5

.field public static final RESOLUTION_2560X1920:I = 0x4

.field public static final RESOLUTION_2592X1944:I = 0x19

.field public static final RESOLUTION_2592X2592:I = 0x33

.field public static final RESOLUTION_2976X2976:I = 0x2e

.field public static final RESOLUTION_3072X1856:I = 0x3

.field public static final RESOLUTION_3072X2304:I = 0x2

.field public static final RESOLUTION_3096X3096:I = 0x2b

.field public static final RESOLUTION_320X240:I = 0x12

.field public static final RESOLUTION_3264X1836:I = 0x14

.field public static final RESOLUTION_3264X1968:I = 0x1

.field public static final RESOLUTION_3264X2448:I = 0x0

.field public static final RESOLUTION_3456X2592:I = 0x32

.field public static final RESOLUTION_352X288:I = 0x11

.field public static final RESOLUTION_3840X2160:I = 0x28

.field public static final RESOLUTION_3984X2988:I = 0x2d

.field public static final RESOLUTION_400X240:I = 0x10

.field public static final RESOLUTION_4096X2304:I = 0x24

.field public static final RESOLUTION_4096X3072:I = 0x1e

.field public static final RESOLUTION_4128X2322:I = 0x21

.field public static final RESOLUTION_4128X3096:I = 0x20

.field public static final RESOLUTION_4608X2592:I = 0x31

.field public static final RESOLUTION_5312X2988:I = 0x2c

.field public static final RESOLUTION_640X360:I = 0x29

.field public static final RESOLUTION_640X480:I = 0xb

.field public static final RESOLUTION_720X480:I = 0xf

.field public static final RESOLUTION_800X450:I = 0x23

.field public static final RESOLUTION_800X480:I = 0xc

.field public static final RESOLUTION_960X540:I = 0x26

.field public static final RESOLUTION_960X720:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4
    .param p0, "res1"    # I
    .param p1, "res2"    # I

    .prologue
    .line 685
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 686
    .local v1, "dw":I
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 688
    .local v0, "dh":I
    if-lez v1, :cond_1

    .line 697
    .end local v1    # "dw":I
    :cond_0
    :goto_0
    return v1

    .line 690
    .restart local v1    # "dw":I
    :cond_1
    if-nez v1, :cond_0

    .line 691
    if-lez v0, :cond_2

    move v1, v0

    .line 692
    goto :goto_0

    .line 693
    :cond_2
    if-nez v0, :cond_0

    .line 694
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCamcorderProfileQualityLevel(I)I
    .locals 1
    .param p0, "resolution"    # I

    .prologue
    .line 659
    sparse-switch p0, :sswitch_data_0

    .line 674
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 662
    :sswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 664
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 666
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 668
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 670
    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 672
    :sswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 659
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public static getIntHeight(I)I
    .locals 2
    .param p0, "resid"    # I

    .prologue
    const/16 v0, 0x990

    const/16 v1, 0x1e0

    .line 176
    packed-switch p0, :pswitch_data_0

    .line 271
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 179
    :pswitch_2
    const/16 v0, 0xc18

    goto :goto_0

    .line 181
    :pswitch_3
    const/16 v0, 0xc00

    goto :goto_0

    .line 184
    :pswitch_4
    const/16 v0, 0xbac

    goto :goto_0

    .line 186
    :pswitch_5
    const/16 v0, 0xba0

    goto :goto_0

    .line 191
    :pswitch_6
    const/16 v0, 0xa20

    goto :goto_0

    .line 195
    :pswitch_7
    const/16 v0, 0x912

    goto :goto_0

    .line 198
    :pswitch_8
    const/16 v0, 0x900

    goto :goto_0

    .line 200
    :pswitch_9
    const/16 v0, 0x7b0

    goto :goto_0

    .line 202
    :pswitch_a
    const/16 v0, 0x798

    goto :goto_0

    .line 204
    :pswitch_b
    const/16 v0, 0x780

    goto :goto_0

    .line 206
    :pswitch_c
    const/16 v0, 0x740

    goto :goto_0

    .line 208
    :pswitch_d
    const/16 v0, 0x72c

    goto :goto_0

    .line 211
    :pswitch_e
    const/16 v0, 0x600

    goto :goto_0

    .line 213
    :pswitch_f
    const/16 v0, 0x5a0

    goto :goto_0

    .line 215
    :pswitch_10
    const/16 v0, 0x4d0

    goto :goto_0

    .line 217
    :pswitch_11
    const/16 v0, 0x4b0

    goto :goto_0

    .line 219
    :pswitch_12
    const/16 v0, 0x570

    goto :goto_0

    .line 221
    :pswitch_13
    const/16 v0, 0x480

    goto :goto_0

    .line 223
    :pswitch_14
    const/16 v0, 0x450

    goto :goto_0

    .line 228
    :pswitch_15
    const/16 v0, 0x438

    goto :goto_0

    .line 231
    :pswitch_16
    const/16 v0, 0x3c0

    goto :goto_0

    .line 233
    :pswitch_17
    const/16 v0, 0x370

    goto :goto_0

    .line 235
    :pswitch_18
    const/16 v0, 0x360

    goto :goto_0

    .line 237
    :pswitch_19
    const/16 v0, 0x320

    goto :goto_0

    .line 239
    :pswitch_1a
    const/16 v0, 0x21c

    goto :goto_0

    :pswitch_1b
    move v0, v1

    .line 242
    goto :goto_0

    .line 244
    :pswitch_1c
    const/16 v0, 0x1c2

    goto :goto_0

    .line 247
    :pswitch_1d
    const/16 v0, 0x2d0

    goto :goto_0

    .line 249
    :pswitch_1e
    const/16 v0, 0x2a0

    goto :goto_0

    :pswitch_1f
    move v0, v1

    .line 251
    goto :goto_0

    .line 253
    :pswitch_20
    const/16 v0, 0x168

    goto :goto_0

    .line 256
    :pswitch_21
    const/16 v0, 0xf0

    goto :goto_0

    .line 258
    :pswitch_22
    const/16 v0, 0x90

    goto :goto_0

    .line 260
    :pswitch_23
    const/16 v0, 0x300

    goto :goto_0

    .line 262
    :pswitch_24
    const/16 v0, 0x240

    goto :goto_0

    .line 264
    :pswitch_25
    const/16 v0, 0x870

    goto :goto_0

    .line 266
    :pswitch_26
    const/16 v0, 0x430

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_16
        :pswitch_16
        :pswitch_1b
        :pswitch_1b
        :pswitch_15
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_d
        :pswitch_f
        :pswitch_19
        :pswitch_13
        :pswitch_12
        :pswitch_a
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_1e
        :pswitch_3
        :pswitch_15
        :pswitch_2
        :pswitch_7
        :pswitch_1d
        :pswitch_1c
        :pswitch_8
        :pswitch_23
        :pswitch_1a
        :pswitch_24
        :pswitch_25
        :pswitch_20
        :pswitch_15
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_26
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 83
    packed-switch p0, :pswitch_data_0

    .line 172
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 85
    :pswitch_1
    const/16 v0, 0x14c0

    goto :goto_0

    .line 88
    :pswitch_2
    const/16 v0, 0x1200

    goto :goto_0

    .line 91
    :pswitch_3
    const/16 v0, 0x1020

    goto :goto_0

    .line 94
    :pswitch_4
    const/16 v0, 0x1000

    goto :goto_0

    .line 96
    :pswitch_5
    const/16 v0, 0xf90

    goto :goto_0

    .line 99
    :pswitch_6
    const/16 v0, 0xd80

    goto :goto_0

    .line 103
    :pswitch_7
    const/16 v0, 0xcc0

    goto :goto_0

    .line 105
    :pswitch_8
    const/16 v0, 0xc18

    goto :goto_0

    .line 108
    :pswitch_9
    const/16 v0, 0xc00

    goto :goto_0

    .line 110
    :pswitch_a
    const/16 v0, 0xba0

    goto :goto_0

    .line 114
    :pswitch_b
    const/16 v0, 0xa20

    goto :goto_0

    .line 118
    :pswitch_c
    const/16 v0, 0xa00

    goto :goto_0

    .line 123
    :pswitch_d
    const/16 v0, 0x800

    goto :goto_0

    .line 126
    :pswitch_e
    const/16 v0, 0x780

    goto :goto_0

    .line 128
    :pswitch_f
    const/16 v0, 0x660

    goto :goto_0

    .line 131
    :pswitch_10
    const/16 v0, 0x640

    goto :goto_0

    .line 133
    :pswitch_11
    const/16 v0, 0x600

    goto :goto_0

    .line 135
    :pswitch_12
    const/16 v0, 0x5a0

    goto :goto_0

    .line 137
    :pswitch_13
    const/16 v0, 0x570

    goto :goto_0

    .line 141
    :pswitch_14
    const/16 v0, 0x500

    goto :goto_0

    .line 143
    :pswitch_15
    const/16 v0, 0x4e0

    goto :goto_0

    .line 146
    :pswitch_16
    const/16 v0, 0x3c0

    goto :goto_0

    .line 149
    :pswitch_17
    const/16 v0, 0x320

    goto :goto_0

    .line 151
    :pswitch_18
    const/16 v0, 0x2d0

    goto :goto_0

    .line 154
    :pswitch_19
    const/16 v0, 0x280

    goto :goto_0

    .line 156
    :pswitch_1a
    const/16 v0, 0x190

    goto :goto_0

    .line 158
    :pswitch_1b
    const/16 v0, 0x140

    goto :goto_0

    .line 160
    :pswitch_1c
    const/16 v0, 0xb0

    goto :goto_0

    .line 163
    :pswitch_1d
    const/16 v0, 0x400

    goto :goto_0

    .line 165
    :pswitch_1e
    const/16 v0, 0xf00

    goto :goto_0

    .line 167
    :pswitch_1f
    const/16 v0, 0x430

    goto :goto_0

    .line 169
    :pswitch_20
    const/16 v0, 0x990

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_14
        :pswitch_19
        :pswitch_17
        :pswitch_e
        :pswitch_14
        :pswitch_18
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_7
        :pswitch_c
        :pswitch_14
        :pswitch_d
        :pswitch_13
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_15
        :pswitch_4
        :pswitch_12
        :pswitch_3
        :pswitch_3
        :pswitch_16
        :pswitch_17
        :pswitch_4
        :pswitch_1d
        :pswitch_16
        :pswitch_1d
        :pswitch_1e
        :pswitch_19
        :pswitch_e
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_a
        :pswitch_1f
        :pswitch_20
        :pswitch_2
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public static getResolutionFullString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 435
    packed-switch p0, :pswitch_data_0

    .line 538
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 437
    :pswitch_1
    const-string v0, "w16.0M (5312x2988)"

    goto :goto_0

    .line 439
    :pswitch_2
    const-string v0, "13.0M (4128x3096)"

    goto :goto_0

    .line 442
    :pswitch_3
    const-string v0, "12M (4608x2592)"

    goto :goto_0

    .line 445
    :pswitch_4
    const-string v0, "12M (3984x2988)"

    goto :goto_0

    .line 448
    :pswitch_5
    const-string v0, "9M (3456x2592)"

    goto :goto_0

    .line 451
    :pswitch_6
    const-string v0, "9.1M (3096x3096)"

    goto :goto_0

    .line 453
    :pswitch_7
    const-string v0, "9M (2976x2976)"

    goto :goto_0

    .line 455
    :pswitch_8
    const-string v0, "w9.6M (4128x2322)"

    goto :goto_0

    .line 457
    :pswitch_9
    const-string v0, "13.0M (4096x3072)"

    goto :goto_0

    .line 459
    :pswitch_a
    const-string v0, "w9.4M (4096x2304)"

    goto :goto_0

    .line 461
    :pswitch_b
    const-string v0, "8.0M (3264x2448)"

    goto :goto_0

    .line 463
    :pswitch_c
    const-string v0, "w6.5M (3264x1968)"

    goto :goto_0

    .line 465
    :pswitch_d
    const-string v0, "w6.0M (3264x1836)"

    goto :goto_0

    .line 467
    :pswitch_e
    const-string v0, "7.1M (3072x2304)"

    goto :goto_0

    .line 469
    :pswitch_f
    const-string v0, "w5.7M (3072x1856)"

    goto :goto_0

    .line 473
    :pswitch_10
    const-string v0, "6.7M (2592x2592)"

    goto :goto_0

    .line 475
    :pswitch_11
    const-string v0, "5.1M (2592x1944)"

    goto :goto_0

    .line 477
    :pswitch_12
    const-string v0, "5.0M (2560x1920)"

    goto :goto_0

    .line 479
    :pswitch_13
    const-string v0, "w4.0M (2560x1536)"

    goto :goto_0

    .line 481
    :pswitch_14
    const-string v0, "w3.7M (2560x1440)"

    goto :goto_0

    .line 483
    :pswitch_15
    const-string v0, "3.0M (2048x1536)"

    goto :goto_0

    .line 485
    :pswitch_16
    const-string v0, "w2.6M (2048x1232)"

    goto :goto_0

    .line 487
    :pswitch_17
    const-string v0, "w2.4M (2048x1152)"

    goto :goto_0

    .line 489
    :pswitch_18
    const-string v0, "w2.3M 2048x1104"

    goto :goto_0

    .line 492
    :pswitch_19
    const-string v0, "w2.0M (1920x1080)"

    goto :goto_0

    .line 494
    :pswitch_1a
    const-string v0, "w1.5M (1632x880)"

    goto :goto_0

    .line 496
    :pswitch_1b
    const-string v0, "2.0M (1600x1200)"

    goto :goto_0

    .line 498
    :pswitch_1c
    const-string v0, "w1.6M (1600x960)"

    goto :goto_0

    .line 500
    :pswitch_1d
    const-string v0, "w1.4M 1536x864"

    goto :goto_0

    .line 502
    :pswitch_1e
    const-string v0, "1.9M (1392x1392)"

    goto :goto_0

    .line 504
    :pswitch_1f
    const-string v0, "1.6M (1440x1080)"

    goto :goto_0

    .line 506
    :pswitch_20
    const-string v0, "1.3M (1280x960)"

    goto :goto_0

    .line 508
    :pswitch_21
    const-string v0, "1.2M (1072x1072)"

    goto :goto_0

    .line 510
    :pswitch_22
    const-string v0, "w1.0M (1280x800)"

    goto :goto_0

    .line 512
    :pswitch_23
    const-string v0, "w0.5M (960x540)"

    goto :goto_0

    .line 514
    :pswitch_24
    const-string v0, "w0.4M (800x480)"

    goto :goto_0

    .line 516
    :pswitch_25
    const-string v0, "w0.4M (800x450)"

    goto :goto_0

    .line 518
    :pswitch_26
    const-string v0, "0.3M (640x480)"

    goto :goto_0

    .line 520
    :pswitch_27
    const-string v0, "w0.3M (640x360)"

    goto :goto_0

    .line 522
    :pswitch_28
    const-string v0, "w0.8M (1248x672)"

    goto :goto_0

    .line 524
    :pswitch_29
    const-string v0, "w0.9M (1280x720)"

    goto :goto_0

    .line 526
    :pswitch_2a
    const-string v0, "0.7M (960x720)"

    goto :goto_0

    .line 528
    :pswitch_2b
    const-string v0, "0.4M (720x480)"

    goto/16 :goto_0

    .line 530
    :pswitch_2c
    const-string v0, "400x240"

    goto/16 :goto_0

    .line 532
    :pswitch_2d
    const-string v0, "320x240"

    goto/16 :goto_0

    .line 534
    :pswitch_2e
    const-string v0, "176x144"

    goto/16 :goto_0

    .line 536
    :pswitch_2f
    const-string v0, "6.0M (2448x2448)"

    goto/16 :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_1b
        :pswitch_1c
        :pswitch_20
        :pswitch_26
        :pswitch_24
        :pswitch_19
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_0
        :pswitch_2d
        :pswitch_2e
        :pswitch_d
        :pswitch_14
        :pswitch_22
        :pswitch_17
        :pswitch_1e
        :pswitch_11
        :pswitch_18
        :pswitch_1a
        :pswitch_1d
        :pswitch_28
        :pswitch_9
        :pswitch_1f
        :pswitch_2
        :pswitch_8
        :pswitch_2a
        :pswitch_25
        :pswitch_a
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_19
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_21
        :pswitch_2f
        :pswitch_3
        :pswitch_5
        :pswitch_10
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x23

    .line 543
    const-string v1, "4128x3096"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    const/16 v0, 0x20

    .line 654
    :cond_0
    :goto_0
    return v0

    .line 545
    :cond_1
    const-string v1, "5312x2988"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    const/16 v0, 0x2c

    goto :goto_0

    .line 547
    :cond_2
    const-string v1, "4608x2592"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 548
    const/16 v0, 0x31

    goto :goto_0

    .line 549
    :cond_3
    const-string v1, "3984x2988"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 551
    const/16 v0, 0x2d

    goto :goto_0

    .line 553
    :cond_4
    const-string v1, "3456x2592"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 555
    const/16 v0, 0x32

    goto :goto_0

    .line 557
    :cond_5
    const-string v1, "2976x2976"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 558
    const/16 v0, 0x2e

    goto :goto_0

    .line 559
    :cond_6
    const-string v1, "3096x3096"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 560
    const/16 v0, 0x2b

    goto :goto_0

    .line 561
    :cond_7
    const-string v1, "4128x2322"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 562
    const/16 v0, 0x21

    goto :goto_0

    .line 563
    :cond_8
    const-string v1, "4096x3072"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 564
    const/16 v0, 0x1e

    goto :goto_0

    .line 565
    :cond_9
    const-string v1, "4096x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 566
    const/16 v0, 0x24

    goto :goto_0

    .line 567
    :cond_a
    const-string v1, "3264x2448"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 568
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    :cond_b
    const-string v1, "3264x1968"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 570
    const/4 v0, 0x1

    goto :goto_0

    .line 571
    :cond_c
    const-string v1, "3264x1836"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 572
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 573
    :cond_d
    const-string v1, "3072x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 574
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 575
    :cond_e
    const-string v1, "3072x1856"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 576
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 577
    :cond_f
    const-string v1, "2592x2592"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 579
    const/16 v0, 0x33

    goto/16 :goto_0

    .line 581
    :cond_10
    const-string v1, "2592x1944"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 582
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 583
    :cond_11
    const-string v1, "2560x1920"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 584
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 585
    :cond_12
    const-string v1, "2560x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 586
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 587
    :cond_13
    const-string v1, "2560x1440"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 588
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 589
    :cond_14
    const-string v1, "2048x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 590
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 591
    :cond_15
    const-string v1, "2048x1232"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 592
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 593
    :cond_16
    const-string v1, "2048x1152"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 594
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 595
    :cond_17
    const-string v1, "2048x1104"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 596
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 597
    :cond_18
    const-string v1, "1920x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 598
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 599
    :cond_19
    const-string v1, "1920x1080_60FPS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 600
    const/16 v0, 0x2a

    goto/16 :goto_0

    .line 601
    :cond_1a
    const-string v1, "1440x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 602
    const/16 v0, 0x1f

    goto/16 :goto_0

    .line 603
    :cond_1b
    const-string v1, "1632x880"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 604
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 605
    :cond_1c
    const-string v1, "1600x1200"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 606
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 607
    :cond_1d
    const-string v1, "1600x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 608
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 609
    :cond_1e
    const-string v1, "1536x864"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 610
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 611
    :cond_1f
    const-string v1, "1392x1392"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 612
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 613
    :cond_20
    const-string v1, "1280x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 614
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 615
    :cond_21
    const-string v1, "960x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 616
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 617
    :cond_22
    const-string v1, "800x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 618
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 619
    :cond_23
    const-string v1, "800x450"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    const-string v1, "640x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 622
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 623
    :cond_24
    const-string v1, "640x360"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 624
    const/16 v0, 0x29

    goto/16 :goto_0

    .line 625
    :cond_25
    const-string v1, "1280x800"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 626
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 627
    :cond_26
    const-string v1, "1280x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 628
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 629
    :cond_27
    const-string v1, "1248x672"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 630
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 631
    :cond_28
    const-string v1, "800x450"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    const-string v0, "720x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 634
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 635
    :cond_29
    const-string v0, "400x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 636
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 637
    :cond_2a
    const-string v0, "320x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 638
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 639
    :cond_2b
    const-string v0, "176x144"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 640
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 641
    :cond_2c
    const-string v0, "1024x768"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 642
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 643
    :cond_2d
    const-string v0, "1024x576"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 644
    const/16 v0, 0x27

    goto/16 :goto_0

    .line 645
    :cond_2e
    const-string v0, "960x540"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 646
    const/16 v0, 0x26

    goto/16 :goto_0

    .line 647
    :cond_2f
    const-string v0, "3840x2160"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 648
    const/16 v0, 0x28

    goto/16 :goto_0

    .line 649
    :cond_30
    const-string v0, "1072x1072"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 650
    const/16 v0, 0x2f

    goto/16 :goto_0

    .line 651
    :cond_31
    const-string v0, "2448x2448"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 652
    const/16 v0, 0x30

    goto/16 :goto_0

    .line 654
    :cond_32
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 321
    packed-switch p0, :pswitch_data_0

    .line 430
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 323
    :pswitch_1
    const-string v0, "5312x2988"

    goto :goto_0

    .line 327
    :pswitch_2
    const-string v0, "4608x2592"

    goto :goto_0

    .line 329
    :pswitch_3
    const-string v0, "4128x3096"

    goto :goto_0

    .line 332
    :pswitch_4
    const-string v0, "3456x2592"

    goto :goto_0

    .line 335
    :pswitch_5
    const-string v0, "3096x3096"

    goto :goto_0

    .line 337
    :pswitch_6
    const-string v0, "4128x2322"

    goto :goto_0

    .line 339
    :pswitch_7
    const-string v0, "4096x3072"

    goto :goto_0

    .line 341
    :pswitch_8
    const-string v0, "4096x2304"

    goto :goto_0

    .line 343
    :pswitch_9
    const-string v0, "3984x2988"

    goto :goto_0

    .line 345
    :pswitch_a
    const-string v0, "3264x2448"

    goto :goto_0

    .line 347
    :pswitch_b
    const-string v0, "3264x1968"

    goto :goto_0

    .line 349
    :pswitch_c
    const-string v0, "3264x1836"

    goto :goto_0

    .line 351
    :pswitch_d
    const-string v0, "3072x2304"

    goto :goto_0

    .line 353
    :pswitch_e
    const-string v0, "3072x1856"

    goto :goto_0

    .line 355
    :pswitch_f
    const-string v0, "2976x2976"

    goto :goto_0

    .line 359
    :pswitch_10
    const-string v0, "2592x2592"

    goto :goto_0

    .line 361
    :pswitch_11
    const-string v0, "2592x1944"

    goto :goto_0

    .line 363
    :pswitch_12
    const-string v0, "2560x1920"

    goto :goto_0

    .line 365
    :pswitch_13
    const-string v0, "2560x1536"

    goto :goto_0

    .line 367
    :pswitch_14
    const-string v0, "2560x1440"

    goto :goto_0

    .line 369
    :pswitch_15
    const-string v0, "2048x1536"

    goto :goto_0

    .line 371
    :pswitch_16
    const-string v0, "2048x1232"

    goto :goto_0

    .line 373
    :pswitch_17
    const-string v0, "2048x1152"

    goto :goto_0

    .line 375
    :pswitch_18
    const-string v0, "2048x1104"

    goto :goto_0

    .line 378
    :pswitch_19
    const-string v0, "1920x1080"

    goto :goto_0

    .line 380
    :pswitch_1a
    const-string v0, "1632x880"

    goto :goto_0

    .line 382
    :pswitch_1b
    const-string v0, "1600x1200"

    goto :goto_0

    .line 384
    :pswitch_1c
    const-string v0, "1600x960"

    goto :goto_0

    .line 386
    :pswitch_1d
    const-string v0, "1536x864"

    goto :goto_0

    .line 388
    :pswitch_1e
    const-string v0, "1392x1392"

    goto :goto_0

    .line 390
    :pswitch_1f
    const-string v0, "1440x1080"

    goto :goto_0

    .line 392
    :pswitch_20
    const-string v0, "1280x960"

    goto :goto_0

    .line 394
    :pswitch_21
    const-string v0, "1280x800"

    goto :goto_0

    .line 396
    :pswitch_22
    const-string v0, "960x540"

    goto :goto_0

    .line 398
    :pswitch_23
    const-string v0, "800x480"

    goto :goto_0

    .line 400
    :pswitch_24
    const-string v0, "800x450"

    goto :goto_0

    .line 402
    :pswitch_25
    const-string v0, "640x480"

    goto :goto_0

    .line 404
    :pswitch_26
    const-string v0, "640x360"

    goto :goto_0

    .line 406
    :pswitch_27
    const-string v0, "1248x672"

    goto :goto_0

    .line 408
    :pswitch_28
    const-string v0, "1280x720"

    goto :goto_0

    .line 410
    :pswitch_29
    const-string v0, "960x720"

    goto :goto_0

    .line 412
    :pswitch_2a
    const-string v0, "720x480"

    goto :goto_0

    .line 414
    :pswitch_2b
    const-string v0, "400x240"

    goto/16 :goto_0

    .line 416
    :pswitch_2c
    const-string v0, "320x240"

    goto/16 :goto_0

    .line 418
    :pswitch_2d
    const-string v0, "176x144"

    goto/16 :goto_0

    .line 420
    :pswitch_2e
    const-string v0, "1024x768"

    goto/16 :goto_0

    .line 422
    :pswitch_2f
    const-string v0, "1024x576"

    goto/16 :goto_0

    .line 424
    :pswitch_30
    const-string v0, "3840x2160"

    goto/16 :goto_0

    .line 426
    :pswitch_31
    const-string v0, "1072x1072"

    goto/16 :goto_0

    .line 428
    :pswitch_32
    const-string v0, "2448x2448"

    goto/16 :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_1b
        :pswitch_1c
        :pswitch_20
        :pswitch_25
        :pswitch_23
        :pswitch_19
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_c
        :pswitch_14
        :pswitch_21
        :pswitch_17
        :pswitch_1e
        :pswitch_11
        :pswitch_18
        :pswitch_1a
        :pswitch_1d
        :pswitch_27
        :pswitch_7
        :pswitch_1f
        :pswitch_3
        :pswitch_6
        :pswitch_29
        :pswitch_24
        :pswitch_8
        :pswitch_2e
        :pswitch_22
        :pswitch_2f
        :pswitch_30
        :pswitch_26
        :pswitch_19
        :pswitch_5
        :pswitch_1
        :pswitch_9
        :pswitch_f
        :pswitch_31
        :pswitch_32
        :pswitch_2
        :pswitch_4
        :pswitch_10
    .end packed-switch
.end method

.method public static isSquareResolution(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 275
    packed-switch p0, :pswitch_data_0

    .line 282
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 280
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 287
    packed-switch p0, :pswitch_data_0

    .line 316
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 314
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
