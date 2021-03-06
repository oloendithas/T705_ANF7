.class public abstract Landroid/os/ISecExternalDisplayService$Stub;
.super Landroid/os/Binder;
.source "ISecExternalDisplayService.java"

# interfaces
.implements Landroid/os/ISecExternalDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISecExternalDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ISecExternalDisplayService"

.field static final TRANSACTION_SecExternalDisplayCreateSurface:I = 0xb

.field static final TRANSACTION_SecExternalDisplayDestroySurface:I = 0xe

.field static final TRANSACTION_SecExternalDisplayGet3DMode:I = 0x9

.field static final TRANSACTION_SecExternalDisplayGetResolution:I = 0x4

.field static final TRANSACTION_SecExternalDisplayGetStatus:I = 0x1

.field static final TRANSACTION_SecExternalDisplayRegisterEVF:I = 0x6

.field static final TRANSACTION_SecExternalDisplaySet3DMode:I = 0xa

.field static final TRANSACTION_SecExternalDisplaySetExternalUITransform:I = 0xd

.field static final TRANSACTION_SecExternalDisplaySetForceMirrorMode:I = 0x8

.field static final TRANSACTION_SecExternalDisplaySetGpuLock:I = 0x10

.field static final TRANSACTION_SecExternalDisplaySetOutputMode:I = 0x5

.field static final TRANSACTION_SecExternalDisplaySetPause:I = 0x7

.field static final TRANSACTION_SecExternalDisplaySetResolution:I = 0x3

.field static final TRANSACTION_SecExternalDisplaySetStatus:I = 0x2

.field static final TRANSACTION_SecExternalDisplayType:I = 0xc

.field static final TRANSACTION_acquireCpuMinLock:I = 0x11

.field static final TRANSACTION_acquireGpuMinLock:I = 0x13

.field static final TRANSACTION_releaseCpuMinLock:I = 0x12

.field static final TRANSACTION_releaseGpuMinLock:I = 0x14

.field static final TRANSACTION_setFpsLevel:I = 0x15

.field static final TRANSACTION_setHMTParams:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.os.ISecExternalDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/ISecExternalDisplayService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/ISecExternalDisplayService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/ISecExternalDisplayService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ISecExternalDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_202

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 43
    :sswitch_a
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayGetStatus(I)Z

    move-result v4

    .line 52
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v4, :cond_23

    move v5, v6

    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 58
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_27
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_45

    move v1, v6

    .line 63
    .local v1, "_arg1":Z
    :goto_37
    invoke-virtual {p0, v0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetStatus(IZ)Z

    move-result v4

    .line 64
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_41

    move v5, v6

    :cond_41
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_45
    move v1, v5

    .line 62
    goto :goto_37

    .line 70
    .end local v0    # "_arg0":I
    :sswitch_47
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetResolution(I)Z

    move-result v4

    .line 74
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v4, :cond_5a

    move v5, v6

    :cond_5a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5e
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayGetResolution()I

    move-result v4

    .line 82
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v4    # "_result":I
    :sswitch_6e
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetOutputMode(I)Z

    move-result v4

    .line 92
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v4, :cond_81

    move v5, v6

    :cond_81
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 98
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_85
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9d

    move v0, v6

    .line 101
    .local v0, "_arg0":Z
    :goto_91
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayRegisterEVF(Z)I

    move-result v4

    .line 102
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_9d
    move v0, v5

    .line 100
    goto :goto_91

    .line 108
    :sswitch_9f
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_ba

    move v0, v6

    .line 111
    .restart local v0    # "_arg0":Z
    :goto_ab
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetPause(Z)Z

    move-result v4

    .line 112
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v4, :cond_b5

    move v5, v6

    :cond_b5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_ba
    move v0, v5

    .line 110
    goto :goto_ab

    .line 118
    :sswitch_bc
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d7

    move v0, v6

    .line 121
    .restart local v0    # "_arg0":Z
    :goto_c8
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetForceMirrorMode(Z)Z

    move-result v4

    .line 122
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v4, :cond_d2

    move v5, v6

    :cond_d2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_d7
    move v0, v5

    .line 120
    goto :goto_c8

    .line 128
    :sswitch_d9
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayGet3DMode()I

    move-result v4

    .line 130
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v4    # "_result":I
    :sswitch_ea
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySet3DMode(I)I

    move-result v4

    .line 140
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 146
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_ff
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v4

    .line 154
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_11a

    move v5, v6

    :cond_11a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 160
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_11f
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13a

    move v0, v6

    .line 163
    .local v0, "_arg0":Z
    :goto_12b
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayType(Z)Z

    move-result v4

    .line 164
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_135

    move v5, v6

    :cond_135
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_13a
    move v0, v5

    .line 162
    goto :goto_12b

    .line 170
    :sswitch_13c
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v4

    .line 174
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v4, :cond_14f

    move v5, v6

    :cond_14f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 180
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_154
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v4

    .line 188
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v4, :cond_16f

    move v5, v6

    :cond_16f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 194
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_174
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 198
    .local v0, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 200
    .local v1, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 202
    .local v2, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 203
    .local v3, "_arg3":[F
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/ISecExternalDisplayService$Stub;->setHMTParams(FFF[F)Z

    move-result v4

    .line 204
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v4, :cond_193

    move v5, v6

    :cond_193
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 210
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_arg3":[F
    .end local v4    # "_result":Z
    :sswitch_198
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z

    move-result v4

    .line 216
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v4, :cond_1af

    move v5, v6

    :cond_1af
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 222
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_1b4
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 225
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->acquireCpuMinLock(I)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 231
    .end local v0    # "_arg0":I
    :sswitch_1c5
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->releaseCpuMinLock()V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 238
    :sswitch_1d2
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->acquireGpuMinLock(I)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 247
    .end local v0    # "_arg0":I
    :sswitch_1e3
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->releaseGpuMinLock()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 254
    :sswitch_1f0
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->setFpsLevel(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_202
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_47
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_85
        0x7 -> :sswitch_9f
        0x8 -> :sswitch_bc
        0x9 -> :sswitch_d9
        0xa -> :sswitch_ea
        0xb -> :sswitch_ff
        0xc -> :sswitch_11f
        0xd -> :sswitch_13c
        0xe -> :sswitch_154
        0xf -> :sswitch_174
        0x10 -> :sswitch_198
        0x11 -> :sswitch_1b4
        0x12 -> :sswitch_1c5
        0x13 -> :sswitch_1d2
        0x14 -> :sswitch_1e3
        0x15 -> :sswitch_1f0
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
