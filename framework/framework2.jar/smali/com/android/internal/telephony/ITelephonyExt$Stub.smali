.class public abstract Lcom/android/internal/telephony/ITelephonyExt$Stub;
.super Landroid/os/Binder;
.source "ITelephonyExt.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyExt"

.field static final TRANSACTION_getActiveCallsCount:I = 0x12

.field static final TRANSACTION_getCallBaseTime:I = 0x17

.field static final TRANSACTION_getCallTime:I = 0x16

.field static final TRANSACTION_getCallerLocator:I = 0x15

.field static final TRANSACTION_getCallerName:I = 0x14

.field static final TRANSACTION_getCurrentUATI:I = 0x2c

.field static final TRANSACTION_getHoldCallsCount:I = 0x13

.field static final TRANSACTION_getLteCellInfo:I = 0x2b

.field static final TRANSACTION_getMobileQualityInformation:I = 0x26

.field static final TRANSACTION_getMsisdnavailable:I = 0x3

.field static final TRANSACTION_getMute:I = 0xf

.field static final TRANSACTION_getPin2LockKey:I = 0x9

.field static final TRANSACTION_getPinLockKey:I = 0x8

.field static final TRANSACTION_getSimPin2Retry:I = 0x6

.field static final TRANSACTION_getSimPinRetry:I = 0x4

.field static final TRANSACTION_getSimPuk2Retry:I = 0x7

.field static final TRANSACTION_getSimPukRetry:I = 0x5

.field static final TRANSACTION_getTelephonyFeature:I = 0xa

.field static final TRANSACTION_getTimeInfo:I = 0x29

.field static final TRANSACTION_getWipiSysInfo:I = 0x2a

.field static final TRANSACTION_isBluetoothAudioConnected:I = 0x23

.field static final TRANSACTION_isConferenceCall:I = 0x1a

.field static final TRANSACTION_isDualBTConnection:I = 0x24

.field static final TRANSACTION_isFirstCallDialingAndSecondCallActive:I = 0x1c

.field static final TRANSACTION_isHeadsetConnected:I = 0x21

.field static final TRANSACTION_isIdle:I = 0x19

.field static final TRANSACTION_isMultiCall:I = 0x1b

.field static final TRANSACTION_isSimFDNEnabled:I = 0xb

.field static final TRANSACTION_isSimFDNEnabledDs:I = 0xc

.field static final TRANSACTION_isVideoCall:I = 0x31

.field static final TRANSACTION_notifyVoIPCallStateChangeIntoBT:I = 0x22

.field static final TRANSACTION_sendDtmf:I = 0x2e

.field static final TRANSACTION_sendRequestRawToRIL:I = 0x2d

.field static final TRANSACTION_sendRequestToRIL:I = 0x1e

.field static final TRANSACTION_setBTUserWantsAudioOn:I = 0x20

.field static final TRANSACTION_setBTUserWantsSwitchAudio:I = 0x25

.field static final TRANSACTION_setDmCmd:I = 0x2f

.field static final TRANSACTION_setMute:I = 0xe

.field static final TRANSACTION_showPopupCallScreen:I = 0x18

.field static final TRANSACTION_showingIncomingPopup:I = 0x30

.field static final TRANSACTION_startMobileQualityInformation:I = 0x27

.field static final TRANSACTION_stopMobileQualityInformation:I = 0x28

.field static final TRANSACTION_supplyPerso:I = 0x1f

.field static final TRANSACTION_supplyPin2:I = 0x2

.field static final TRANSACTION_supplyPuk:I = 0x1

.field static final TRANSACTION_switchHoldingAndActive:I = 0xd

.field static final TRANSACTION_turnOnBluetooth:I = 0x11

.field static final TRANSACTION_turnOnSpeaker:I = 0x10

.field static final TRANSACTION_updateRAFTproximity:I = 0x1d


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_3
    return-object v0

    .line 33
    :cond_4
    const-string v1, "com.android.internal.telephony.ITelephonyExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyExt;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephonyExt;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
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

    .line 45
    sparse-switch p1, :sswitch_data_3c0

    .line 477
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 49
    :sswitch_a
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :sswitch_10
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 60
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v3, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 66
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_2b
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPin2(Ljava/lang/String;)Z

    move-result v3

    .line 70
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_3e

    move v5, v6

    :cond_3e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_42
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMsisdnavailable()Z

    move-result v3

    .line 78
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_51

    move v5, v6

    :cond_51
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 84
    .end local v3    # "_result":Z
    :sswitch_55
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPinRetry()I

    move-result v3

    .line 86
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 92
    .end local v3    # "_result":I
    :sswitch_65
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPukRetry()I

    move-result v3

    .line 94
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 100
    .end local v3    # "_result":I
    :sswitch_75
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPin2Retry()I

    move-result v3

    .line 102
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 108
    .end local v3    # "_result":I
    :sswitch_85
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPuk2Retry()I

    move-result v3

    .line 110
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v3    # "_result":I
    :sswitch_96
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getPinLockKey()I

    move-result v3

    .line 118
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 124
    .end local v3    # "_result":I
    :sswitch_a7
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getPin2LockKey()I

    move-result v3

    .line 126
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 132
    .end local v3    # "_result":I
    :sswitch_b8
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTelephonyFeature()Ljava/util/Map;

    move-result-object v3

    .line 134
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 140
    .end local v3    # "_result":Ljava/util/Map;
    :sswitch_c9
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isSimFDNEnabled()Z

    move-result v3

    .line 142
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v3, :cond_d8

    move v5, v6

    :cond_d8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 148
    .end local v3    # "_result":Z
    :sswitch_dd
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isSimFDNEnabledDs(I)Z

    move-result v3

    .line 152
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v3, :cond_f0

    move v5, v6

    :cond_f0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 158
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_f5
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->switchHoldingAndActive()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 165
    :sswitch_102
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_116

    move v0, v6

    .line 168
    .local v0, "_arg0":Z
    :goto_10e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setMute(Z)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_116
    move v0, v5

    .line 167
    goto :goto_10e

    .line 174
    :sswitch_118
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMute()Z

    move-result v3

    .line 176
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v3, :cond_127

    move v5, v6

    :cond_127
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v3    # "_result":Z
    :sswitch_12c
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_140

    move v0, v6

    .line 185
    .restart local v0    # "_arg0":Z
    :goto_138
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnSpeaker(Z)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_140
    move v0, v5

    .line 184
    goto :goto_138

    .line 191
    :sswitch_142
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnBluetooth()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 198
    :sswitch_14f
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getActiveCallsCount()I

    move-result v3

    .line 200
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 206
    .end local v3    # "_result":I
    :sswitch_160
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getHoldCallsCount()I

    move-result v3

    .line 208
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 214
    .end local v3    # "_result":I
    :sswitch_171
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallerName()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 222
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_182
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallerLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_197
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallTime()J

    move-result-wide v3

    .line 234
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 240
    .end local v3    # "_result":J
    :sswitch_1a8
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallBaseTime()J

    move-result-wide v3

    .line 242
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 248
    .end local v3    # "_result":J
    :sswitch_1b9
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->showPopupCallScreen()Z

    move-result v3

    .line 250
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v3, :cond_1c8

    move v5, v6

    :cond_1c8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 256
    .end local v3    # "_result":Z
    :sswitch_1cd
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isIdle()Z

    move-result v3

    .line 258
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v3, :cond_1dc

    move v5, v6

    :cond_1dc
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 264
    .end local v3    # "_result":Z
    :sswitch_1e1
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isConferenceCall()Z

    move-result v3

    .line 266
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v3, :cond_1f0

    move v5, v6

    :cond_1f0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 272
    .end local v3    # "_result":Z
    :sswitch_1f5
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isMultiCall()Z

    move-result v3

    .line 274
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v3, :cond_204

    move v5, v6

    :cond_204
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 280
    .end local v3    # "_result":Z
    :sswitch_209
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isFirstCallDialingAndSecondCallActive()Z

    move-result v3

    .line 282
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v3, :cond_218

    move v5, v6

    :cond_218
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 288
    .end local v3    # "_result":Z
    :sswitch_21d
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 291
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->updateRAFTproximity(I)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 297
    .end local v0    # "_arg0":I
    :sswitch_22e
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 301
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 303
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->sendRequestToRIL([B[BI)I

    move-result v3

    .line 305
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 312
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :sswitch_24e
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v3

    .line 316
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v3, :cond_261

    move v5, v6

    :cond_261
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 322
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_266
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_27a

    move v0, v6

    .line 325
    .local v0, "_arg0":Z
    :goto_272
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setBTUserWantsAudioOn(Z)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_27a
    move v0, v5

    .line 324
    goto :goto_272

    .line 331
    :sswitch_27c
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isHeadsetConnected()Z

    move-result v3

    .line 333
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v3, :cond_28b

    move v5, v6

    :cond_28b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 339
    .end local v3    # "_result":Z
    :sswitch_290
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->notifyVoIPCallStateChangeIntoBT()V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 346
    :sswitch_29d
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isBluetoothAudioConnected()Z

    move-result v3

    .line 348
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v3, :cond_2ac

    move v5, v6

    :cond_2ac
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 354
    .end local v3    # "_result":Z
    :sswitch_2b1
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isDualBTConnection()Z

    move-result v3

    .line 356
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v3, :cond_2c0

    move v5, v6

    :cond_2c0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 362
    .end local v3    # "_result":Z
    :sswitch_2c5
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setBTUserWantsSwitchAudio()V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 369
    :sswitch_2d2
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMobileQualityInformation()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 377
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2e3
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->startMobileQualityInformation()V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 384
    :sswitch_2f0
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->stopMobileQualityInformation()V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 391
    :sswitch_2fd
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTimeInfo()Ljava/lang/String;

    move-result-object v3

    .line 393
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 399
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_30e
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getWipiSysInfo()Ljava/lang/String;

    move-result-object v3

    .line 401
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 407
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_31f
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getLteCellInfo()Ljava/lang/String;

    move-result-object v3

    .line 409
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 415
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_330
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCurrentUATI()[B

    move-result-object v3

    .line 417
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 423
    .end local v3    # "_result":[B
    :sswitch_341
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 427
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_364

    .line 428
    sget-object v5, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 433
    .local v1, "_arg1":Landroid/os/Message;
    :goto_358
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->sendRequestRawToRIL([BLandroid/os/Message;)I

    move-result v3

    .line 434
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 431
    .end local v1    # "_arg1":Landroid/os/Message;
    .end local v3    # "_result":I
    :cond_364
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Message;
    goto :goto_358

    .line 440
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Landroid/os/Message;
    :sswitch_366
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v0, v7

    .line 443
    .local v0, "_arg0":C
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->sendDtmf(C)Z

    move-result v3

    .line 444
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v3, :cond_37a

    move v5, v6

    :cond_37a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 450
    .end local v0    # "_arg0":C
    .end local v3    # "_result":Z
    :sswitch_37f
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 454
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 455
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setDmCmd(I[B)[I

    move-result-object v3

    .line 456
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 462
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v3    # "_result":[I
    :sswitch_398
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->showingIncomingPopup()Z

    move-result v3

    .line 464
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v3, :cond_3a7

    move v5, v6

    :cond_3a7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 470
    .end local v3    # "_result":Z
    :sswitch_3ac
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isVideoCall()Z

    move-result v3

    .line 472
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    if-eqz v3, :cond_3bb

    move v5, v6

    :cond_3bb
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 45
    :sswitch_data_3c0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_42
        0x4 -> :sswitch_55
        0x5 -> :sswitch_65
        0x6 -> :sswitch_75
        0x7 -> :sswitch_85
        0x8 -> :sswitch_96
        0x9 -> :sswitch_a7
        0xa -> :sswitch_b8
        0xb -> :sswitch_c9
        0xc -> :sswitch_dd
        0xd -> :sswitch_f5
        0xe -> :sswitch_102
        0xf -> :sswitch_118
        0x10 -> :sswitch_12c
        0x11 -> :sswitch_142
        0x12 -> :sswitch_14f
        0x13 -> :sswitch_160
        0x14 -> :sswitch_171
        0x15 -> :sswitch_182
        0x16 -> :sswitch_197
        0x17 -> :sswitch_1a8
        0x18 -> :sswitch_1b9
        0x19 -> :sswitch_1cd
        0x1a -> :sswitch_1e1
        0x1b -> :sswitch_1f5
        0x1c -> :sswitch_209
        0x1d -> :sswitch_21d
        0x1e -> :sswitch_22e
        0x1f -> :sswitch_24e
        0x20 -> :sswitch_266
        0x21 -> :sswitch_27c
        0x22 -> :sswitch_290
        0x23 -> :sswitch_29d
        0x24 -> :sswitch_2b1
        0x25 -> :sswitch_2c5
        0x26 -> :sswitch_2d2
        0x27 -> :sswitch_2e3
        0x28 -> :sswitch_2f0
        0x29 -> :sswitch_2fd
        0x2a -> :sswitch_30e
        0x2b -> :sswitch_31f
        0x2c -> :sswitch_330
        0x2d -> :sswitch_341
        0x2e -> :sswitch_366
        0x2f -> :sswitch_37f
        0x30 -> :sswitch_398
        0x31 -> :sswitch_3ac
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
