.class public abstract Landroid/os/ICustomFrequencyManager$Stub;
.super Landroid/os/Binder;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICustomFrequencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICustomFrequencyManager"

.field static final TRANSACTION_acquireDVFSLock:I = 0x15

.field static final TRANSACTION_acquirePersistentDVFSLock:I = 0x17

.field static final TRANSACTION_checkCPUBoostRange:I = 0x13

.field static final TRANSACTION_checkFrameRateRange:I = 0xa

.field static final TRANSACTION_checkGPUFrequencyRange:I = 0x2

.field static final TRANSACTION_checkSysBusFrequencyRange:I = 0x6

.field static final TRANSACTION_getRemainUsageTime:I = 0x20

.field static final TRANSACTION_getStandbyTimeInPowerSavingMode:I = 0x1f

.field static final TRANSACTION_getStandbyTimeInUltraPowerSavingMode:I = 0x1e

.field static final TRANSACTION_getSupportedCPUCoreNum:I = 0x10

.field static final TRANSACTION_getSupportedCPUFrequency:I = 0x14

.field static final TRANSACTION_getSupportedGPUFrequency:I = 0x1

.field static final TRANSACTION_getSupportedLCDFrequency:I = 0x9

.field static final TRANSACTION_getSupportedSysBusFrequency:I = 0x5

.field static final TRANSACTION_mpdUpdate:I = 0xf

.field static final TRANSACTION_notifyWmAniationState:I = 0x1b

.field static final TRANSACTION_releaseCPUCore:I = 0x12

.field static final TRANSACTION_releaseDVFSLock:I = 0x16

.field static final TRANSACTION_releaseGPU:I = 0x4

.field static final TRANSACTION_releasePersistentDVFSLock:I = 0x18

.field static final TRANSACTION_releaseSysBus:I = 0x8

.field static final TRANSACTION_requestCPUCore:I = 0x11

.field static final TRANSACTION_requestCPUUpdate:I = 0xe

.field static final TRANSACTION_requestGPU:I = 0x3

.field static final TRANSACTION_requestLCDFrameRate:I = 0xb

.field static final TRANSACTION_requestMMCBurstRate:I = 0x19

.field static final TRANSACTION_requestMpParameterUpdate:I = 0xd

.field static final TRANSACTION_requestSysBus:I = 0x7

.field static final TRANSACTION_restoreLCDFrameRate:I = 0xc

.field static final TRANSACTION_restoreMMCBurstRate:I = 0x1a

.field static final TRANSACTION_reviewPackage:I = 0x1d

.field static final TRANSACTION_sendCommandToSSRM:I = 0x1c


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;
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
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/ICustomFrequencyManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ICustomFrequencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_2d0

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 43
    :sswitch_a
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedGPUFrequency()[I

    move-result-object v5

    .line 50
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 56
    .end local v5    # "_result":[I
    :sswitch_20
    const-string v8, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkGPUFrequencyRange(I)Z

    move-result v5

    .line 60
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v5, :cond_33

    move v6, v7

    :cond_33
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 66
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_37
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 74
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/os/ICustomFrequencyManager$Stub;->requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_53
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 87
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/ICustomFrequencyManager$Stub;->releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 94
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_6b
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedSysBusFrequency()[I

    move-result-object v5

    .line 96
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 102
    .end local v5    # "_result":[I
    :sswitch_7b
    const-string v8, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkSysBusFrequencyRange(I)Z

    move-result v5

    .line 106
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v5, :cond_8e

    move v6, v7

    :cond_8e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 112
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_93
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 120
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 121
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/os/ICustomFrequencyManager$Stub;->requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 127
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_b0
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 133
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/ICustomFrequencyManager$Stub;->releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 140
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_c9
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedLCDFrequency()[I

    move-result-object v5

    .line 142
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 148
    .end local v5    # "_result":[I
    :sswitch_da
    const-string v8, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkFrameRateRange(I)Z

    move-result v5

    .line 152
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v5, :cond_ed

    move v6, v7

    :cond_ed
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 158
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_f2
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 164
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/ICustomFrequencyManager$Stub;->requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 171
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_10b
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 175
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 182
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_120
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestMpParameterUpdate(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 191
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_131
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUUpdate(II)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 202
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_146
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->mpdUpdate(I)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 211
    .end local v0    # "_arg0":I
    :sswitch_157
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedCPUCoreNum()[I

    move-result-object v5

    .line 213
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 219
    .end local v5    # "_result":[I
    :sswitch_168
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 227
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 234
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_185
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 240
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/ICustomFrequencyManager$Stub;->releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 247
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_19e
    const-string v8, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 250
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkCPUBoostRange(I)Z

    move-result v5

    .line 251
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v5, :cond_1b1

    move v6, v7

    :cond_1b1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 257
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_1b6
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedCPUFrequency()[I

    move-result-object v5

    .line 259
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 265
    .end local v5    # "_result":[I
    :sswitch_1c7
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 273
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 274
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/os/ICustomFrequencyManager$Stub;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 280
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_1e4
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 284
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 291
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1f9
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 299
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 300
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/os/ICustomFrequencyManager$Stub;->acquirePersistentDVFSLock(IIILjava/lang/String;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 306
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_216
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->releasePersistentDVFSLock(ILjava/lang/String;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 317
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_22b
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 323
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/ICustomFrequencyManager$Stub;->requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 330
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_244
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 333
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->restoreMMCBurstRate(Landroid/os/IBinder;)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 339
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_255
    const-string v8, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 343
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_26d

    move v2, v7

    .line 344
    .local v2, "_arg1":Z
    :goto_265
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->notifyWmAniationState(JZ)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    :cond_26d
    move v2, v6

    .line 343
    goto :goto_265

    .line 350
    .end local v0    # "_arg0":J
    :sswitch_26f
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 361
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_284
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 372
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_299
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v5

    .line 374
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 380
    .end local v5    # "_result":I
    :sswitch_2aa
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getStandbyTimeInPowerSavingMode()I

    move-result v5

    .line 382
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 388
    .end local v5    # "_result":I
    :sswitch_2bb
    const-string v6, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 391
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getRemainUsageTime(I)I

    move-result v5

    .line 392
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_2d0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_37
        0x4 -> :sswitch_53
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_7b
        0x7 -> :sswitch_93
        0x8 -> :sswitch_b0
        0x9 -> :sswitch_c9
        0xa -> :sswitch_da
        0xb -> :sswitch_f2
        0xc -> :sswitch_10b
        0xd -> :sswitch_120
        0xe -> :sswitch_131
        0xf -> :sswitch_146
        0x10 -> :sswitch_157
        0x11 -> :sswitch_168
        0x12 -> :sswitch_185
        0x13 -> :sswitch_19e
        0x14 -> :sswitch_1b6
        0x15 -> :sswitch_1c7
        0x16 -> :sswitch_1e4
        0x17 -> :sswitch_1f9
        0x18 -> :sswitch_216
        0x19 -> :sswitch_22b
        0x1a -> :sswitch_244
        0x1b -> :sswitch_255
        0x1c -> :sswitch_26f
        0x1d -> :sswitch_284
        0x1e -> :sswitch_299
        0x1f -> :sswitch_2aa
        0x20 -> :sswitch_2bb
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
