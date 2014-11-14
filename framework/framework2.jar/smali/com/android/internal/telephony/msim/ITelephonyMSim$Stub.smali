.class public abstract Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;
.super Landroid/os/Binder;
.source "ITelephonyMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/msim/ITelephonyMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/ITelephonyMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.msim.ITelephonyMSim"

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x18

.field static final TRANSACTION_disableDataConnectivity:I = 0x1a

.field static final TRANSACTION_enableApnType:I = 0x17

.field static final TRANSACTION_enableDataConnectivity:I = 0x19

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActivePhoneType:I = 0x1f

.field static final TRANSACTION_getAllCellInfo:I = 0x2a

.field static final TRANSACTION_getCallState:I = 0x1c

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x20

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x21

.field static final TRANSACTION_getCdmaEriText:I = 0x22

.field static final TRANSACTION_getDataActivity:I = 0x1d

.field static final TRANSACTION_getDataNetworkType:I = 0x26

.field static final TRANSACTION_getDataState:I = 0x1e

.field static final TRANSACTION_getDefaultSubscription:I = 0x2b

.field static final TRANSACTION_getIccPin1RetryCount:I = 0x12

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x29

.field static final TRANSACTION_getNetworkType:I = 0x25

.field static final TRANSACTION_getPreferredDataSubscription:I = 0x2d

.field static final TRANSACTION_getPreferredVoiceSubscription:I = 0x2c

.field static final TRANSACTION_getVoiceMessageCount:I = 0x24

.field static final TRANSACTION_getVoiceNetworkType:I = 0x27

.field static final TRANSACTION_handlePinMmi:I = 0x13

.field static final TRANSACTION_hasIccCard:I = 0x28

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1b

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x23

.field static final TRANSACTION_setPreferredDataSubscription:I = 0x2e

.field static final TRANSACTION_setRadio:I = 0x15

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinReportResult:I = 0x10

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukReportResult:I = 0x11

.field static final TRANSACTION_toggleRadioOnOff:I = 0x14

.field static final TRANSACTION_updateServiceLocation:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;
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
    const-string v1, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/msim/ITelephonyMSim;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/android/internal/telephony/msim/ITelephonyMSim;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_3f2

    .line 504
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 49
    :sswitch_a
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :sswitch_10
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->dial(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_24
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->call(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :sswitch_3c
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->showCallScreen()Z

    move-result v3

    .line 80
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v3, :cond_4b

    move v5, v6

    :cond_4b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 86
    .end local v3    # "_result":Z
    :sswitch_4f
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_69

    move v0, v6

    .line 89
    .local v0, "_arg0":Z
    :goto_5b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v3

    .line 90
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_65

    move v5, v6

    :cond_65
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_69
    move v0, v5

    .line 88
    goto :goto_5b

    .line 96
    :sswitch_6b
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->endCall(I)Z

    move-result v3

    .line 100
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_7e

    move v5, v6

    :cond_7e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 106
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_82
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->answerRingingCall(I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 115
    .end local v0    # "_arg0":I
    :sswitch_93
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->silenceRinger()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 122
    :sswitch_a0
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isOffhook(I)Z

    move-result v3

    .line 126
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v3, :cond_b3

    move v5, v6

    :cond_b3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 132
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_b8
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isRinging(I)Z

    move-result v3

    .line 136
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v3, :cond_cb

    move v5, v6

    :cond_cb
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 142
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_d0
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isIdle(I)Z

    move-result v3

    .line 146
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v3, :cond_e3

    move v5, v6

    :cond_e3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 152
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_e8
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isRadioOn(I)Z

    move-result v3

    .line 156
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v3, :cond_fb

    move v5, v6

    :cond_fb
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 162
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_100
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isSimPinEnabled(I)Z

    move-result v3

    .line 166
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v3, :cond_113

    move v5, v6

    :cond_113
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 172
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_118
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->cancelMissedCallsNotification(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 181
    .end local v0    # "_arg0":I
    :sswitch_129
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->supplyPin(Ljava/lang/String;I)Z

    move-result v3

    .line 187
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v3, :cond_140

    move v5, v6

    :cond_140
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 193
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_145
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 201
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v3, :cond_160

    move v5, v6

    :cond_160
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 207
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :sswitch_165
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 212
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->supplyPinReportResult(Ljava/lang/String;I)[I

    move-result-object v3

    .line 213
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 219
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":[I
    :sswitch_17e
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v3

    .line 227
    .restart local v3    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[I
    :sswitch_19b
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getIccPin1RetryCount(I)I

    move-result v3

    .line 237
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 243
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_1b0
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->handlePinMmi(Ljava/lang/String;I)Z

    move-result v3

    .line 249
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v3, :cond_1c7

    move v5, v6

    :cond_1c7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 255
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_1cc
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->toggleRadioOnOff(I)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 264
    .end local v0    # "_arg0":I
    :sswitch_1dd
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1fc

    move v0, v6

    .line 268
    .local v0, "_arg0":Z
    :goto_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->setRadio(ZI)Z

    move-result v3

    .line 270
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v3, :cond_1f7

    move v5, v6

    :cond_1f7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :cond_1fc
    move v0, v5

    .line 266
    goto :goto_1e9

    .line 276
    :sswitch_1fe
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->updateServiceLocation(I)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 285
    .end local v0    # "_arg0":I
    :sswitch_20f
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v3

    .line 289
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 295
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_224
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v3

    .line 299
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 305
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_239
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->enableDataConnectivity()Z

    move-result v3

    .line 307
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v3, :cond_248

    move v5, v6

    :cond_248
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 313
    .end local v3    # "_result":Z
    :sswitch_24d
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->disableDataConnectivity()Z

    move-result v3

    .line 315
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v3, :cond_25c

    move v5, v6

    :cond_25c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 321
    .end local v3    # "_result":Z
    :sswitch_261
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isDataConnectivityPossible()Z

    move-result v3

    .line 323
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v3, :cond_270

    move v5, v6

    :cond_270
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 329
    .end local v3    # "_result":Z
    :sswitch_275
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getCallState(I)I

    move-result v3

    .line 333
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 339
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_28a
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getDataActivity()I

    move-result v3

    .line 341
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 347
    .end local v3    # "_result":I
    :sswitch_29b
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getDataState()I

    move-result v3

    .line 349
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 355
    .end local v3    # "_result":I
    :sswitch_2ac
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 358
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getActivePhoneType(I)I

    move-result v3

    .line 359
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 365
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2c1
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 368
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getCdmaEriIconIndex(I)I

    move-result v3

    .line 369
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 375
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2d6
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 378
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getCdmaEriIconMode(I)I

    move-result v3

    .line 379
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 385
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2eb
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 388
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 395
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_300
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->needsOtaServiceProvisioning()Z

    move-result v3

    .line 397
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v3, :cond_30f

    move v5, v6

    :cond_30f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 403
    .end local v3    # "_result":Z
    :sswitch_314
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 406
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getVoiceMessageCount(I)I

    move-result v3

    .line 407
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 413
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_329
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 416
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getNetworkType(I)I

    move-result v3

    .line 417
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 423
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_33e
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 426
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getDataNetworkType(I)I

    move-result v3

    .line 427
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 433
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_353
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 436
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getVoiceNetworkType(I)I

    move-result v3

    .line 437
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 443
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_368
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 446
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->hasIccCard(I)Z

    move-result v3

    .line 447
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v3, :cond_37b

    move v5, v6

    :cond_37b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 453
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_380
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getLteOnCdmaMode(I)I

    move-result v3

    .line 457
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 463
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_395
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    .line 465
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 471
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_3a6
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getDefaultSubscription()I

    move-result v3

    .line 473
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 479
    .end local v3    # "_result":I
    :sswitch_3b7
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getPreferredVoiceSubscription()I

    move-result v3

    .line 481
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 487
    .end local v3    # "_result":I
    :sswitch_3c8
    const-string v5, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getPreferredDataSubscription()I

    move-result v3

    .line 489
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 495
    .end local v3    # "_result":I
    :sswitch_3d9
    const-string v7, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 498
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->setPreferredDataSubscription(I)Z

    move-result v3

    .line 499
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v3, :cond_3ec

    move v5, v6

    :cond_3ec
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 45
    nop

    :sswitch_data_3f2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_82
        0x7 -> :sswitch_93
        0x8 -> :sswitch_a0
        0x9 -> :sswitch_b8
        0xa -> :sswitch_d0
        0xb -> :sswitch_e8
        0xc -> :sswitch_100
        0xd -> :sswitch_118
        0xe -> :sswitch_129
        0xf -> :sswitch_145
        0x10 -> :sswitch_165
        0x11 -> :sswitch_17e
        0x12 -> :sswitch_19b
        0x13 -> :sswitch_1b0
        0x14 -> :sswitch_1cc
        0x15 -> :sswitch_1dd
        0x16 -> :sswitch_1fe
        0x17 -> :sswitch_20f
        0x18 -> :sswitch_224
        0x19 -> :sswitch_239
        0x1a -> :sswitch_24d
        0x1b -> :sswitch_261
        0x1c -> :sswitch_275
        0x1d -> :sswitch_28a
        0x1e -> :sswitch_29b
        0x1f -> :sswitch_2ac
        0x20 -> :sswitch_2c1
        0x21 -> :sswitch_2d6
        0x22 -> :sswitch_2eb
        0x23 -> :sswitch_300
        0x24 -> :sswitch_314
        0x25 -> :sswitch_329
        0x26 -> :sswitch_33e
        0x27 -> :sswitch_353
        0x28 -> :sswitch_368
        0x29 -> :sswitch_380
        0x2a -> :sswitch_395
        0x2b -> :sswitch_3a6
        0x2c -> :sswitch_3b7
        0x2d -> :sswitch_3c8
        0x2e -> :sswitch_3d9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
