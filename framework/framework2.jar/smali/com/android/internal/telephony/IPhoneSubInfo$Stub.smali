.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final TRANSACTION_getBtid:I = 0x16

.field static final TRANSACTION_getCompleteVoiceMailNumber:I = 0xa

.field static final TRANSACTION_getDeviceId:I = 0x1

.field static final TRANSACTION_getDeviceSvn:I = 0x2

.field static final TRANSACTION_getGroupIdLevel1:I = 0x4

.field static final TRANSACTION_getIccSerialNumber:I = 0x5

.field static final TRANSACTION_getImeiInCDMAGSMPhone:I = 0x1d

.field static final TRANSACTION_getIsimAid:I = 0x18

.field static final TRANSACTION_getIsimDomain:I = 0xd

.field static final TRANSACTION_getIsimImpi:I = 0xc

.field static final TRANSACTION_getIsimImpu:I = 0xe

.field static final TRANSACTION_getIsimPcscf:I = 0x12

.field static final TRANSACTION_getKeyLifetime:I = 0x17

.field static final TRANSACTION_getLine1AlphaTag:I = 0x7

.field static final TRANSACTION_getLine1Number:I = 0x6

.field static final TRANSACTION_getLine1NumberType:I = 0x1e

.field static final TRANSACTION_getMsisdn:I = 0x8

.field static final TRANSACTION_getPsismsc:I = 0x19

.field static final TRANSACTION_getRand:I = 0x15

.field static final TRANSACTION_getSktImsiM:I = 0x1b

.field static final TRANSACTION_getSktIrm:I = 0x1c

.field static final TRANSACTION_getSponImsi:I = 0x11

.field static final TRANSACTION_getSubscriberId:I = 0x3

.field static final TRANSACTION_getSubscriberIdType:I = 0x1f

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0xb

.field static final TRANSACTION_getVoiceMailNumber:I = 0x9

.field static final TRANSACTION_hasCall:I = 0x10

.field static final TRANSACTION_hasIsim:I = 0x14

.field static final TRANSACTION_isGbaSupported:I = 0x13

.field static final TRANSACTION_isSmoveripSupported:I = 0x1a

.field static final TRANSACTION_setPcoValue:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
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
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_230

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 46
    :sswitch_a
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 59
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn()Ljava/lang/String;

    move-result-object v1

    .line 61
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 67
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_30
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 75
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_40
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 83
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 91
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_60
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 99
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_70
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 101
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 107
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_80
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 115
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_91
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 123
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_a2
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 131
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_b3
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 133
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 139
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_c4
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 147
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_d5
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 155
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_e6
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 163
    .end local v1    # "_result":[Ljava/lang/String;
    :sswitch_f7
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setPcoValue(I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 172
    .end local v0    # "_arg0":I
    :sswitch_108
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->hasCall(Ljava/lang/String;)Z

    move-result v1

    .line 176
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v1, :cond_11b

    move v2, v3

    :cond_11b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_120
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSponImsi()[Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 190
    .end local v1    # "_result":[Ljava/lang/String;
    :sswitch_131
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v1

    .line 192
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 198
    .end local v1    # "_result":[Ljava/lang/String;
    :sswitch_142
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isGbaSupported()Z

    move-result v1

    .line 200
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v1, :cond_151

    move v2, v3

    :cond_151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 206
    .end local v1    # "_result":Z
    :sswitch_156
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->hasIsim()Z

    move-result v1

    .line 208
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v1, :cond_165

    move v2, v3

    :cond_165
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 214
    .end local v1    # "_result":Z
    :sswitch_16a
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getRand()[B

    move-result-object v1

    .line 216
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 222
    .end local v1    # "_result":[B
    :sswitch_17b
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getBtid()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 230
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_18c
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getKeyLifetime()Ljava/lang/String;

    move-result-object v1

    .line 232
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 238
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_19d
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimAid()Ljava/lang/String;

    move-result-object v1

    .line 240
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 246
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_1ae
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getPsismsc()[B

    move-result-object v1

    .line 248
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 254
    .end local v1    # "_result":[B
    :sswitch_1bf
    const-string v4, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isSmoveripSupported()Z

    move-result v1

    .line 256
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v1, :cond_1ce

    move v2, v3

    :cond_1ce
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 262
    .end local v1    # "_result":Z
    :sswitch_1d3
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSktImsiM()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 270
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_1e4
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSktIrm()Ljava/lang/String;

    move-result-object v1

    .line 272
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 278
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_1f5
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiInCDMAGSMPhone()Ljava/lang/String;

    move-result-object v1

    .line 280
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 286
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_206
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberType(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 296
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_21b
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdType(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 42
    :sswitch_data_230
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_50
        0x6 -> :sswitch_60
        0x7 -> :sswitch_70
        0x8 -> :sswitch_80
        0x9 -> :sswitch_91
        0xa -> :sswitch_a2
        0xb -> :sswitch_b3
        0xc -> :sswitch_c4
        0xd -> :sswitch_d5
        0xe -> :sswitch_e6
        0xf -> :sswitch_f7
        0x10 -> :sswitch_108
        0x11 -> :sswitch_120
        0x12 -> :sswitch_131
        0x13 -> :sswitch_142
        0x14 -> :sswitch_156
        0x15 -> :sswitch_16a
        0x16 -> :sswitch_17b
        0x17 -> :sswitch_18c
        0x18 -> :sswitch_19d
        0x19 -> :sswitch_1ae
        0x1a -> :sswitch_1bf
        0x1b -> :sswitch_1d3
        0x1c -> :sswitch_1e4
        0x1d -> :sswitch_1f5
        0x1e -> :sswitch_206
        0x1f -> :sswitch_21b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
