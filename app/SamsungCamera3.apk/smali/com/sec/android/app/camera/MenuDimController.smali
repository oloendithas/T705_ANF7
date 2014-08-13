.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final AUTOCONTRAST:I = 0x7

.field public static final AUTO_NIGHT_DETECTION:I = 0x25

.field public static final BRIGHTNESS:I = 0x6

.field public static final BURST_SETTINGS:I = 0x22

.field public static final CAMCORDER_ANTISHAKE:I = 0x1f

.field public static final CAMCORDER_AUDIOZOOM:I = 0x29

.field public static final CAMCORDER_RESOLUTION:I = 0x1a

.field public static final CAMCORDER_SELF_SWITCH:I = 0x18

.field public static final CAMERA_ANTI_SHAKE:I = 0x5

.field public static final CAMERA_MODE:I = 0x0

.field public static final CAMERA_QUALITY:I = 0x21

.field public static final CAMERA_RESOLUTION:I = 0x11

.field public static final DUAL_CAPTURE_MODE:I = 0x27

.field public static final EFFECT:I = 0xa

.field public static final EXPOSURE_VALUE:I = 0x10

.field public static final FACE_DETECTION:I = 0x24

.field public static final FLASH_MODE:I = 0xd

.field public static final FLIP:I = 0x1c

.field public static final FOCUS_MODE:I = 0xe

.field public static final FOCUS_SELECT_MODE:I = 0x2f

.field public static final GPS:I = 0x26

.field public static final GUIDELINE:I = 0x16

.field public static final HDR:I = 0x4

.field public static final HELP:I = 0x2e

.field public static final IMAGE_VIEWER:I = 0x17

.field public static final ISO:I = 0x9

.field public static final METERING:I = 0xf

.field public static final NUM_OF_DIM_BUTTONS:I = 0x32

.field public static final QUICK_ACCESS:I = 0x30

.field public static final RECORDING:I = 0x2

.field public static final RECORDING_MODE:I = 0x19

.field public static final REFRESH:I = 0x1e

.field public static final REMOTE_VIEWFINDER:I = 0x2b

.field public static final REVIEW:I = 0x14

.field public static final SAVE_RICHTONE:I = 0x20

.field public static final SCENE_MODE:I = 0x8

.field public static final SETTINGS:I = 0x2d

.field public static final SHARE_MODE:I = 0x1d

.field public static final SHOOTING_MODE:I = 0x3

.field public static final SHUTTER:I = 0x1

.field public static final SHUTTER_SOUND:I = 0x1b

.field public static final SIDE_TOUCH_MODE:I = 0x2c

.field public static final SMILE_SHOT:I = 0xc

.field public static final STORAGE:I = 0x15

.field private static final TAG:Ljava/lang/String; = "MenuDimController"

.field public static final THUMBNAIL_LIST:I = 0x2a

.field public static final TIMER:I = 0x13

.field public static final TOUCH_TO_CAPTURE:I = 0x28

.field public static final VIEWMODE:I = 0x31

.field public static final VOICECOMMAND:I = 0x23

.field public static final WHITEBALANCE:I = 0x12

.field public static final ZOOM:I = 0xb


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLView;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSceneModeSet:Z

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousFlashValue:I

.field private mPreviousMeteringValue:I

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/16 v0, 0x32

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 104
    iput v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/MenuDimController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/MenuDimController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/MenuDimController;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/MenuDimController;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    return v0
.end method

.method private merge([Z)V
    .locals 4
    .param p1, "array"    # [Z

    .prologue
    .line 2145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 2146
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 2145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2148
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "button"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDim(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 816
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v0, v0, p1

    .line 820
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDimArray([Z)V
    .locals 3
    .param p1, "dimArray"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x32

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    return-void
.end method

.method public getSavedUserSettingValues(I)I
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 833
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 835
    .local v0, "dimReference":Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 838
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getkeyFromCommandId(I)I
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 650
    const/4 v0, -0x1

    .line 652
    .local v0, "key":I
    sparse-switch p1, :sswitch_data_0

    .line 797
    :goto_0
    return v0

    .line 654
    :sswitch_0
    const/4 v0, 0x0

    .line 655
    goto :goto_0

    .line 657
    :sswitch_1
    const/4 v0, 0x1

    .line 658
    goto :goto_0

    .line 660
    :sswitch_2
    const/4 v0, 0x2

    .line 661
    goto :goto_0

    .line 663
    :sswitch_3
    const/4 v0, 0x3

    .line 664
    goto :goto_0

    .line 666
    :sswitch_4
    const/16 v0, 0x8

    .line 667
    goto :goto_0

    .line 670
    :sswitch_5
    const/16 v0, 0xd

    .line 671
    goto :goto_0

    .line 673
    :sswitch_6
    const/16 v0, 0x11

    .line 674
    goto :goto_0

    .line 676
    :sswitch_7
    const/16 v0, 0xe

    .line 677
    goto :goto_0

    .line 679
    :sswitch_8
    const/16 v0, 0x13

    .line 680
    goto :goto_0

    .line 682
    :sswitch_9
    const/16 v0, 0x10

    .line 683
    goto :goto_0

    .line 685
    :sswitch_a
    const/16 v0, 0xa

    .line 686
    goto :goto_0

    .line 688
    :sswitch_b
    const/16 v0, 0x12

    .line 689
    goto :goto_0

    .line 691
    :sswitch_c
    const/16 v0, 0x9

    .line 692
    goto :goto_0

    .line 694
    :sswitch_d
    const/16 v0, 0xf

    .line 695
    goto :goto_0

    .line 698
    :sswitch_e
    const/4 v0, 0x4

    .line 699
    goto :goto_0

    .line 701
    :sswitch_f
    const/4 v0, 0x5

    .line 702
    goto :goto_0

    .line 704
    :sswitch_10
    const/4 v0, 0x7

    .line 705
    goto :goto_0

    .line 707
    :sswitch_11
    const/16 v0, 0x14

    .line 708
    goto :goto_0

    .line 710
    :sswitch_12
    const/16 v0, 0xb

    .line 711
    goto :goto_0

    .line 713
    :sswitch_13
    const/16 v0, 0x16

    .line 714
    goto :goto_0

    .line 716
    :sswitch_14
    const/16 v0, 0x15

    .line 717
    goto :goto_0

    .line 719
    :sswitch_15
    const/16 v0, 0x17

    .line 720
    goto :goto_0

    .line 722
    :sswitch_16
    const/16 v0, 0x19

    .line 723
    goto :goto_0

    .line 725
    :sswitch_17
    const/16 v0, 0x1a

    .line 726
    goto :goto_0

    .line 728
    :sswitch_18
    const/16 v0, 0x1f

    .line 729
    goto :goto_0

    .line 731
    :sswitch_19
    const/16 v0, 0x29

    .line 732
    goto :goto_0

    .line 734
    :sswitch_1a
    const/16 v0, 0x1d

    .line 735
    goto :goto_0

    .line 737
    :sswitch_1b
    const/16 v0, 0x1c

    .line 738
    goto :goto_0

    .line 740
    :sswitch_1c
    const/16 v0, 0x21

    .line 741
    goto :goto_0

    .line 743
    :sswitch_1d
    const/16 v0, 0x22

    .line 744
    goto :goto_0

    .line 746
    :sswitch_1e
    const/16 v0, 0x23

    .line 747
    goto :goto_0

    .line 749
    :sswitch_1f
    const/16 v0, 0x1b

    .line 750
    goto :goto_0

    .line 752
    :sswitch_20
    const/16 v0, 0x20

    .line 753
    goto :goto_0

    .line 755
    :sswitch_21
    const/16 v0, 0x24

    .line 756
    goto :goto_0

    .line 758
    :sswitch_22
    const/16 v0, 0x28

    .line 759
    goto :goto_0

    .line 761
    :sswitch_23
    const/16 v0, 0x25

    .line 762
    goto :goto_0

    .line 764
    :sswitch_24
    const/16 v0, 0x26

    .line 765
    goto :goto_0

    .line 767
    :sswitch_25
    const/16 v0, 0x27

    .line 768
    goto :goto_0

    .line 770
    :sswitch_26
    const/16 v0, 0x2a

    .line 771
    goto :goto_0

    .line 773
    :sswitch_27
    const/16 v0, 0x2b

    .line 774
    goto :goto_0

    .line 776
    :sswitch_28
    const/16 v0, 0x2c

    .line 777
    goto :goto_0

    .line 779
    :sswitch_29
    const/16 v0, 0x30

    .line 780
    goto :goto_0

    .line 782
    :sswitch_2a
    const/16 v0, 0x2d

    .line 783
    goto :goto_0

    .line 785
    :sswitch_2b
    const/16 v0, 0x2e

    .line 786
    goto :goto_0

    .line 788
    :sswitch_2c
    const/16 v0, 0x2f

    .line 789
    goto :goto_0

    .line 791
    :sswitch_2d
    const/16 v0, 0x31

    .line 792
    goto/16 :goto_0

    .line 652
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_e
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_24
        0x15 -> :sswitch_1f
        0x16 -> :sswitch_14
        0x17 -> :sswitch_2d
        0x1b -> :sswitch_2a
        0x1d -> :sswitch_15
        0x20 -> :sswitch_1
        0x22 -> :sswitch_20
        0x24 -> :sswitch_0
        0x33 -> :sswitch_1b
        0x35 -> :sswitch_1a
        0x3f -> :sswitch_1d
        0x41 -> :sswitch_2
        0x47 -> :sswitch_1e
        0x56 -> :sswitch_21
        0x5c -> :sswitch_23
        0x5e -> :sswitch_25
        0x61 -> :sswitch_22
        0x62 -> :sswitch_2c
        0x6f -> :sswitch_2b
        0x70 -> :sswitch_28
        0x71 -> :sswitch_26
        0x72 -> :sswitch_27
        0x78 -> :sswitch_29
        0xbb8 -> :sswitch_16
        0xbb9 -> :sswitch_17
        0xbbf -> :sswitch_18
        0xbc3 -> :sswitch_e
        0xbc4 -> :sswitch_5
        0xbc7 -> :sswitch_19
    .end sparse-switch
.end method

.method public processDim(Z)V
    .locals 3
    .param p1, "isRefresh"    # Z

    .prologue
    .line 2131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    .line 2132
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 2131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2135
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2136
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    .line 2140
    :cond_1
    if-eqz p1, :cond_2

    .line 2141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 2142
    :cond_2
    return-void
.end method

.method public declared-synchronized refreshButtonDim(II)V
    .locals 11
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 863
    monitor-enter p0

    :try_start_0
    const-string v5, "MenuDimController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshButtonDim: menuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " modeid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 868
    .local v0, "cs":Lcom/sec/android/app/camera/CameraSettings;
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .line 870
    .local v1, "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    if-eqz v1, :cond_0

    .line 871
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    .line 872
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string v5, "MenuDimController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoring user setting values. CameraResolutionChanged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CamcorderResolutionChanged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .end local v1    # "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 877
    .restart local v1    # "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 2091
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isConnectHeadSet()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xbc7

    if-ne p1, v5, :cond_2

    .line 2092
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2093
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2094
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2097
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2098
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2101
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2102
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2103
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2104
    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2105
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 2108
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "com.sec.android.gallery3d"

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2109
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2110
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x14

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2111
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1d

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2112
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 2115
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2116
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2117
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2118
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2121
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    const/16 v5, 0x24

    if-ne p1, v5, :cond_53

    .line 2124
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->processDim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2128
    :goto_1
    monitor-exit p0

    return-void

    .line 880
    :sswitch_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 881
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1c

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 882
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1c

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 883
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 885
    :cond_7
    if-eqz p2, :cond_1

    .line 886
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 888
    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 890
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_9

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 891
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_9

    .line 892
    :cond_8
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 894
    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 863
    .end local v0    # "cs":Lcom/sec/android/app/camera/CameraSettings;
    .end local v1    # "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 905
    .restart local v0    # "cs":Lcom/sec/android/app/camera/CameraSettings;
    .restart local v1    # "dimArray":Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :sswitch_1
    if-nez p2, :cond_1

    .line 906
    const/4 v5, 0x2

    :try_start_2
    new-array v5, v5, [I

    fill-array-data v5, :array_a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 907
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 908
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x23

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 912
    :sswitch_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 913
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1c

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 914
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1c

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 915
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 917
    :cond_a
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1455
    :pswitch_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1457
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1458
    :cond_b
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1459
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1460
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_f

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1463
    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1464
    :cond_d
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 919
    :pswitch_2
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_10

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 921
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_11

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 922
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_12

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 925
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 926
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 932
    :pswitch_3
    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_13

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 934
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_14

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 935
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_15

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 938
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xa

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 952
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_e

    .line 957
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 958
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 966
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    .line 953
    :cond_e
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x24

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 954
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x24

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 955
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x24

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_2

    .line 960
    :cond_f
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_10

    .line 961
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_3

    .line 963
    :cond_10
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_3

    .line 975
    :pswitch_4
    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_16

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 977
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_17

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 980
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_18

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 981
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 983
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 984
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 993
    :goto_4
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    .line 999
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    .line 987
    :cond_11
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_4

    .line 1002
    :pswitch_5
    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_19

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1004
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_1a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1006
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_1b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1007
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1008
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1017
    :goto_5
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    .line 1023
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1029
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 1011
    :cond_12
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_5

    .line 1033
    :pswitch_6
    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_1c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1035
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_1d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1037
    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_1e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1038
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1039
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1047
    :goto_6
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1048
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 1041
    :cond_13
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_6

    .line 1051
    :pswitch_7
    const/16 v5, 0x17

    new-array v5, v5, [I

    fill-array-data v5, :array_1f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1053
    const/16 v5, 0x14

    new-array v5, v5, [I

    fill-array-data v5, :array_20

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1055
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_21

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1057
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1059
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1060
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1064
    :goto_7
    const-string v5, "800x450"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1065
    .local v4, "resolutionId":I
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1066
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1067
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 1062
    .end local v4    # "resolutionId":I
    :cond_14
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_7

    .line 1070
    :pswitch_8
    const/16 v5, 0x14

    new-array v5, v5, [I

    fill-array-data v5, :array_22

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1072
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_23

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1074
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_24

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1076
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1077
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1081
    :goto_8
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1086
    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 1090
    .local v3, "res_id":I
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    .line 1079
    .end local v3    # "res_id":I
    :cond_15
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_8

    .line 1094
    :pswitch_9
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_25

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1096
    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_26

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1098
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_27

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1099
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1100
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1104
    :goto_9
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto/16 :goto_0

    .line 1102
    :cond_16
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_9

    .line 1107
    :pswitch_a
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_28

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1108
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_29

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1109
    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_2a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1110
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1111
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1119
    :goto_a
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_0

    .line 1114
    :cond_17
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_a

    .line 1122
    :pswitch_b
    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_2b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1124
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_2c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1125
    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_2d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1131
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1132
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1141
    :goto_b
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    .line 1145
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setBeautyLevel(I)V

    goto/16 :goto_0

    .line 1135
    :cond_18
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_b

    .line 1149
    :pswitch_c
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_2e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1151
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_2f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1153
    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_30

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1154
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1155
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1157
    :cond_19
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1161
    :pswitch_d
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_31

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1163
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_32

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1165
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_33

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1166
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1167
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1169
    :cond_1a
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1173
    :pswitch_e
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_34

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1175
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_35

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1177
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_36

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1178
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1181
    :pswitch_f
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_37

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1183
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_38

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1184
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_39

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1185
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1186
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1188
    :cond_1b
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1198
    :pswitch_10
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_3a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1200
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_3b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1203
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_3c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1205
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1206
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1208
    :cond_1c
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1212
    :pswitch_11
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1213
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_3d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1215
    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_3e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1217
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_3f

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1224
    :goto_c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1225
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1219
    :cond_1d
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_40

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1221
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_41

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1222
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_42

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_c

    .line 1227
    :cond_1e
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_1f

    .line 1228
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1230
    :cond_1f
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1235
    :pswitch_12
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_43

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1237
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_44

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1239
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_45

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1241
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1242
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1244
    :cond_20
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1248
    :pswitch_13
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_46

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1250
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_47

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1252
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_48

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1254
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1255
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1257
    :cond_21
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_22

    .line 1258
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1260
    :cond_22
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1265
    :pswitch_14
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_49

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1267
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_4a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1269
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_4b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1270
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1271
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1272
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1274
    :cond_23
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1278
    :pswitch_15
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_4c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1280
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_4d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1282
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_4e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1283
    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1284
    .restart local v4    # "resolutionId":I
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1285
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1286
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1290
    :goto_d
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    .line 1288
    :cond_24
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_d

    .line 1293
    .end local v4    # "resolutionId":I
    :pswitch_16
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSoundShotMode(I)V

    .line 1302
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_4f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1303
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_50

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1304
    const/16 v5, 0xe

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setChangedOnly(IZ)V

    .line 1306
    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_51

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1324
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v5

    if-nez v5, :cond_25

    .line 1325
    const-string v5, "ro.csc.country_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "JP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 1326
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 1329
    :cond_25
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1330
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1332
    :cond_26
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_27

    .line 1333
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1335
    :cond_27
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1340
    :pswitch_17
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_52

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1342
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_53

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1344
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_54

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1347
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1348
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1352
    :goto_e
    const-string v5, "800x450"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1353
    .restart local v4    # "resolutionId":I
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    .line 1350
    .end local v4    # "resolutionId":I
    :cond_28
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_e

    .line 1356
    :pswitch_18
    const/16 v5, 0x19

    new-array v5, v5, [I

    fill-array-data v5, :array_55

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1358
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_56

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1360
    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_57

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1363
    const-string v5, "3264x2448"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1364
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1367
    :pswitch_19
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_58

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1369
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_59

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1371
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_5a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1372
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1373
    const-string v5, "3264x1836"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1377
    .restart local v4    # "resolutionId":I
    :goto_f
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1378
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1379
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1383
    :goto_10
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    .line 1375
    .end local v4    # "resolutionId":I
    :cond_29
    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "resolutionId":I
    goto :goto_f

    .line 1381
    :cond_2a
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_10

    .line 1386
    .end local v4    # "resolutionId":I
    :pswitch_1a
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_5b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1388
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_5c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1390
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_5d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1391
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1392
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->updateCameraResolutionForDual()V

    .line 1394
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1395
    :cond_2b
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1406
    :goto_11
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_2c

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_2e

    .line 1407
    :cond_2c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1397
    :cond_2d
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_11

    .line 1409
    :cond_2e
    const/16 v5, 0xbb9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_0

    .line 1413
    :pswitch_1b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1414
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_5e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1416
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_5f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1418
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_60

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1426
    :goto_12
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1427
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1420
    :cond_2f
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_61

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1422
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_62

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1423
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_63

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_12

    .line 1429
    :cond_30
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_31

    .line 1430
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1432
    :cond_31
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1437
    :pswitch_1c
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_64

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1439
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_65

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1440
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_66

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1441
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1442
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1450
    :goto_13
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    .line 1451
    const-string v5, "2048x1152"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1452
    .restart local v4    # "resolutionId":I
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    .line 1444
    .end local v4    # "resolutionId":I
    :cond_32
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_33

    .line 1445
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_13

    .line 1447
    :cond_33
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_13

    .line 1466
    :cond_34
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_35

    .line 1467
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1469
    :cond_35
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1480
    :sswitch_3
    if-eqz p2, :cond_37

    .line 1482
    iget-boolean v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-nez v5, :cond_36

    .line 1483
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 1484
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 1485
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 1488
    :cond_36
    packed-switch p2, :pswitch_data_1

    .line 1594
    :goto_14
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 1595
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto/16 :goto_0

    .line 1490
    :pswitch_1d
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_67

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1491
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_68

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1492
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_69

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1494
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1499
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_14

    .line 1502
    :pswitch_1e
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_6a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1503
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_6b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1504
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_6c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1505
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1506
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_14

    .line 1509
    :pswitch_1f
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_6d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1510
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_6e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1511
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_6f

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1513
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_14

    .line 1516
    :pswitch_20
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_70

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1517
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_71

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1518
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_72

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1520
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1521
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1524
    :pswitch_21
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_73

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1525
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_74

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1526
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_75

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1528
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1529
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    .line 1530
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1533
    :pswitch_22
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_76

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1534
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_77

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1535
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_78

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1536
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1537
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1540
    :pswitch_23
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_79

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1541
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_7a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1542
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_7b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1543
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1544
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1547
    :pswitch_24
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_7c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1548
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_7d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1549
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_7e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1550
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1553
    :pswitch_25
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_7f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1554
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_80

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1555
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_81

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1557
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1560
    :pswitch_26
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_82

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1561
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_83

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1562
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_84

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1563
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1566
    :pswitch_27
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_85

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1567
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_86

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1568
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_87

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1572
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1573
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1576
    :pswitch_28
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_88

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1577
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_89

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1578
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_8a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1579
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1580
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1583
    :pswitch_29
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_8b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1584
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_8c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1585
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_8d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1587
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_14

    .line 1597
    :cond_37
    iget-boolean v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-eqz v5, :cond_1

    .line 1598
    iget v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    .line 1599
    iget v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1600
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    goto/16 :goto_0

    .line 1605
    :sswitch_4
    if-eqz p2, :cond_1

    .line 1606
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x5

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1607
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x5

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1608
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_0

    .line 1613
    :sswitch_5
    if-ne p2, v8, :cond_1

    .line 1614
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_8e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1615
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_8f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1616
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_90

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1617
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto/16 :goto_0

    .line 1621
    :sswitch_6
    if-ne p2, v8, :cond_1

    .line 1622
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1623
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1624
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1628
    :sswitch_7
    if-ne p2, v8, :cond_1

    .line 1629
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x10

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1630
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x10

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1631
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x10

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1635
    :sswitch_8
    if-eqz p2, :cond_38

    .line 1641
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_91

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1642
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_92

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1643
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1647
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xa

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1648
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xa

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1649
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xa

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1652
    :cond_38
    if-ne p2, v8, :cond_3c

    .line 1653
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1654
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1655
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1656
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 1657
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1658
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1659
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1660
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1662
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 1663
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1667
    .restart local v4    # "resolutionId":I
    :goto_15
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1665
    .end local v4    # "resolutionId":I
    :cond_39
    const/16 v4, 0x13

    .restart local v4    # "resolutionId":I
    goto :goto_15

    .line 1669
    .end local v4    # "resolutionId":I
    :cond_3a
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1670
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1672
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 1673
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1677
    .restart local v4    # "resolutionId":I
    :goto_16
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1675
    .end local v4    # "resolutionId":I
    :cond_3b
    const/16 v4, 0x13

    .restart local v4    # "resolutionId":I
    goto :goto_16

    .line 1679
    .end local v4    # "resolutionId":I
    :cond_3c
    const/4 v5, 0x6

    if-ne p2, v5, :cond_3d

    .line 1680
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    goto/16 :goto_0

    .line 1681
    :cond_3d
    if-nez p2, :cond_3f

    .line 1682
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 1683
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1684
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1685
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1686
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1687
    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1690
    :cond_3e
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1691
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1692
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1693
    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1696
    :cond_3f
    if-ne p2, v9, :cond_40

    .line 1697
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_93

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1698
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_94

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1699
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1700
    const-string v5, "1280x720"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1701
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    goto/16 :goto_0

    .line 1702
    :cond_40
    if-ne p2, v10, :cond_41

    .line 1703
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_95

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1704
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_96

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1705
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1706
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 1707
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1708
    :cond_41
    const/4 v5, 0x4

    if-ne p2, v5, :cond_1

    .line 1709
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 1710
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_97

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1711
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_98

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1712
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1713
    const/16 v5, 0x2a

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1718
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1719
    :cond_42
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1720
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1724
    :sswitch_a
    if-ne p2, v8, :cond_45

    .line 1725
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isFromSmusician()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1726
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_99

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1728
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_9a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1730
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_9b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1731
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1732
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isPanoramaFromSmusician()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1733
    const/16 v5, 0x17

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    .line 1735
    :cond_43
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_9c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1736
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_9d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1737
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_9e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1738
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1739
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_9f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1741
    :cond_44
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_0

    .line 1743
    :cond_45
    if-ne p2, v9, :cond_47

    .line 1744
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1745
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_a0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1747
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_a1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1749
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_a2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1750
    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1758
    :goto_17
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    goto/16 :goto_0

    .line 1752
    :cond_46
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_a3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1754
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_a4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1756
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_a5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_17

    .line 1759
    :cond_47
    if-ne p2, v10, :cond_49

    .line 1761
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_a6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1767
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_a7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1769
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_a8

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1770
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1771
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    .line 1772
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 1773
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1777
    .restart local v4    # "resolutionId":I
    :goto_18
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1775
    .end local v4    # "resolutionId":I
    :cond_48
    const/16 v4, 0x13

    .restart local v4    # "resolutionId":I
    goto :goto_18

    .line 1778
    .end local v4    # "resolutionId":I
    :cond_49
    const/4 v5, 0x4

    if-ne p2, v5, :cond_1

    .line 1780
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_a9

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1786
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_aa

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1788
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_ab

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1789
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    goto/16 :goto_0

    .line 1793
    :sswitch_b
    if-nez p2, :cond_1

    .line 1794
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x17

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1795
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x17

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1816
    :sswitch_c
    const/16 v5, 0xd

    if-eq p2, v5, :cond_4a

    const/16 v5, 0x1f

    if-eq p2, v5, :cond_4a

    const/16 v5, 0xe

    if-eq p2, v5, :cond_4a

    .line 1817
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1f

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1818
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1f

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1819
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1821
    :cond_4a
    const/16 v5, 0x28

    if-eq p2, v5, :cond_4b

    const/16 v5, 0x15

    if-ne p2, v5, :cond_1

    .line 1822
    :cond_4b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4c

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1823
    :cond_4c
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1824
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_0

    .line 1832
    :sswitch_d
    invoke-static {p2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1833
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x31

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1834
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x31

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1838
    :sswitch_e
    if-ne p2, v8, :cond_1

    .line 1839
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_ac

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1840
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_ad

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1841
    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_ae

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1842
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1855
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    .line 1856
    .local v2, "menuResourceDepot":Lcom/sec/android/app/camera/MenuResourceDepot;
    const/16 v5, 0xbc1

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v5

    if-gt v5, v8, :cond_4d

    .line 1857
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1859
    :cond_4d
    const/16 v5, 0x65

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v5

    if-gt v5, v8, :cond_1

    .line 1860
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x11

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_0

    .line 1865
    .end local v2    # "menuResourceDepot":Lcom/sec/android/app/camera/MenuResourceDepot;
    :sswitch_f
    if-ne p2, v8, :cond_1

    .line 1866
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_af

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1867
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1868
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x8

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1869
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_0

    .line 1873
    :sswitch_10
    if-ne p2, v8, :cond_1

    .line 1874
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1875
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b2

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1876
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1880
    :sswitch_11
    if-eqz p2, :cond_4e

    .line 1890
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_b4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1891
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_b5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1892
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_b6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1896
    :cond_4e
    const/4 v5, 0x5

    if-ne p2, v5, :cond_4f

    .line 1914
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_b7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1917
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1918
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x23

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1919
    :cond_4f
    if-ne p2, v9, :cond_50

    .line 1920
    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_b9

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1921
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_ba

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1922
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_bb

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1923
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_0

    .line 1924
    :cond_50
    if-ne p2, v8, :cond_1

    .line 1925
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_bc

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1926
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_bd

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1927
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_be

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1928
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_0

    .line 1932
    :sswitch_12
    if-ne p2, v8, :cond_1

    .line 1933
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_bf

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1934
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_c0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1935
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_c1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1940
    :sswitch_13
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 1942
    :pswitch_2a
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_c2

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1943
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_c3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1946
    :pswitch_2b
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_c4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1947
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_c5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1950
    :pswitch_2c
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_c6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1951
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_c7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1952
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_0

    .line 1955
    :pswitch_2d
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_c8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1956
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_c9

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1963
    :sswitch_14
    packed-switch p2, :pswitch_data_3

    :pswitch_2e
    goto/16 :goto_0

    .line 1965
    :pswitch_2f
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_ca

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1966
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_cb

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1969
    :pswitch_30
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_cc

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1970
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_cd

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1977
    :sswitch_15
    packed-switch p2, :pswitch_data_4

    :pswitch_31
    goto/16 :goto_0

    .line 1979
    :pswitch_32
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_ce

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1980
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_cf

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1983
    :pswitch_33
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_d0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1984
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_d1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1987
    :pswitch_34
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_d2

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1988
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_d3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1997
    :sswitch_16
    if-ne p2, v8, :cond_1

    .line 1998
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xd

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1999
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xd

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2000
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    .line 2006
    :sswitch_17
    if-ne p2, v8, :cond_1

    .line 2007
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isEnableDuringCall()Z

    move-result v5

    if-eq v5, v8, :cond_51

    .line 2012
    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_d4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2013
    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_d5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2015
    :goto_19
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x23

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2016
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_0

    .line 2009
    :cond_51
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_d6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2010
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_d7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto :goto_19

    .line 2021
    :sswitch_18
    if-ne p2, v8, :cond_1

    .line 2022
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_d8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2023
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_d9

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2024
    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_da

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2025
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto/16 :goto_0

    .line 2030
    :sswitch_19
    rem-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_1

    .line 2031
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2032
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2033
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 2038
    :sswitch_1a
    if-eqz p2, :cond_1

    .line 2039
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x22

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2040
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x22

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2041
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x22

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 2046
    :sswitch_1b
    if-nez p2, :cond_52

    .line 2047
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2048
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2049
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 2056
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 2059
    :cond_52
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 2063
    :sswitch_1c
    const/16 v5, 0x33

    if-ne p2, v5, :cond_1

    .line 2064
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_0

    .line 2068
    :sswitch_1d
    if-ne p2, v8, :cond_1

    .line 2069
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_db

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2070
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_dc

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2071
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_dd

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 2075
    :sswitch_1e
    if-nez p2, :cond_1

    .line 2076
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_de

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 2077
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_df

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 2078
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2082
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 2126
    :cond_53
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->processDim(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 877
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_d
        0x6 -> :sswitch_1a
        0x8 -> :sswitch_0
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_7
        0x16 -> :sswitch_9
        0x1d -> :sswitch_b
        0x24 -> :sswitch_e
        0x35 -> :sswitch_11
        0x3f -> :sswitch_f
        0x41 -> :sswitch_1
        0x57 -> :sswitch_10
        0x59 -> :sswitch_18
        0x5a -> :sswitch_1c
        0x63 -> :sswitch_12
        0x75 -> :sswitch_19
        0x77 -> :sswitch_1b
        0x79 -> :sswitch_5
        0xc9 -> :sswitch_13
        0xca -> :sswitch_14
        0xcb -> :sswitch_15
        0x12c -> :sswitch_16
        0x136 -> :sswitch_17
        0x137 -> :sswitch_1d
        0x139 -> :sswitch_1e
        0xbb8 -> :sswitch_8
        0xbb9 -> :sswitch_c
    .end sparse-switch

    .line 2102
    :array_0
    .array-data 4
        0x3
        0x2f
        0xa
        0x1d
        0x22
        0x23
        0x26
        0x2e
        0x19
        0x2b
    .end array-data

    .line 2103
    :array_1
    .array-data 4
        0x3
        0x2f
        0xa
        0x1d
        0x22
        0x23
        0x26
        0x19
        0x2b
    .end array-data

    .line 2104
    :array_2
    .array-data 4
        0x2f
        0xa
        0x1d
        0x22
        0x23
        0x26
        0x19
        0x2b
    .end array-data

    .line 2109
    :array_3
    .array-data 4
        0x14
        0x1d
    .end array-data

    .line 2116
    :array_4
    .array-data 4
        0x3
        0x2b
        0x2f
        0x2e
        0x26
    .end array-data

    .line 2117
    :array_5
    .array-data 4
        0x2b
        0x2f
        0x26
    .end array-data

    .line 2118
    :array_6
    .array-data 4
        0x2b
        0x2f
        0x26
    .end array-data

    .line 886
    :array_7
    .array-data 4
        0x4
        0x22
        0xd
        0xe
        0x1f
        0x9
        0xf
        0x19
        0x12
        0x10
        0x24
        0x25
        0x14
        0x2f
    .end array-data

    .line 888
    :array_8
    .array-data 4
        0x4
        0x22
        0xd
        0xe
        0x1f
        0x9
        0xf
        0x12
        0x10
        0x24
        0x25
        0x14
        0x2f
    .end array-data

    .line 890
    :array_9
    .array-data 4
        0x4
        0x22
        0xd
        0x9
        0xf
        0x12
        0x10
        0x24
        0x25
        0x14
        0x2f
    .end array-data

    .line 906
    :array_a
    .array-data 4
        0x2
        0x23
    .end array-data

    .line 907
    :array_b
    .array-data 4
        0x2
        0x23
    .end array-data

    .line 917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_d
        :pswitch_10
        :pswitch_0
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_16
        :pswitch_0
        :pswitch_18
        :pswitch_7
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
    .end packed-switch

    .line 1455
    :array_c
    .array-data 4
        0x20
        0x27
    .end array-data

    .line 1458
    :array_d
    .array-data 4
        0x4
        0x2f
    .end array-data

    .line 1459
    :array_e
    .array-data 4
        0x4
        0x2f
    .end array-data

    .line 1460
    :array_f
    .array-data 4
        0x4
        0x2f
    .end array-data

    .line 919
    :array_10
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x11
        0x9
        0x5
        0x21
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2f
    .end array-data

    .line 921
    :array_11
    .array-data 4
        0x4
        0x8
        0xd
        0x11
        0x9
        0x5
        0x21
        0x22
        0x24
        0x25
        0x2f
    .end array-data

    .line 922
    :array_12
    .array-data 4
        0x4
        0x8
        0xd
        0x9
        0x5
        0x22
        0x24
        0x25
        0x2f
    .end array-data

    .line 932
    :array_13
    .array-data 4
        0x8
        0x23
        0xd
        0xe
        0x13
        0x21
        0x22
        0x25
        0x20
        0x1d
        0x2b
        0x27
        0x28
    .end array-data

    .line 934
    :array_14
    .array-data 4
        0x8
        0x23
        0xd
        0xe
        0x13
        0x21
        0x22
        0x25
        0x1d
        0x2b
        0x28
    .end array-data

    .line 935
    :array_15
    .array-data 4
        0x21
        0x8
        0x23
        0x22
        0x25
        0x13
        0x1d
        0x2b
        0x28
    .end array-data

    .line 975
    :array_16
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 977
    :array_17
    .array-data 4
        0x4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 980
    :array_18
    .array-data 4
        0x4
        0x8
        0x9
        0x5
        0x22
        0x12
        0x10
        0x14
        0x25
        0x13
        0x2b
        0x2f
    .end array-data

    .line 1002
    :array_19
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1004
    :array_1a
    .array-data 4
        0x4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1006
    :array_1b
    .array-data 4
        0x4
        0x8
        0x9
        0x5
        0x12
        0x10
        0x22
        0x14
        0x25
        0x13
        0x2b
        0x2f
    .end array-data

    .line 1033
    :array_1c
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1035
    :array_1d
    .array-data 4
        0x4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1037
    :array_1e
    .array-data 4
        0x4
        0x8
        0x9
        0x5
        0x13
        0x12
        0x10
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1051
    :array_1f
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x9
        0xe
        0x12
        0x10
        0x1f
        0x20
        0x1d
        0x5
        0x21
        0x22
        0x14
        0x11
        0x24
        0x25
        0x26
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1053
    :array_20
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x12
        0x10
        0x1f
        0x1d
        0x5
        0x21
        0x22
        0x14
        0x11
        0x24
        0x25
        0x26
        0x2b
        0x2f
    .end array-data

    .line 1055
    :array_21
    .array-data 4
        0x4
        0xb
        0x8
        0x9
        0x12
        0x10
        0x5
        0x22
        0x14
        0x24
        0x25
        0x26
        0x1d
        0x2b
        0x2f
    .end array-data

    .line 1070
    :array_22
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x20
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x9
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1072
    :array_23
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    .line 1074
    :array_24
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x10
        0x13
        0x12
        0x5
        0x22
        0x24
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    .line 1094
    :array_25
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0xe
        0x13
        0x12
        0x7
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1096
    :array_26
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0xe
        0x13
        0x12
        0x7
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1098
    :array_27
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x13
        0x12
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1107
    :array_28
    .array-data 4
        0x4
        0xa
        0x8
        0xe
        0x12
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1108
    :array_29
    .array-data 4
        0x4
        0x8
        0xe
        0x12
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1109
    :array_2a
    .array-data 4
        0x4
        0x8
        0x12
        0x22
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1122
    :array_2b
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0xe
        0x12
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1124
    :array_2c
    .array-data 4
        0x4
        0x8
        0xd
        0xe
        0x12
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1125
    :array_2d
    .array-data 4
        0x4
        0x8
        0xd
        0x12
        0x22
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1149
    :array_2e
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x9
        0x5
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1151
    :array_2f
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x9
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1153
    :array_30
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x13
        0x12
        0x9
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1161
    :array_31
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0xe
        0x12
        0x5
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1163
    :array_32
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0xe
        0x12
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1165
    :array_33
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1173
    :array_34
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x5
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1175
    :array_35
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1177
    :array_36
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x13
        0x12
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1181
    :array_37
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x11
        0xe
        0x13
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1183
    :array_38
    .array-data 4
        0x4
        0x8
        0xd
        0x11
        0xe
        0x13
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1184
    :array_39
    .array-data 4
        0x4
        0x8
        0xd
        0x13
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1198
    :array_3a
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0xe
        0x12
        0x7
        0x5
        0x9
        0xf
        0x22
        0x24
        0x25
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1200
    :array_3b
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0xe
        0x12
        0x7
        0x5
        0x9
        0xf
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1203
    :array_3c
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x7
        0x5
        0x22
        0x9
        0xf
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1213
    :array_3d
    .array-data 4
        0x4
        0xa
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x20
        0x9
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1215
    :array_3e
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    .line 1217
    :array_3f
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    .line 1219
    :array_40
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x20
        0x9
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1221
    :array_41
    .array-data 4
        0x4
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    .line 1222
    :array_42
    .array-data 4
        0x4
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    .line 1235
    :array_43
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1237
    :array_44
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1239
    :array_45
    .array-data 4
        0x4
        0x10
        0xd
        0x12
        0x9
        0xf
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1248
    :array_46
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1250
    :array_47
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1252
    :array_48
    .array-data 4
        0x4
        0x10
        0xd
        0x12
        0x9
        0xf
        0x22
        0x5
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1265
    :array_49
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0x5
        0xe
        0x7
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1267
    :array_4a
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0x5
        0xe
        0x7
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1269
    :array_4b
    .array-data 4
        0x4
        0x10
        0x12
        0x9
        0xf
        0x22
        0x5
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1278
    :array_4c
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x11
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1280
    :array_4d
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x11
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1282
    :array_4e
    .array-data 4
        0x4
        0xb
        0x8
        0x9
        0x5
        0x13
        0x12
        0x10
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1302
    :array_4f
    .array-data 4
        0x4
        0xa
        0x1b
        0x23
        0x13
        0x22
        0x25
        0x14
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1303
    :array_50
    .array-data 4
        0x4
        0x1b
        0x23
        0x13
        0x22
        0x25
        0x14
        0xe
        0x2b
        0x2f
    .end array-data

    .line 1306
    :array_51
    .array-data 4
        0x4
        0x23
        0x13
        0x22
        0x25
        0x14
        0x2b
        0x2f
    .end array-data

    .line 1340
    :array_52
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x9
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x20
        0x1d
        0xb
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1342
    :array_53
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x9
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x1d
        0xb
        0x2b
        0x2f
    .end array-data

    .line 1344
    :array_54
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x13
        0x9
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x1d
        0xb
        0x2b
        0x2f
    .end array-data

    .line 1356
    :array_55
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x20
        0x14
        0x5
        0x9
        0xf
        0x22
        0x24
        0x25
        0x16
        0x23
        0x1d
        0x28
        0x27
        0x1
        0x2b
        0x2f
    .end array-data

    .line 1358
    :array_56
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x14
        0x5
        0x9
        0xf
        0x22
        0x24
        0x25
        0x16
        0x23
        0x1d
        0x28
        0x2b
        0x2f
    .end array-data

    .line 1360
    :array_57
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x10
        0x13
        0x14
        0x5
        0xf
        0x9
        0x22
        0x24
        0x25
        0x16
        0x23
        0x1d
        0x28
        0x2b
        0x2f
    .end array-data

    .line 1367
    :array_58
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x11
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    .line 1369
    :array_59
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x11
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1371
    :array_5a
    .array-data 4
        0x4
        0xb
        0x8
        0x9
        0x5
        0x13
        0x12
        0x10
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    .line 1386
    :array_5b
    .array-data 4
        0x4
        0xa
        0x22
        0xe
        0x5
        0x1f
        0x19
        0x1c
        0x24
        0x14
        0x25
        0x29
        0x20
        0x2b
        0x2f
    .end array-data

    .line 1388
    :array_5c
    .array-data 4
        0x4
        0x22
        0x5
        0x1f
        0x19
        0x1c
        0x24
        0x14
        0x25
        0x29
        0x2b
        0x2f
    .end array-data

    .line 1390
    :array_5d
    .array-data 4
        0x4
        0xa
        0x22
        0x5
        0x19
        0x1c
        0x24
        0x14
        0x25
        0x29
        0x2b
        0x2f
    .end array-data

    .line 1414
    :array_5e
    .array-data 4
        0x4
        0xa
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x20
        0x9
        0x27
        0x2b
    .end array-data

    .line 1416
    :array_5f
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
    .end array-data

    .line 1418
    :array_60
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
    .end array-data

    .line 1420
    :array_61
    .array-data 4
        0x4
        0xa
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x20
        0x9
        0x27
        0x2b
    .end array-data

    .line 1422
    :array_62
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
    .end array-data

    .line 1423
    :array_63
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
    .end array-data

    .line 1437
    :array_64
    .array-data 4
        0x4
        0x1
        0x22
        0xe
        0x25
        0x11
        0x20
        0x27
        0x2b
        0x28
        0xb
        0x13
        0xa
        0x24
        0x2c
        0x23
        0x2f
        0xd
        0x9
        0xf
        0x10
    .end array-data

    .line 1439
    :array_65
    .array-data 4
        0x4
        0x22
        0xe
        0x25
        0x11
        0x2b
        0x28
        0xb
        0x13
        0x24
        0x2c
        0x23
        0x2f
        0xd
        0x9
        0xf
        0x10
    .end array-data

    .line 1440
    :array_66
    .array-data 4
        0x4
        0x22
        0xe
        0x25
        0x2b
        0x28
        0xb
        0x13
        0xa
        0x24
        0x23
        0x2f
        0xd
        0x9
        0xf
        0x10
    .end array-data

    .line 1488
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1e
        :pswitch_25
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch

    .line 1490
    :array_67
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1491
    :array_68
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1492
    :array_69
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1502
    :array_6a
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1503
    :array_6b
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1504
    :array_6c
    .array-data 4
        0x10
        0x12
        0x9
        0xe
        0x22
    .end array-data

    .line 1509
    :array_6d
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1510
    :array_6e
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1511
    :array_6f
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1516
    :array_70
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1517
    :array_71
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1518
    :array_72
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1524
    :array_73
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1525
    :array_74
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1526
    :array_75
    .array-data 4
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1533
    :array_76
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1534
    :array_77
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1535
    :array_78
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1540
    :array_79
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1541
    :array_7a
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1542
    :array_7b
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1547
    :array_7c
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1548
    :array_7d
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1549
    :array_7e
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1553
    :array_7f
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1554
    :array_80
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1555
    :array_81
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1560
    :array_82
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1561
    :array_83
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1562
    :array_84
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1566
    :array_85
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1567
    :array_86
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1568
    :array_87
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1576
    :array_88
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1577
    :array_89
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1578
    :array_8a
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    .line 1583
    :array_8b
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1584
    :array_8c
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    .line 1585
    :array_8d
    .array-data 4
        0x10
        0x12
        0x9
        0xe
        0x22
    .end array-data

    .line 1614
    :array_8e
    .array-data 4
        0x9
        0xa
        0x10
        0xf
        0x1f
    .end array-data

    .line 1615
    :array_8f
    .array-data 4
        0x9
        0xa
        0x10
        0xf
        0x1f
    .end array-data

    .line 1616
    :array_90
    .array-data 4
        0x9
        0xa
        0x10
        0x1f
    .end array-data

    .line 1641
    :array_91
    .array-data 4
        0x1d
        0x1f
    .end array-data

    .line 1642
    :array_92
    .array-data 4
        0x1d
        0x1f
    .end array-data

    .line 1697
    :array_93
    .array-data 4
        0x1a
        0x29
    .end array-data

    .line 1698
    :array_94
    .array-data 4
        0x1a
        0x29
    .end array-data

    .line 1703
    :array_95
    .array-data 4
        0x29
        0x1a
    .end array-data

    .line 1704
    :array_96
    .array-data 4
        0x29
        0x1a
    .end array-data

    .line 1710
    :array_97
    .array-data 4
        0x1a
        0x29
    .end array-data

    .line 1711
    :array_98
    .array-data 4
        0x1a
        0x29
    .end array-data

    .line 1726
    :array_99
    .array-data 4
        0x3
        0x0
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x11
        0x2f
        0x2b
    .end array-data

    .line 1728
    :array_9a
    .array-data 4
        0x3
        0x0
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x11
        0x2f
        0x2b
    .end array-data

    .line 1730
    :array_9b
    .array-data 4
        0x22
        0x1d
        0x19
        0x17
        0x14
        0x2f
    .end array-data

    .line 1735
    :array_9c
    .array-data 4
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x2f
        0x2b
    .end array-data

    .line 1736
    :array_9d
    .array-data 4
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x2f
        0x2b
    .end array-data

    .line 1737
    :array_9e
    .array-data 4
        0x22
        0x1d
        0x19
        0x17
        0x14
        0x2f
    .end array-data

    .line 1739
    :array_9f
    .array-data 4
        0x3
        0x2d
    .end array-data

    .line 1745
    :array_a0
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x25
        0xa
        0x28
        0x2c
        0x2f
    .end array-data

    .line 1747
    :array_a1
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x25
        0x28
        0x2c
        0x2f
    .end array-data

    .line 1749
    :array_a2
    .array-data 4
        0x5
        0x24
        0x25
        0x28
        0x2f
    .end array-data

    .line 1752
    :array_a3
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x28
        0x2c
        0x2f
    .end array-data

    .line 1754
    :array_a4
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x28
        0x2c
        0x2f
    .end array-data

    .line 1756
    :array_a5
    .array-data 4
        0x22
        0x1d
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x28
        0x2f
    .end array-data

    .line 1761
    :array_a6
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x25
        0xa
        0x28
        0x2c
        0x2f
    .end array-data

    .line 1767
    :array_a7
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x25
        0x28
        0x2c
        0x2f
    .end array-data

    .line 1769
    :array_a8
    .array-data 4
        0x22
        0x1d
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x28
        0x2f
    .end array-data

    .line 1780
    :array_a9
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0xa
        0x28
        0x2c
        0x2f
    .end array-data

    .line 1786
    :array_aa
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x28
        0x2c
        0x2f
    .end array-data

    .line 1788
    :array_ab
    .array-data 4
        0x22
        0x1d
        0x5
        0x19
        0x17
        0x14
        0x23
        0x24
        0x25
        0x28
        0x2f
    .end array-data

    .line 1839
    :array_ac
    .array-data 4
        0xd
        0xe
        0x8
        0x1f
        0x7
        0x9
        0xf
        0x29
        0x2f
        0x4
    .end array-data

    .line 1840
    :array_ad
    .array-data 4
        0x29
        0x2f
        0x4
    .end array-data

    .line 1841
    :array_ae
    .array-data 4
        0xd
        0x8
        0x7
        0x9
        0xf
        0x29
        0x2f
        0x4
    .end array-data

    .line 1866
    :array_af
    .array-data 4
        0x8
        0x15
    .end array-data

    .line 1867
    :array_b0
    .array-data 4
        0x8
        0x15
    .end array-data

    .line 1874
    :array_b1
    .array-data 4
        0x5
        0x9
    .end array-data

    .line 1875
    :array_b2
    .array-data 4
        0x5
        0x9
    .end array-data

    .line 1876
    :array_b3
    .array-data 4
        0x5
        0x9
    .end array-data

    .line 1890
    :array_b4
    .array-data 4
        0x14
        0x19
        0x22
    .end array-data

    .line 1891
    :array_b5
    .array-data 4
        0x14
        0x19
        0x22
    .end array-data

    .line 1892
    :array_b6
    .array-data 4
        0x14
        0x19
        0x22
    .end array-data

    .line 1914
    :array_b7
    .array-data 4
        0x3
        0x23
        0x0
    .end array-data

    .line 1917
    :array_b8
    .array-data 4
        0x23
        0x0
    .end array-data

    .line 1920
    :array_b9
    .array-data 4
        0x2
        0x3
        0x1a
        0x1f
        0x29
        0x12
        0x19
    .end array-data

    .line 1921
    :array_ba
    .array-data 4
        0x2
        0x1a
        0x1f
        0x29
        0x12
        0x19
    .end array-data

    .line 1922
    :array_bb
    .array-data 4
        0x29
        0x12
        0x19
    .end array-data

    .line 1925
    :array_bc
    .array-data 4
        0x2
        0x1a
        0x29
        0x1f
        0x19
    .end array-data

    .line 1926
    :array_bd
    .array-data 4
        0x2
        0x1a
        0x29
        0x1f
        0x19
    .end array-data

    .line 1927
    :array_be
    .array-data 4
        0x29
        0x19
    .end array-data

    .line 1933
    :array_bf
    .array-data 4
        0x14
        0x22
        0x23
        0x3
        0x2f
    .end array-data

    .line 1934
    :array_c0
    .array-data 4
        0x14
        0x22
        0x23
    .end array-data

    .line 1935
    :array_c1
    .array-data 4
        0x14
        0x22
        0x23
    .end array-data

    .line 1940
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    .line 1942
    :array_c2
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    .line 1943
    :array_c3
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    .line 1946
    :array_c4
    .array-data 4
        0x3
        0x2
        0x0
        0x2d
    .end array-data

    .line 1947
    :array_c5
    .array-data 4
        0x3
        0x2
        0x0
    .end array-data

    .line 1950
    :array_c6
    .array-data 4
        0x3
        0x2
        0x0
        0x2d
        0x25
    .end array-data

    .line 1951
    :array_c7
    .array-data 4
        0x3
        0x2
        0x0
        0x25
    .end array-data

    .line 1955
    :array_c8
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    .line 1956
    :array_c9
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    .line 1963
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_30
    .end packed-switch

    .line 1965
    :array_ca
    .array-data 4
        0x3
        0x1
        0x0
        0x2d
    .end array-data

    .line 1966
    :array_cb
    .array-data 4
        0x3
        0x1
        0x0
    .end array-data

    .line 1969
    :array_cc
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    .line 1970
    :array_cd
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    .line 1977
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_33
        :pswitch_34
    .end packed-switch

    .line 1979
    :array_ce
    .array-data 4
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    .line 1980
    :array_cf
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data

    .line 1983
    :array_d0
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    .line 1984
    :array_d1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    .line 1987
    :array_d2
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    .line 1988
    :array_d3
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    .line 2012
    :array_d4
    .array-data 4
        0x1b
        0x2
        0x23
        0x1
        0x3
        0x0
        0x2d
    .end array-data

    .line 2013
    :array_d5
    .array-data 4
        0x1b
        0x2
        0x23
        0x1
        0x3
        0x0
    .end array-data

    .line 2009
    :array_d6
    .array-data 4
        0x1b
        0x2
        0x23
    .end array-data

    .line 2010
    :array_d7
    .array-data 4
        0x1b
        0x2
        0x23
    .end array-data

    .line 2022
    :array_d8
    .array-data 4
        0xb
        0x8
        0xa
        0x10
        0x13
        0x12
        0x7
        0x22
        0x25
    .end array-data

    .line 2023
    :array_d9
    .array-data 4
        0xb
        0x8
        0xa
        0x10
        0x13
        0x12
        0x7
        0x22
        0x25
    .end array-data

    .line 2024
    :array_da
    .array-data 4
        0xb
        0x8
        0xa
        0x10
        0x13
        0x12
        0x22
        0x25
    .end array-data

    .line 2069
    :array_db
    .array-data 4
        0x25
        0x22
        0x24
        0x26
        0x16
        0x4
        0x9
        0xf
        0x14
        0x28
        0x23
    .end array-data

    .line 2070
    :array_dc
    .array-data 4
        0x25
        0x22
        0x24
        0x26
        0x16
        0x4
        0x9
        0xf
        0x14
        0x28
        0x23
    .end array-data

    .line 2071
    :array_dd
    .array-data 4
        0x25
        0x22
        0x24
        0x26
        0x16
        0x4
        0x9
        0xf
        0x14
        0x28
        0x23
    .end array-data

    .line 2076
    :array_de
    .array-data 4
        0x15
        0x21
    .end array-data

    .line 2077
    :array_df
    .array-data 4
        0x15
        0x21
    .end array-data
.end method

.method public declared-synchronized removeButton(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "button"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    monitor-exit p0

    return-void

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDim()V
    .locals 2

    .prologue
    .line 801
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 805
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    .prologue
    .line 824
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 825
    .local v0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    goto :goto_0

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 829
    return-void
.end method

.method declared-synchronized setDim(IZ)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "dimmed"    # Z

    .prologue
    .line 810
    monitor-enter p0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :cond_0
    monitor-exit p0

    return-void

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimArray([Z)V
    .locals 3
    .param p1, "dimArray"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x32

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 8
    .param p1, "indices"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2152
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 2154
    .local v1, "cs":Lcom/sec/android/app/camera/CameraSettings;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget v3, v0, v2

    .line 2155
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 2154
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2157
    :pswitch_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    .line 2161
    :pswitch_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_1

    .line 2165
    :pswitch_3
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_1

    .line 2171
    :pswitch_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 2174
    :pswitch_5
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_1

    .line 2177
    :pswitch_6
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraHDR(I)V

    goto :goto_1

    .line 2180
    :pswitch_7
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    goto :goto_1

    .line 2183
    :pswitch_8
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto :goto_1

    .line 2186
    :pswitch_9
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 2189
    :pswitch_a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_1

    .line 2192
    :pswitch_b
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_1

    .line 2195
    :pswitch_c
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto :goto_1

    .line 2198
    :pswitch_d
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 2199
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 2200
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 2201
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v5

    if-ne v5, v7, :cond_1

    .line 2202
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 2204
    :cond_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 2207
    :cond_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 2211
    :pswitch_e
    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_1

    .line 2214
    :pswitch_f
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto :goto_1

    .line 2217
    :pswitch_10
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto :goto_1

    .line 2220
    :pswitch_11
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAudioZoom()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioZoom(I)V

    goto :goto_1

    .line 2223
    :pswitch_12
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto :goto_1

    .line 2226
    :pswitch_13
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto :goto_1

    .line 2229
    :pswitch_14
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    goto/16 :goto_1

    .line 2232
    :pswitch_15
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_1

    .line 2235
    :pswitch_16
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setSaveRichtone(I)V

    goto/16 :goto_1

    .line 2238
    :pswitch_17
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_1

    .line 2241
    :pswitch_18
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setTouchToCapture(I)V

    goto/16 :goto_1

    .line 2244
    :pswitch_19
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    .line 2247
    :pswitch_1a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    goto/16 :goto_1

    .line 2250
    :pswitch_1b
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto/16 :goto_1

    .line 2253
    :pswitch_1c
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_1

    .line 2256
    :pswitch_1d
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto/16 :goto_1

    .line 2259
    :pswitch_1e
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    .line 2262
    :pswitch_1f
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 2265
    :pswitch_20
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_1

    .line 2268
    :pswitch_21
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewfinderMode(I)V

    goto/16 :goto_1

    .line 2271
    :pswitch_22
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    goto/16 :goto_1

    .line 2274
    :pswitch_23
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusSelectMode(I)V

    goto/16 :goto_1

    .line 2277
    :pswitch_24
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setViewMode(I)V

    goto/16 :goto_1

    .line 2284
    .end local v3    # "index":I
    :cond_3
    return-void

    .line 2155
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1a
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_9
        :pswitch_1c
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_20
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_1e
        :pswitch_12
        :pswitch_14
        :pswitch_0
        :pswitch_10
        :pswitch_16
        :pswitch_1f
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_0
        :pswitch_18
        :pswitch_11
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_24
    .end packed-switch
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 6

    .prologue
    .line 842
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x32

    if-ge v1, v4, :cond_3

    .line 843
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 844
    .local v3, "view":Lcom/sec/android/glview/TwGLView;
    instance-of v4, v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v4, :cond_1

    .line 845
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 846
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 847
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 842
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "view":Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 851
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 852
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 853
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 842
    .end local v3    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 859
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    monitor-exit p0

    return-void
.end method
