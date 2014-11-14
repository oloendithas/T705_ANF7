.class public abstract Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowManager.java"

# interfaces
.implements Landroid/sec/multiwindow/impl/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/impl/IMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.multiwindow.impl.IMultiWindowManager"

.field static final TRANSACTION_calculateSplitWindowSize:I = 0x8

.field static final TRANSACTION_checkCenterBarRect:I = 0x1

.field static final TRANSACTION_dispatchMinimizeEvent:I = 0x15

.field static final TRANSACTION_findDockingWindowZone:I = 0x9

.field static final TRANSACTION_getAppListPosition:I = 0x7

.field static final TRANSACTION_getArrangeState:I = 0x2

.field static final TRANSACTION_getCenterBarPoint:I = 0x5

.field static final TRANSACTION_getMinimizeIconState:I = 0x17

.field static final TRANSACTION_getMultiDisplayState:I = 0xa

.field static final TRANSACTION_getMultiDisplayTarget:I = 0xc

.field static final TRANSACTION_getResumedTaskCount:I = 0x10

.field static final TRANSACTION_getVisibleArrangeState:I = 0x3

.field static final TRANSACTION_isSupportScaleApp:I = 0x11

.field static final TRANSACTION_launchExternalDisplay:I = 0xe

.field static final TRANSACTION_minimizeAll:I = 0x12

.field static final TRANSACTION_notifyMultiDisplayState:I = 0xf

.field static final TRANSACTION_registerCallback:I = 0x13

.field static final TRANSACTION_setAppListPosition:I = 0x6

.field static final TRANSACTION_setCenterBarPoint:I = 0x4

.field static final TRANSACTION_setMinimizeStackedIcon:I = 0x16

.field static final TRANSACTION_setMultiDisplayState:I = 0xb

.field static final TRANSACTION_setMultiDisplayTarget:I = 0xd

.field static final TRANSACTION_unRegisterCallback:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/multiwindow/impl/IMultiWindowManager;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/sec/multiwindow/impl/IMultiWindowManager;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_23e

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 46
    :sswitch_a
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_33

    .line 54
    sget-object v8, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 59
    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_23
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 60
    .local v6, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_35

    .line 62
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v6, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 57
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v6    # "_result":Landroid/graphics/Rect;
    :cond_33
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_23

    .line 66
    .restart local v6    # "_result":Landroid/graphics/Rect;
    :cond_35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v6    # "_result":Landroid/graphics/Rect;
    :sswitch_39
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->getArrangeState()I

    move-result v6

    .line 74
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v6    # "_result":I
    :sswitch_49
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->getVisibleArrangeState()I

    move-result v6

    .line 82
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v6    # "_result":I
    :sswitch_59
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_73

    .line 91
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 96
    .local v1, "_arg0":Landroid/graphics/Point;
    :goto_6c
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 94
    .end local v1    # "_arg0":Landroid/graphics/Point;
    :cond_73
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Point;
    goto :goto_6c

    .line 102
    .end local v1    # "_arg0":Landroid/graphics/Point;
    :sswitch_75
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v6

    .line 104
    .local v6, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v6, :cond_8a

    .line 106
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v6, p3, v7}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 110
    :cond_8a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v6    # "_result":Landroid/graphics/Point;
    :sswitch_8f
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->setAppListPosition(I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 125
    .end local v1    # "_arg0":I
    :sswitch_a0
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->getAppListPosition()I

    move-result v6

    .line 127
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v6    # "_result":I
    :sswitch_b1
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 136
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 137
    .local v6, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v6, :cond_cb

    .line 139
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v6, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 143
    :cond_cb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 149
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/graphics/Rect;
    :sswitch_d0
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 157
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 159
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->findDockingWindowZone(IIIII)I

    move-result v6

    .line 161
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 167
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :sswitch_f6
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->getMultiDisplayState()Z

    move-result v6

    .line 169
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v6, :cond_105

    move v0, v7

    :cond_105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 175
    .end local v6    # "_result":Z
    :sswitch_10a
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11e

    move v1, v7

    .line 178
    .local v1, "_arg0":Z
    :goto_116
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->setMultiDisplayState(Z)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_11e
    move v1, v0

    .line 177
    goto :goto_116

    .line 184
    :sswitch_120
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->getMultiDisplayTarget()I

    move-result v6

    .line 186
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 192
    .end local v6    # "_result":I
    :sswitch_131
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->setMultiDisplayTarget(I)Z

    move-result v6

    .line 196
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v6, :cond_144

    move v0, v7

    :cond_144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 202
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_149
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_15d

    move v1, v7

    .line 205
    .local v1, "_arg0":Z
    :goto_155
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->launchExternalDisplay(Z)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_15d
    move v1, v0

    .line 204
    goto :goto_155

    .line 211
    :sswitch_15f
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_181

    move v1, v7

    .line 215
    .restart local v1    # "_arg0":Z
    :goto_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_183

    move v2, v7

    .line 216
    .local v2, "_arg1":Z
    :goto_172
    invoke-virtual {p0, v1, v2}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->notifyMultiDisplayState(ZZ)Z

    move-result v6

    .line 217
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v6, :cond_17c

    move v0, v7

    :cond_17c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_181
    move v1, v0

    .line 213
    goto :goto_16b

    .restart local v1    # "_arg0":Z
    :cond_183
    move v2, v0

    .line 215
    goto :goto_172

    .line 223
    .end local v1    # "_arg0":Z
    :sswitch_185
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->getResumedTaskCount()I

    move-result v6

    .line 225
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 231
    .end local v6    # "_result":I
    :sswitch_196
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1b8

    .line 234
    sget-object v8, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 239
    .local v1, "_arg0":Landroid/content/pm/ActivityInfo;
    :goto_1a9
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    .line 240
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v6, :cond_1b3

    move v0, v7

    :cond_1b3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 237
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v6    # "_result":Z
    :cond_1b8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_1a9

    .line 246
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :sswitch_1ba
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->minimizeAll()V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 253
    :sswitch_1c7
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 257
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 259
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 260
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z

    move-result v6

    .line 261
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v6, :cond_1e2

    move v0, v7

    :cond_1e2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 267
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v6    # "_result":Z
    :sswitch_1e7
    const-string v8, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 270
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->unRegisterCallback(Landroid/os/IBinder;)Z

    move-result v6

    .line 271
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v6, :cond_1fa

    move v0, v7

    :cond_1fa
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 277
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_result":Z
    :sswitch_1ff
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 281
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21e

    .line 282
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 287
    .local v2, "_arg1":Landroid/view/MotionEvent;
    :goto_216
    invoke-virtual {p0, v1, v2}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 285
    .end local v2    # "_arg1":Landroid/view/MotionEvent;
    :cond_21e
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/view/MotionEvent;
    goto :goto_216

    .line 293
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/view/MotionEvent;
    :sswitch_220
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->setMinimizeStackedIcon()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 300
    :sswitch_22d
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;->getMinimizeIconState()I

    move-result v6

    .line 302
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 42
    :sswitch_data_23e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_39
        0x3 -> :sswitch_49
        0x4 -> :sswitch_59
        0x5 -> :sswitch_75
        0x6 -> :sswitch_8f
        0x7 -> :sswitch_a0
        0x8 -> :sswitch_b1
        0x9 -> :sswitch_d0
        0xa -> :sswitch_f6
        0xb -> :sswitch_10a
        0xc -> :sswitch_120
        0xd -> :sswitch_131
        0xe -> :sswitch_149
        0xf -> :sswitch_15f
        0x10 -> :sswitch_185
        0x11 -> :sswitch_196
        0x12 -> :sswitch_1ba
        0x13 -> :sswitch_1c7
        0x14 -> :sswitch_1e7
        0x15 -> :sswitch_1ff
        0x16 -> :sswitch_220
        0x17 -> :sswitch_22d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
