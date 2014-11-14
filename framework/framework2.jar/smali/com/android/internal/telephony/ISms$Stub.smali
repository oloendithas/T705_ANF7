.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_copyMessageToIccEf:I = 0x3

.field static final TRANSACTION_disableCdmaBroadcast:I = 0x1b

.field static final TRANSACTION_disableCdmaBroadcastRange:I = 0x1d

.field static final TRANSACTION_disableCellBroadcast:I = 0x8

.field static final TRANSACTION_disableCellBroadcastRange:I = 0xa

.field static final TRANSACTION_enableCdmaBroadcast:I = 0x1a

.field static final TRANSACTION_enableCdmaBroadcastRange:I = 0x1c

.field static final TRANSACTION_enableCellBroadcast:I = 0x7

.field static final TRANSACTION_enableCellBroadcastRange:I = 0x9

.field static final TRANSACTION_getAllMessagesFromDualIccEf:I = 0xf

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_getCbSettings:I = 0x23

.field static final TRANSACTION_getCurrentFormat:I = 0x27

.field static final TRANSACTION_getImsSmsFormat:I = 0xe

.field static final TRANSACTION_getMessagesFromIccEf:I = 0x10

.field static final TRANSACTION_getPremiumSmsPermission:I = 0xb

.field static final TRANSACTION_getSMSAvailable:I = 0x20

.field static final TRANSACTION_getSMSPAvailable:I = 0x21

.field static final TRANSACTION_getSimFullStatus:I = 0x22

.field static final TRANSACTION_getSmsc:I = 0x29

.field static final TRANSACTION_getToddlerMode:I = 0x28

.field static final TRANSACTION_isImsSmsSupported:I = 0xd

.field static final TRANSACTION_resetSimFullStatus:I = 0x24

.field static final TRANSACTION_sendData:I = 0x4

.field static final TRANSACTION_sendDatawithOrigPort:I = 0x12

.field static final TRANSACTION_sendMultipartText:I = 0x6

.field static final TRANSACTION_sendMultipartTextwithCBP:I = 0x19

.field static final TRANSACTION_sendMultipartTextwithOptions:I = 0x1e

.field static final TRANSACTION_sendOTADomestic:I = 0x18

.field static final TRANSACTION_sendRawPduSat:I = 0x1f

.field static final TRANSACTION_sendText:I = 0x5

.field static final TRANSACTION_sendTextKdi:I = 0x14

.field static final TRANSACTION_sendTextWithPriority:I = 0x13

.field static final TRANSACTION_sendTextwithCBP:I = 0x15

.field static final TRANSACTION_sendTextwithOptions:I = 0x16

.field static final TRANSACTION_sendTextwithOptionsReadconfirm:I = 0x17

.field static final TRANSACTION_sendscptResult:I = 0x25

.field static final TRANSACTION_setCDMASmsReassembly:I = 0x26

.field static final TRANSACTION_setPremiumSmsPermission:I = 0xc

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x2

.field static final TRANSACTION_updateSmsServiceCenterOnSimEf:I = 0x11

.field static final TRANSACTION_useLte3GPPSms:I = 0x2a


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_3
    return-object v0

    .line 39
    :cond_4
    const-string v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Lcom/android/internal/telephony/ISms;

    goto :goto_3

    .line 43
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 35
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
    .line 51
    sparse-switch p1, :sswitch_data_75c

    .line 736
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 55
    :sswitch_8
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    goto :goto_7

    .line 60
    :sswitch_11
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    .line 64
    .local v29, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    const/4 v2, 0x1

    goto :goto_7

    .line 70
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_2e
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 76
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 78
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 79
    .local v6, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v28

    .line 80
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v28, :cond_58

    const/4 v2, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v2, 0x1

    goto :goto_7

    .line 81
    :cond_58
    const/4 v2, 0x0

    goto :goto_51

    .line 86
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":[B
    .end local v28    # "_result":Z
    :sswitch_5a
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 92
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 94
    .local v5, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 95
    .restart local v6    # "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v28

    .line 96
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v28, :cond_84

    const/4 v2, 0x1

    :goto_7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v2, 0x1

    goto :goto_7

    .line 97
    :cond_84
    const/4 v2, 0x0

    goto :goto_7d

    .line 102
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":[B
    .end local v28    # "_result":Z
    :sswitch_86
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 112
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 114
    .local v7, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cc

    .line 115
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 121
    .local v8, "_arg5":Landroid/app/PendingIntent;
    :goto_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ce

    .line 122
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, "_arg6":Landroid/app/PendingIntent;
    :goto_c1
    move-object/from16 v2, p0

    .line 127
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 118
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    :cond_cc
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_b1

    .line 125
    :cond_ce
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_c1

    .line 133
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":[B
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_d0
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 141
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_112

    .line 144
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 150
    .local v7, "_arg4":Landroid/app/PendingIntent;
    :goto_f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_114

    .line 151
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    :goto_107
    move-object/from16 v2, p0

    .line 156
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ISms$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 147
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :cond_112
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_f7

    .line 154
    :cond_114
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_107

    .line 162
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_116
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 170
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 172
    .local v14, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 174
    .local v15, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .local v16, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    .line 175
    invoke-virtual/range {v10 .. v16}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 181
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v16    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_14b
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(I)Z

    move-result v28

    .line 185
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v28, :cond_16a

    const/4 v2, 0x1

    :goto_162
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 186
    :cond_16a
    const/4 v2, 0x0

    goto :goto_162

    .line 191
    .end local v3    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_16c
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(I)Z

    move-result v28

    .line 195
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v28, :cond_18b

    const/4 v2, 0x1

    :goto_183
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 196
    :cond_18b
    const/4 v2, 0x0

    goto :goto_183

    .line 201
    .end local v3    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_18d
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 206
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRange(II)Z

    move-result v28

    .line 207
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v28, :cond_1b0

    const/4 v2, 0x1

    :goto_1a8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 208
    :cond_1b0
    const/4 v2, 0x0

    goto :goto_1a8

    .line 213
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_1b2
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 217
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 218
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRange(II)Z

    move-result v28

    .line 219
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v28, :cond_1d5

    const/4 v2, 0x1

    :goto_1cd
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 220
    :cond_1d5
    const/4 v2, 0x0

    goto :goto_1cd

    .line 225
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_1d7
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v28

    .line 229
    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 235
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_1f5
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 240
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 246
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_20f
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupported()Z

    move-result v28

    .line 248
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v28, :cond_228

    const/4 v2, 0x1

    :goto_220
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 249
    :cond_228
    const/4 v2, 0x0

    goto :goto_220

    .line 254
    .end local v28    # "_result":Z
    :sswitch_22a
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v28

    .line 256
    .local v28, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 262
    .end local v28    # "_result":Ljava/lang/String;
    :sswitch_242
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromDualIccEf(I)Ljava/util/List;

    move-result-object v29

    .line 266
    .restart local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 268
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 272
    .end local v3    # "_arg0":I
    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_260
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getMessagesFromIccEf(I)[B

    move-result-object v28

    .line 276
    .local v28, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 278
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 282
    .end local v3    # "_arg0":I
    .end local v28    # "_result":[B
    :sswitch_27e
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 285
    .local v3, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->updateSmsServiceCenterOnSimEf([B)Z

    move-result v28

    .line 286
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v28, :cond_29d

    const/4 v2, 0x1

    :goto_295
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 287
    :cond_29d
    const/4 v2, 0x0

    goto :goto_295

    .line 292
    .end local v3    # "_arg0":[B
    .end local v28    # "_result":Z
    :sswitch_29f
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 300
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 302
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 304
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 306
    .local v8, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e9

    .line 307
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 313
    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    :goto_2ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2eb

    .line 314
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .local v10, "_arg7":Landroid/app/PendingIntent;
    :goto_2de
    move-object/from16 v2, p0

    .line 319
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 310
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    :cond_2e9
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_2ce

    .line 317
    :cond_2eb
    const/4 v10, 0x0

    .restart local v10    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_2de

    .line 325
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":[B
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    :sswitch_2ed
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 331
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 333
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32f

    .line 334
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 340
    .local v6, "_arg3":Landroid/app/PendingIntent;
    :goto_310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_331

    .line 341
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 347
    .local v7, "_arg4":Landroid/app/PendingIntent;
    :goto_320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg5":I
    move-object/from16 v2, p0

    .line 348
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ISms$Stub;->sendTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 337
    .end local v6    # "_arg3":Landroid/app/PendingIntent;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":I
    :cond_32f
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_310

    .line 344
    :cond_331
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_320

    .line 354
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/app/PendingIntent;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_333
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 358
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 360
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 362
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_378

    .line 363
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 369
    .restart local v6    # "_arg3":Landroid/app/PendingIntent;
    :goto_356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_37a

    .line 370
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 376
    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    :goto_366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_37c

    const/4 v8, 0x1

    .local v8, "_arg5":Z
    :goto_36d
    move-object/from16 v2, p0

    .line 377
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ISms$Stub;->sendTextKdi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 366
    .end local v6    # "_arg3":Landroid/app/PendingIntent;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Z
    :cond_378
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_356

    .line 373
    :cond_37a
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_366

    .line 376
    :cond_37c
    const/4 v8, 0x0

    goto :goto_36d

    .line 383
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/app/PendingIntent;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_37e
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 387
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 389
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 391
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c8

    .line 394
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 400
    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    :goto_3a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3ca

    .line 401
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 407
    .local v8, "_arg5":Landroid/app/PendingIntent;
    :goto_3b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg7":I
    move-object/from16 v2, p0

    .line 410
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->sendTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 397
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":I
    :cond_3c8
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_3a5

    .line 404
    :cond_3ca
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_3b5

    .line 416
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_3cc
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 422
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 424
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 426
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_421

    .line 427
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 433
    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    :goto_3f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_423

    .line 434
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 440
    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    :goto_403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_425

    const/4 v9, 0x1

    .line 442
    .local v9, "_arg6":Z
    :goto_40a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 444
    .restart local v10    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 446
    .local v11, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg9":I
    move-object/from16 v2, p0

    .line 447
    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 430
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Z
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":I
    .end local v12    # "_arg9":I
    :cond_421
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_3f3

    .line 437
    :cond_423
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_403

    .line 440
    :cond_425
    const/4 v9, 0x0

    goto :goto_40a

    .line 453
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_427
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 457
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 459
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 461
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 463
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_480

    .line 464
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 470
    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    :goto_44e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_482

    .line 471
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 477
    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    :goto_45e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_484

    const/4 v9, 0x1

    .line 479
    .restart local v9    # "_arg6":Z
    :goto_465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 481
    .restart local v10    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 483
    .restart local v11    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 485
    .restart local v12    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg10":I
    move-object/from16 v2, p0

    .line 486
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/ISms$Stub;->sendTextwithOptionsReadconfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 467
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Z
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":I
    .end local v12    # "_arg9":I
    .end local v13    # "_arg10":I
    :cond_480
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_44e

    .line 474
    :cond_482
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_45e

    .line 477
    :cond_484
    const/4 v9, 0x0

    goto :goto_465

    .line 492
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_486
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 496
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 498
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 500
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 501
    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 507
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_4a8
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 511
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 513
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 515
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 517
    .restart local v14    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 519
    .restart local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 521
    .restart local v16    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 523
    .local v9, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg7":I
    move-object/from16 v17, p0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-object/from16 v24, v9

    move/from16 v25, v10

    .line 524
    invoke-virtual/range {v17 .. v25}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 530
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":I
    .end local v14    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v16    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_4f2
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 533
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->enableCdmaBroadcast(I)Z

    move-result v28

    .line 534
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v28, :cond_511

    const/4 v2, 0x1

    :goto_509
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 535
    :cond_511
    const/4 v2, 0x0

    goto :goto_509

    .line 540
    .end local v3    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_513
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 543
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->disableCdmaBroadcast(I)Z

    move-result v28

    .line 544
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v28, :cond_532

    const/4 v2, 0x1

    :goto_52a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 545
    :cond_532
    const/4 v2, 0x0

    goto :goto_52a

    .line 550
    .end local v3    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_534
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 554
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 555
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->enableCdmaBroadcastRange(II)Z

    move-result v28

    .line 556
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    if-eqz v28, :cond_557

    const/4 v2, 0x1

    :goto_54f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 557
    :cond_557
    const/4 v2, 0x0

    goto :goto_54f

    .line 562
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_559
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 566
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 567
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->disableCdmaBroadcastRange(II)Z

    move-result v28

    .line 568
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v28, :cond_57c

    const/4 v2, 0x1

    :goto_574
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 569
    :cond_57c
    const/4 v2, 0x0

    goto :goto_574

    .line 574
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_57e
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 582
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 584
    .restart local v14    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 586
    .restart local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 588
    .restart local v16    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5d7

    const/4 v9, 0x1

    .line 590
    .local v9, "_arg6":Z
    :goto_5ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 592
    .restart local v10    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 594
    .restart local v11    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg9":I
    move-object/from16 v17, p0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    .line 595
    invoke-virtual/range {v17 .. v27}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 588
    .end local v9    # "_arg6":Z
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":I
    .end local v12    # "_arg9":I
    :cond_5d7
    const/4 v9, 0x0

    goto :goto_5ac

    .line 601
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v16    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_5d9
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 605
    .local v3, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 607
    .local v4, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_613

    .line 608
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 614
    .local v5, "_arg2":Landroid/app/PendingIntent;
    :goto_5f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_615

    .line 615
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 620
    .local v6, "_arg3":Landroid/app/PendingIntent;
    :goto_608
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->sendRawPduSat([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 611
    .end local v5    # "_arg2":Landroid/app/PendingIntent;
    .end local v6    # "_arg3":Landroid/app/PendingIntent;
    :cond_613
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_5f8

    .line 618
    :cond_615
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_608

    .line 626
    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":Landroid/app/PendingIntent;
    .end local v6    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_617
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSMSAvailable()Z

    move-result v28

    .line 628
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v28, :cond_630

    const/4 v2, 0x1

    :goto_628
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 629
    :cond_630
    const/4 v2, 0x0

    goto :goto_628

    .line 634
    .end local v28    # "_result":Z
    :sswitch_632
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSMSPAvailable()Z

    move-result v28

    .line 636
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    if-eqz v28, :cond_64b

    const/4 v2, 0x1

    :goto_643
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 637
    :cond_64b
    const/4 v2, 0x0

    goto :goto_643

    .line 642
    .end local v28    # "_result":Z
    :sswitch_64d
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSimFullStatus()Z

    move-result v28

    .line 644
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    if-eqz v28, :cond_666

    const/4 v2, 0x1

    :goto_65e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 645
    :cond_666
    const/4 v2, 0x0

    goto :goto_65e

    .line 650
    .end local v28    # "_result":Z
    :sswitch_668
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getCbSettings()[B

    move-result-object v28

    .line 652
    .local v28, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 654
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 658
    .end local v28    # "_result":[B
    :sswitch_680
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->resetSimFullStatus()V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 665
    :sswitch_690
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 671
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 673
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 675
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 677
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d6

    .line 678
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 684
    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    :goto_6bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d8

    .line 685
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, "_arg6":Landroid/app/PendingIntent;
    :goto_6cb
    move-object/from16 v2, p0

    .line 690
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 681
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    :cond_6d6
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_6bb

    .line 688
    :cond_6d8
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_6cb

    .line 696
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_6da
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6f3

    const/4 v3, 0x1

    .line 699
    .local v3, "_arg0":Z
    :goto_6e8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->setCDMASmsReassembly(Z)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 698
    .end local v3    # "_arg0":Z
    :cond_6f3
    const/4 v3, 0x0

    goto :goto_6e8

    .line 705
    :sswitch_6f5
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getCurrentFormat()Ljava/lang/String;

    move-result-object v28

    .line 707
    .local v28, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 709
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 713
    .end local v28    # "_result":Ljava/lang/String;
    :sswitch_70d
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getToddlerMode()Z

    move-result v28

    .line 715
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    if-eqz v28, :cond_726

    const/4 v2, 0x1

    :goto_71e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 716
    :cond_726
    const/4 v2, 0x0

    goto :goto_71e

    .line 721
    .end local v28    # "_result":Z
    :sswitch_728
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSmsc()Ljava/lang/String;

    move-result-object v28

    .line 723
    .local v28, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 729
    .end local v28    # "_result":Ljava/lang/String;
    :sswitch_740
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->useLte3GPPSms()Z

    move-result v28

    .line 731
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    if-eqz v28, :cond_759

    const/4 v2, 0x1

    :goto_751
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 732
    :cond_759
    const/4 v2, 0x0

    goto :goto_751

    .line 51
    nop

    :sswitch_data_75c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_5a
        0x4 -> :sswitch_86
        0x5 -> :sswitch_d0
        0x6 -> :sswitch_116
        0x7 -> :sswitch_14b
        0x8 -> :sswitch_16c
        0x9 -> :sswitch_18d
        0xa -> :sswitch_1b2
        0xb -> :sswitch_1d7
        0xc -> :sswitch_1f5
        0xd -> :sswitch_20f
        0xe -> :sswitch_22a
        0xf -> :sswitch_242
        0x10 -> :sswitch_260
        0x11 -> :sswitch_27e
        0x12 -> :sswitch_29f
        0x13 -> :sswitch_2ed
        0x14 -> :sswitch_333
        0x15 -> :sswitch_37e
        0x16 -> :sswitch_3cc
        0x17 -> :sswitch_427
        0x18 -> :sswitch_486
        0x19 -> :sswitch_4a8
        0x1a -> :sswitch_4f2
        0x1b -> :sswitch_513
        0x1c -> :sswitch_534
        0x1d -> :sswitch_559
        0x1e -> :sswitch_57e
        0x1f -> :sswitch_5d9
        0x20 -> :sswitch_617
        0x21 -> :sswitch_632
        0x22 -> :sswitch_64d
        0x23 -> :sswitch_668
        0x24 -> :sswitch_680
        0x25 -> :sswitch_690
        0x26 -> :sswitch_6da
        0x27 -> :sswitch_6f5
        0x28 -> :sswitch_70d
        0x29 -> :sswitch_728
        0x2a -> :sswitch_740
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
