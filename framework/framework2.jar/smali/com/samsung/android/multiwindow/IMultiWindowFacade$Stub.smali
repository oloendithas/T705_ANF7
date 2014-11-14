.class public abstract Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowFacade.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiWindowFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IMultiWindowFacade"

.field static final TRANSACTION_changeFocusedTaskToFull:I = 0x13

.field static final TRANSACTION_exchangeTopTaskToZone:I = 0xa

.field static final TRANSACTION_getArrangeState:I = 0xb

.field static final TRANSACTION_getAvailableMultiInstanceCnt:I = 0x14

.field static final TRANSACTION_getCenterBarPoint:I = 0x3

.field static final TRANSACTION_getFocusedStackLayer:I = 0xc

.field static final TRANSACTION_getFocusedZone:I = 0xd

.field static final TRANSACTION_getFrontActivityMultiWindowStyle:I = 0x9

.field static final TRANSACTION_getGlobalSystemUiVisibility:I = 0x12

.field static final TRANSACTION_getMultiWindowStyle:I = 0x5

.field static final TRANSACTION_getSplitMaxWeight:I = 0x19

.field static final TRANSACTION_getSplitMinWeight:I = 0x18

.field static final TRANSACTION_getStackBound:I = 0x7

.field static final TRANSACTION_getStackBoxPosition:I = 0x1b

.field static final TRANSACTION_getStackOriginalBound:I = 0x8

.field static final TRANSACTION_getZoneBounds:I = 0xe

.field static final TRANSACTION_isEnableMakePenWindow:I = 0x1a

.field static final TRANSACTION_minimizeWindow:I = 0x1

.field static final TRANSACTION_moveOnlySpecificTaskToFront:I = 0x17

.field static final TRANSACTION_requestSplitPreview:I = 0x10

.field static final TRANSACTION_setCenterBarPoint:I = 0x2

.field static final TRANSACTION_setFocusAppByZone:I = 0x15

.field static final TRANSACTION_setMultiWindowStyle:I = 0x4

.field static final TRANSACTION_setMultiWindowTrayOpenState:I = 0xf

.field static final TRANSACTION_setPreviewFullAppZone:I = 0x11

.field static final TRANSACTION_setStackBound:I = 0x6

.field static final TRANSACTION_updateIsolatedCenterPoint:I = 0x16

.field static final TRANSACTION_updateMinimizeSize:I = 0x1c


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFacade;
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
    const-string v1, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_29a

    .line 370
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 46
    :sswitch_a
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->minimizeWindow(Landroid/os/IBinder;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 60
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_20
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3a

    .line 63
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 68
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_33
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 66
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :cond_3a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_33

    .line 74
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :sswitch_3c
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 76
    .local v2, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_51

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 82
    :cond_51
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v2    # "_result":Landroid/graphics/Point;
    :sswitch_55
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_73

    .line 93
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 98
    .local v1, "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_6c
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 96
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_73
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_6c

    .line 104
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_75
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 108
    .local v2, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_8f

    .line 110
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v2, p3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 114
    :cond_8f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_94
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 124
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b3

    .line 125
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 130
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_ab
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 128
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_b3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_ab

    .line 136
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_b5
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    .line 140
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v2, :cond_cf

    .line 142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 146
    :cond_cf
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 152
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/graphics/Rect;
    :sswitch_d4
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    .line 156
    .restart local v2    # "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v2, :cond_ee

    .line 158
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 162
    :cond_ee
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 168
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/graphics/Rect;
    :sswitch_f3
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 172
    .local v2, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v2, :cond_10d

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v2, p3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 178
    :cond_10d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 184
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_112
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->exchangeTopTaskToZone(II)Z

    move-result v2

    .line 190
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v2, :cond_129

    move v3, v4

    :cond_129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 196
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_12e
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getArrangeState()I

    move-result v2

    .line 198
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v2    # "_result":I
    :sswitch_13f
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFocusedStackLayer()I

    move-result v2

    .line 206
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 212
    .end local v2    # "_result":I
    :sswitch_150
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFocusedZone()I

    move-result v2

    .line 214
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 220
    .end local v2    # "_result":I
    :sswitch_161
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 224
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v2, :cond_17b

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 230
    :cond_17b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 236
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/graphics/Rect;
    :sswitch_180
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_194

    move v0, v4

    .line 239
    .local v0, "_arg0":Z
    :goto_18c
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setMultiWindowTrayOpenState(Z)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_194
    move v0, v3

    .line 238
    goto :goto_18c

    .line 245
    :sswitch_196
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1aa

    move v0, v4

    .line 248
    .restart local v0    # "_arg0":Z
    :goto_1a2
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->requestSplitPreview(Z)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1aa
    move v0, v3

    .line 247
    goto :goto_1a2

    .line 254
    :sswitch_1ac
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setPreviewFullAppZone(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 263
    .end local v0    # "_arg0":I
    :sswitch_1bd
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getGlobalSystemUiVisibility()I

    move-result v2

    .line 265
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 271
    .end local v2    # "_result":I
    :sswitch_1ce
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->changeFocusedTaskToFull()V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 278
    :sswitch_1db
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getAvailableMultiInstanceCnt()I

    move-result v2

    .line 280
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 286
    .end local v2    # "_result":I
    :sswitch_1ec
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setFocusAppByZone(I)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 295
    .end local v0    # "_arg0":I
    :sswitch_1fd
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_218

    .line 298
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 303
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_210
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 301
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :cond_218
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_210

    .line 309
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :sswitch_21a
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 314
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->moveOnlySpecificTaskToFront(II)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 320
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_22f
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getSplitMinWeight()F

    move-result v2

    .line 322
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .line 328
    .end local v2    # "_result":F
    :sswitch_240
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getSplitMaxWeight()F

    move-result v2

    .line 330
    .restart local v2    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .line 336
    .end local v2    # "_result":F
    :sswitch_251
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->isEnableMakePenWindow()Z

    move-result v2

    .line 338
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v2, :cond_260

    move v3, v4

    :cond_260
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 344
    .end local v2    # "_result":Z
    :sswitch_265
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 347
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v2

    .line 348
    .local v2, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v2, :cond_27f

    .line 350
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 354
    :cond_27f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 360
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/graphics/Point;
    :sswitch_284
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 364
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 365
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 42
    nop

    :sswitch_data_29a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_55
        0x5 -> :sswitch_75
        0x6 -> :sswitch_94
        0x7 -> :sswitch_b5
        0x8 -> :sswitch_d4
        0x9 -> :sswitch_f3
        0xa -> :sswitch_112
        0xb -> :sswitch_12e
        0xc -> :sswitch_13f
        0xd -> :sswitch_150
        0xe -> :sswitch_161
        0xf -> :sswitch_180
        0x10 -> :sswitch_196
        0x11 -> :sswitch_1ac
        0x12 -> :sswitch_1bd
        0x13 -> :sswitch_1ce
        0x14 -> :sswitch_1db
        0x15 -> :sswitch_1ec
        0x16 -> :sswitch_1fd
        0x17 -> :sswitch_21a
        0x18 -> :sswitch_22f
        0x19 -> :sswitch_240
        0x1a -> :sswitch_251
        0x1b -> :sswitch_265
        0x1c -> :sswitch_284
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
