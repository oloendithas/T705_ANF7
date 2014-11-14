.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_IsDomesticRoaming:I = 0x59

.field static final TRANSACTION_IsInternationalRoaming:I = 0x58

.field static final TRANSACTION_SimSlotActivation:I = 0x62

.field static final TRANSACTION_SimSlotOnOff:I = 0x61

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_calculateAkaResponse:I = 0x4e

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0x4f

.field static final TRANSACTION_calculateNafExternalKey:I = 0x50

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x3e

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x1a

.field static final TRANSACTION_disableDataConnectivity:I = 0x1c

.field static final TRANSACTION_disableLocationUpdates:I = 0x18

.field static final TRANSACTION_enableApnType:I = 0x19

.field static final TRANSACTION_enableDataConnectivity:I = 0x1b

.field static final TRANSACTION_enableLocationUpdates:I = 0x17

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActivePhoneId:I = 0x41

.field static final TRANSACTION_getActivePhoneType:I = 0x23

.field static final TRANSACTION_getActivePhoneTypeForIMS:I = 0x34

.field static final TRANSACTION_getAllCellInfo:I = 0x2e

.field static final TRANSACTION_getAtr:I = 0x3f

.field static final TRANSACTION_getCallState:I = 0x20

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x24

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x25

.field static final TRANSACTION_getCdmaEriText:I = 0x26

.field static final TRANSACTION_getCellLocation:I = 0x1e

.field static final TRANSACTION_getDataActivity:I = 0x21

.field static final TRANSACTION_getDataNetworkType:I = 0x2a

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x37

.field static final TRANSACTION_getDataServiceState:I = 0x3a

.field static final TRANSACTION_getDataState:I = 0x22

.field static final TRANSACTION_getDefaultSimForVoiceCalls:I = 0x42

.field static final TRANSACTION_getFeliCaUimLockStatus:I = 0x5e

.field static final TRANSACTION_getHandsetInfo:I = 0x54

.field static final TRANSACTION_getIccPin1RetryCount:I = 0x31

.field static final TRANSACTION_getImei:I = 0x5b

.field static final TRANSACTION_getLastError:I = 0x4b

.field static final TRANSACTION_getLgt3GDataStatus:I = 0x56

.field static final TRANSACTION_getLgtOzStartPage:I = 0x57

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x2d

.field static final TRANSACTION_getMeid:I = 0x5a

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1f

.field static final TRANSACTION_getNetworkType:I = 0x29

.field static final TRANSACTION_getPhoneServiceState:I = 0x55

.field static final TRANSACTION_getPinRemainingStatus:I = 0x32

.field static final TRANSACTION_getPreferredDataActivity:I = 0x45

.field static final TRANSACTION_getSdnAvailable:I = 0x33

.field static final TRANSACTION_getSelectResponse:I = 0x40

.field static final TRANSACTION_getServiceState:I = 0x39

.field static final TRANSACTION_getSimPinRetry:I = 0x5c

.field static final TRANSACTION_getSimPukRetry:I = 0x60

.field static final TRANSACTION_getUidForApplication:I = 0x68

.field static final TRANSACTION_getVoiceMessageCount:I = 0x28

.field static final TRANSACTION_getVoiceNetworkType:I = 0x2b

.field static final TRANSACTION_handlePinMmi:I = 0x12

.field static final TRANSACTION_hasIccCard:I = 0x2c

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x52

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1d

.field static final TRANSACTION_isDialingEmergencyCall:I = 0x69

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isImsCall:I = 0x35

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isWifiCallingEnabled:I = 0x67

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x27

.field static final TRANSACTION_notifyMissedCall:I = 0x30

.field static final TRANSACTION_openIccLogicalChannel:I = 0x3d

.field static final TRANSACTION_requestAuthForMediaShare:I = 0x4c

.field static final TRANSACTION_requestIsimAuthentication:I = 0x4d

.field static final TRANSACTION_sendOemRilRequestRaw:I = 0x36

.field static final TRANSACTION_setCellInfoListRate:I = 0x2f

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x38

.field static final TRANSACTION_setDataSubscription:I = 0x47

.field static final TRANSACTION_setDefaultSimForVoiceCalls:I = 0x43

.field static final TRANSACTION_setDefaultSimForVoiceCallsDuringCall:I = 0x44

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0x51

.field static final TRANSACTION_setPreferredDataActivity:I = 0x46

.field static final TRANSACTION_setRadio:I = 0x14

.field static final TRANSACTION_setRadioPower:I = 0x15

.field static final TRANSACTION_setTransmitPower:I = 0x53

.field static final TRANSACTION_setUimRemoteLockStatus:I = 0x5f

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_startGlobalNetworkSearchTimer:I = 0x63

.field static final TRANSACTION_startGlobalNoSvcChkTimer:I = 0x65

.field static final TRANSACTION_stopGlobalNetworkSearchTimer:I = 0x64

.field static final TRANSACTION_stopGlobalNoSvcChkTimer:I = 0x66

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinReportResult:I = 0x10

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukReportResult:I = 0x11

.field static final TRANSACTION_switchDataNetwork:I = 0x48

.field static final TRANSACTION_switchToSim1DataNetwork:I = 0x49

.field static final TRANSACTION_switchToSim2DataNetwork:I = 0x4a

.field static final TRANSACTION_toggleRadioOnOff:I = 0x13

.field static final TRANSACTION_transmitIccAPDU:I = 0x5d

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x3b

.field static final TRANSACTION_transmitIccSimIO:I = 0x3c

.field static final TRANSACTION_updateServiceLocation:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
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
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 25
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
    .line 45
    sparse-switch p1, :sswitch_data_b0e

    .line 1023
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 49
    :sswitch_8
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v2, 0x1

    goto :goto_7

    .line 54
    :sswitch_11
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v2, 0x1

    goto :goto_7

    .line 63
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v2, 0x1

    goto :goto_7

    .line 74
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_3f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v17

    .line 76
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v17, :cond_57

    const/4 v2, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v2, 0x1

    goto :goto_7

    .line 77
    :cond_57
    const/4 v2, 0x0

    goto :goto_50

    .line 82
    .end local v17    # "_result":Z
    :sswitch_59
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7a

    const/4 v3, 0x1

    .line 85
    .local v3, "_arg0":Z
    :goto_67
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v17

    .line 86
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v17, :cond_7c

    const/4 v2, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v2, 0x1

    goto :goto_7

    .line 84
    .end local v3    # "_arg0":Z
    .end local v17    # "_result":Z
    :cond_7a
    const/4 v3, 0x0

    goto :goto_67

    .line 87
    .restart local v3    # "_arg0":Z
    .restart local v17    # "_result":Z
    :cond_7c
    const/4 v2, 0x0

    goto :goto_73

    .line 92
    .end local v3    # "_arg0":Z
    .end local v17    # "_result":Z
    :sswitch_7e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v17

    .line 94
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v17, :cond_97

    const/4 v2, 0x1

    :goto_8f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 95
    :cond_97
    const/4 v2, 0x0

    goto :goto_8f

    .line 100
    .end local v17    # "_result":Z
    :sswitch_99
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 107
    :sswitch_a9
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 114
    :sswitch_b9
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v17

    .line 116
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v17, :cond_d2

    const/4 v2, 0x1

    :goto_ca
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 117
    :cond_d2
    const/4 v2, 0x0

    goto :goto_ca

    .line 122
    .end local v17    # "_result":Z
    :sswitch_d4
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v17

    .line 124
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v17, :cond_ed

    const/4 v2, 0x1

    :goto_e5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 125
    :cond_ed
    const/4 v2, 0x0

    goto :goto_e5

    .line 130
    .end local v17    # "_result":Z
    :sswitch_ef
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v17

    .line 132
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v17, :cond_108

    const/4 v2, 0x1

    :goto_100
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 133
    :cond_108
    const/4 v2, 0x0

    goto :goto_100

    .line 138
    .end local v17    # "_result":Z
    :sswitch_10a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v17

    .line 140
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v17, :cond_123

    const/4 v2, 0x1

    :goto_11b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 141
    :cond_123
    const/4 v2, 0x0

    goto :goto_11b

    .line 146
    .end local v17    # "_result":Z
    :sswitch_125
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v17

    .line 148
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v17, :cond_13e

    const/4 v2, 0x1

    :goto_136
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 149
    :cond_13e
    const/4 v2, 0x0

    goto :goto_136

    .line 154
    .end local v17    # "_result":Z
    :sswitch_140
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 161
    :sswitch_150
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v17

    .line 165
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v17, :cond_16f

    const/4 v2, 0x1

    :goto_167
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 166
    :cond_16f
    const/4 v2, 0x0

    goto :goto_167

    .line 171
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_171
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 177
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v17, :cond_194

    const/4 v2, 0x1

    :goto_18c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 178
    :cond_194
    const/4 v2, 0x0

    goto :goto_18c

    .line 183
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_196
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v17

    .line 187
    .local v17, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 189
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 193
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":[I
    :sswitch_1b4
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 198
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v17

    .line 199
    .restart local v17    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 201
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 205
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v17    # "_result":[I
    :sswitch_1d6
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v17

    .line 209
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v17, :cond_1f5

    const/4 v2, 0x1

    :goto_1ed
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 210
    :cond_1f5
    const/4 v2, 0x0

    goto :goto_1ed

    .line 215
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_1f7
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 222
    :sswitch_207
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_229

    const/4 v3, 0x1

    .line 225
    .local v3, "_arg0":Z
    :goto_215
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v17

    .line 226
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v17, :cond_22b

    const/4 v2, 0x1

    :goto_221
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 224
    .end local v3    # "_arg0":Z
    .end local v17    # "_result":Z
    :cond_229
    const/4 v3, 0x0

    goto :goto_215

    .line 227
    .restart local v3    # "_arg0":Z
    .restart local v17    # "_result":Z
    :cond_22b
    const/4 v2, 0x0

    goto :goto_221

    .line 232
    .end local v3    # "_arg0":Z
    .end local v17    # "_result":Z
    :sswitch_22d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24f

    const/4 v3, 0x1

    .line 235
    .restart local v3    # "_arg0":Z
    :goto_23b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v17

    .line 236
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v17, :cond_251

    const/4 v2, 0x1

    :goto_247
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 234
    .end local v3    # "_arg0":Z
    .end local v17    # "_result":Z
    :cond_24f
    const/4 v3, 0x0

    goto :goto_23b

    .line 237
    .restart local v3    # "_arg0":Z
    .restart local v17    # "_result":Z
    :cond_251
    const/4 v2, 0x0

    goto :goto_247

    .line 242
    .end local v3    # "_arg0":Z
    .end local v17    # "_result":Z
    :sswitch_253
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 249
    :sswitch_263
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 256
    :sswitch_273
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 263
    :sswitch_283
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v17

    .line 267
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 273
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":I
    :sswitch_2a1
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v17

    .line 277
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 283
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":I
    :sswitch_2bf
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v17

    .line 285
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v17, :cond_2d8

    const/4 v2, 0x1

    :goto_2d0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 286
    :cond_2d8
    const/4 v2, 0x0

    goto :goto_2d0

    .line 291
    .end local v17    # "_result":Z
    :sswitch_2da
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v17

    .line 293
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v17, :cond_2f3

    const/4 v2, 0x1

    :goto_2eb
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 294
    :cond_2f3
    const/4 v2, 0x0

    goto :goto_2eb

    .line 299
    .end local v17    # "_result":Z
    :sswitch_2f5
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v17

    .line 301
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v17, :cond_30e

    const/4 v2, 0x1

    :goto_306
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 302
    :cond_30e
    const/4 v2, 0x0

    goto :goto_306

    .line 307
    .end local v17    # "_result":Z
    :sswitch_310
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v17

    .line 309
    .local v17, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v17, :cond_331

    .line 311
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    :goto_32e
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 315
    :cond_331
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32e

    .line 321
    .end local v17    # "_result":Landroid/os/Bundle;
    :sswitch_338
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 324
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 325
    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 327
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 331
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_356
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v17

    .line 333
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 339
    .end local v17    # "_result":I
    :sswitch_36e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v17

    .line 341
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 347
    .end local v17    # "_result":I
    :sswitch_386
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v17

    .line 349
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 355
    .end local v17    # "_result":I
    :sswitch_39e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v17

    .line 357
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 363
    .end local v17    # "_result":I
    :sswitch_3b6
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v17

    .line 365
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 371
    .end local v17    # "_result":I
    :sswitch_3ce
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v17

    .line 373
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 379
    .end local v17    # "_result":I
    :sswitch_3e6
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v17

    .line 381
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 387
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_3fe
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v17

    .line 389
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    if-eqz v17, :cond_417

    const/4 v2, 0x1

    :goto_40f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 390
    :cond_417
    const/4 v2, 0x0

    goto :goto_40f

    .line 395
    .end local v17    # "_result":Z
    :sswitch_419
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v17

    .line 397
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 403
    .end local v17    # "_result":I
    :sswitch_431
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v17

    .line 405
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 411
    .end local v17    # "_result":I
    :sswitch_449
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType()I

    move-result v17

    .line 413
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 419
    .end local v17    # "_result":I
    :sswitch_461
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkType()I

    move-result v17

    .line 421
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 427
    .end local v17    # "_result":I
    :sswitch_479
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v17

    .line 429
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v17, :cond_492

    const/4 v2, 0x1

    :goto_48a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 430
    :cond_492
    const/4 v2, 0x0

    goto :goto_48a

    .line 435
    .end local v17    # "_result":Z
    :sswitch_494
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v17

    .line 437
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 443
    .end local v17    # "_result":I
    :sswitch_4ac
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v18

    .line 445
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 447
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 451
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_4c4
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 454
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 460
    .end local v3    # "_arg0":I
    :sswitch_4da
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 466
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg3":J
    move-object/from16 v2, p0

    .line 469
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 475
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":J
    :sswitch_4fc
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin1RetryCount()I

    move-result v17

    .line 477
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 483
    .end local v17    # "_result":I
    :sswitch_514
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 486
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getPinRemainingStatus(I)I

    move-result v17

    .line 487
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 493
    .end local v3    # "_arg0":I
    .end local v17    # "_result":I
    :sswitch_532
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSdnAvailable()Z

    move-result v17

    .line 495
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    if-eqz v17, :cond_54b

    const/4 v2, 0x1

    :goto_543
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 496
    :cond_54b
    const/4 v2, 0x0

    goto :goto_543

    .line 501
    .end local v17    # "_result":Z
    :sswitch_54d
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForIMS()I

    move-result v17

    .line 503
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 509
    .end local v17    # "_result":I
    :sswitch_565
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsCall()Z

    move-result v17

    .line 511
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    if-eqz v17, :cond_57e

    const/4 v2, 0x1

    :goto_576
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 512
    :cond_57e
    const/4 v2, 0x0

    goto :goto_576

    .line 517
    .end local v17    # "_result":Z
    :sswitch_580
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 521
    .local v3, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 522
    .local v16, "_arg1_length":I
    if-gez v16, :cond_5aa

    .line 523
    const/4 v4, 0x0

    .line 528
    .local v4, "_arg1":[B
    :goto_592
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->sendOemRilRequestRaw([B[B)I

    move-result v17

    .line 529
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 532
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 526
    .end local v4    # "_arg1":[B
    .end local v17    # "_result":I
    :cond_5aa
    move/from16 v0, v16

    new-array v4, v0, [B

    .restart local v4    # "_arg1":[B
    goto :goto_592

    .line 536
    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":[B
    .end local v16    # "_arg1_length":I
    :sswitch_5af
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabled()Z

    move-result v17

    .line 538
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v17, :cond_5c8

    const/4 v2, 0x1

    :goto_5c0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 539
    :cond_5c8
    const/4 v2, 0x0

    goto :goto_5c0

    .line 544
    .end local v17    # "_result":Z
    :sswitch_5ca
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5e3

    const/4 v3, 0x1

    .line 547
    .local v3, "_arg0":Z
    :goto_5d8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(Z)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 546
    .end local v3    # "_arg0":Z
    :cond_5e3
    const/4 v3, 0x0

    goto :goto_5d8

    .line 553
    :sswitch_5e5
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()I

    move-result v17

    .line 555
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 561
    .end local v17    # "_result":I
    :sswitch_5fd
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataServiceState()I

    move-result v17

    .line 563
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 569
    .end local v17    # "_result":I
    :sswitch_615
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 573
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 575
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 577
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 579
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 581
    .local v13, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 583
    .local v14, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, "_arg6":Ljava/lang/String;
    move-object/from16 v8, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 584
    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 585
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 591
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v13    # "_arg4":I
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Ljava/lang/String;
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_64f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 595
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 597
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 599
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 601
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 603
    .restart local v13    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, "_arg5":Ljava/lang/String;
    move-object/from16 v8, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 604
    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v17

    .line 605
    .local v17, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 607
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 611
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v13    # "_arg4":I
    .end local v14    # "_arg5":Ljava/lang/String;
    .end local v17    # "_result":[B
    :sswitch_685
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v17

    .line 615
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 621
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":I
    :sswitch_6a3
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 624
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v17

    .line 625
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v17, :cond_6c2

    const/4 v2, 0x1

    :goto_6ba
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 626
    :cond_6c2
    const/4 v2, 0x0

    goto :goto_6ba

    .line 631
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_6c4
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()[B

    move-result-object v17

    .line 633
    .local v17, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 635
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 639
    .end local v17    # "_result":[B
    :sswitch_6dc
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSelectResponse()[B

    move-result-object v17

    .line 641
    .restart local v17    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 643
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 647
    .end local v17    # "_result":[B
    :sswitch_6f4
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneId()I

    move-result v17

    .line 649
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 655
    .end local v17    # "_result":I
    :sswitch_70c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSimForVoiceCalls()I

    move-result v17

    .line 657
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 663
    .end local v17    # "_result":I
    :sswitch_724
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 666
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultSimForVoiceCalls(I)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 672
    .end local v3    # "_arg0":I
    :sswitch_73a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 675
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultSimForVoiceCallsDuringCall(I)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 681
    .end local v3    # "_arg0":I
    :sswitch_750
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredDataActivity()I

    move-result v17

    .line 683
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 689
    .end local v17    # "_result":I
    :sswitch_768
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 692
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredDataActivity(I)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 698
    .end local v3    # "_arg0":I
    :sswitch_77e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 701
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataSubscription(I)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 707
    .end local v3    # "_arg0":I
    :sswitch_794
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 710
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->switchDataNetwork(I)V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 716
    .end local v3    # "_arg0":I
    :sswitch_7aa
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->switchToSim1DataNetwork()V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 723
    :sswitch_7ba
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->switchToSim2DataNetwork()V

    .line 725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 730
    :sswitch_7ca
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastError()I

    move-result v17

    .line 732
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 738
    .end local v17    # "_result":I
    :sswitch_7e2
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestAuthForMediaShare(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 747
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_7f8
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 750
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsimAuthentication(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 756
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_80e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 760
    .local v3, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 761
    .local v4, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateAkaResponse([B[B)Ljava/lang/String;

    move-result-object v17

    .line 762
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 768
    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":[B
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_830
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 772
    .restart local v3    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 773
    .restart local v4    # "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v17

    .line 774
    .local v17, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    if-eqz v17, :cond_85b

    .line 776
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 782
    :goto_858
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 780
    :cond_85b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_858

    .line 786
    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":[B
    .end local v17    # "_result":Landroid/os/Bundle;
    :sswitch_862
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 789
    .restart local v3    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateNafExternalKey([B)[B

    move-result-object v17

    .line 790
    .local v17, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 792
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 796
    .end local v3    # "_arg0":[B
    .end local v17    # "_result":[B
    :sswitch_880
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 800
    .restart local v3    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 802
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 809
    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_89e
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 812
    .restart local v3    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 818
    .end local v3    # "_arg0":[B
    :sswitch_8b4
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 821
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setTransmitPower(I)Z

    move-result v17

    .line 822
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    if-eqz v17, :cond_8d3

    const/4 v2, 0x1

    :goto_8cb
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 823
    :cond_8d3
    const/4 v2, 0x0

    goto :goto_8cb

    .line 828
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_8d5
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 831
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 832
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 838
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_8f3
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneServiceState()I

    move-result v17

    .line 840
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 846
    .end local v17    # "_result":I
    :sswitch_90b
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 849
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgt3GDataStatus(I)Ljava/lang/String;

    move-result-object v17

    .line 850
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 852
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 856
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_929
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgtOzStartPage()Ljava/lang/String;

    move-result-object v17

    .line 858
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 860
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 864
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_941
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsInternationalRoaming()Z

    move-result v17

    .line 866
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    if-eqz v17, :cond_95a

    const/4 v2, 0x1

    :goto_952
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 867
    :cond_95a
    const/4 v2, 0x0

    goto :goto_952

    .line 872
    .end local v17    # "_result":Z
    :sswitch_95c
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsDomesticRoaming()Z

    move-result v17

    .line 874
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    if-eqz v17, :cond_975

    const/4 v2, 0x1

    :goto_96d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 875
    :cond_975
    const/4 v2, 0x0

    goto :goto_96d

    .line 880
    .end local v17    # "_result":Z
    :sswitch_977
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMeid()Ljava/lang/String;

    move-result-object v17

    .line 882
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 884
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 888
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_98f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getImei()Ljava/lang/String;

    move-result-object v17

    .line 890
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 892
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 896
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_9a7
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPinRetry()I

    move-result v17

    .line 898
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 904
    .end local v17    # "_result":I
    :sswitch_9bf
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 908
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 910
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 912
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 914
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 916
    .restart local v13    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_arg5":Ljava/lang/String;
    move-object/from16 v8, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 917
    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 918
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 920
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 924
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v13    # "_arg4":I
    .end local v14    # "_arg5":Ljava/lang/String;
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_9f5
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 927
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getFeliCaUimLockStatus(I)I

    move-result v17

    .line 928
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 934
    .end local v3    # "_arg0":I
    .end local v17    # "_result":I
    :sswitch_a13
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 937
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setUimRemoteLockStatus(I)I

    move-result v17

    .line 938
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 944
    .end local v3    # "_arg0":I
    .end local v17    # "_result":I
    :sswitch_a31
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPukRetry()I

    move-result v17

    .line 946
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 952
    .end local v17    # "_result":I
    :sswitch_a49
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 955
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->SimSlotOnOff(I)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 961
    .end local v3    # "_arg0":I
    :sswitch_a5f
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a78

    const/4 v3, 0x1

    .line 964
    .local v3, "_arg0":Z
    :goto_a6d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->SimSlotActivation(Z)V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 963
    .end local v3    # "_arg0":Z
    :cond_a78
    const/4 v3, 0x0

    goto :goto_a6d

    .line 970
    :sswitch_a7a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startGlobalNetworkSearchTimer()V

    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 977
    :sswitch_a8a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopGlobalNetworkSearchTimer()V

    .line 979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 984
    :sswitch_a9a
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startGlobalNoSvcChkTimer()V

    .line 986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 991
    :sswitch_aaa
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopGlobalNoSvcChkTimer()V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 998
    :sswitch_aba
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingEnabled()Z

    move-result v17

    .line 1000
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    if-eqz v17, :cond_ad3

    const/4 v2, 0x1

    :goto_acb
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1001
    :cond_ad3
    const/4 v2, 0x0

    goto :goto_acb

    .line 1006
    .end local v17    # "_result":Z
    :sswitch_ad5
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getUidForApplication(Ljava/lang/String;)I

    move-result v17

    .line 1010
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1016
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":I
    :sswitch_af3
    const-string v2, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDialingEmergencyCall()Z

    move-result v17

    .line 1018
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    if-eqz v17, :cond_b0c

    const/4 v2, 0x1

    :goto_b04
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1019
    :cond_b0c
    const/4 v2, 0x0

    goto :goto_b04

    .line 45
    :sswitch_data_b0e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_59
        0x5 -> :sswitch_7e
        0x6 -> :sswitch_99
        0x7 -> :sswitch_a9
        0x8 -> :sswitch_b9
        0x9 -> :sswitch_d4
        0xa -> :sswitch_ef
        0xb -> :sswitch_10a
        0xc -> :sswitch_125
        0xd -> :sswitch_140
        0xe -> :sswitch_150
        0xf -> :sswitch_171
        0x10 -> :sswitch_196
        0x11 -> :sswitch_1b4
        0x12 -> :sswitch_1d6
        0x13 -> :sswitch_1f7
        0x14 -> :sswitch_207
        0x15 -> :sswitch_22d
        0x16 -> :sswitch_253
        0x17 -> :sswitch_263
        0x18 -> :sswitch_273
        0x19 -> :sswitch_283
        0x1a -> :sswitch_2a1
        0x1b -> :sswitch_2bf
        0x1c -> :sswitch_2da
        0x1d -> :sswitch_2f5
        0x1e -> :sswitch_310
        0x1f -> :sswitch_338
        0x20 -> :sswitch_356
        0x21 -> :sswitch_36e
        0x22 -> :sswitch_386
        0x23 -> :sswitch_39e
        0x24 -> :sswitch_3b6
        0x25 -> :sswitch_3ce
        0x26 -> :sswitch_3e6
        0x27 -> :sswitch_3fe
        0x28 -> :sswitch_419
        0x29 -> :sswitch_431
        0x2a -> :sswitch_449
        0x2b -> :sswitch_461
        0x2c -> :sswitch_479
        0x2d -> :sswitch_494
        0x2e -> :sswitch_4ac
        0x2f -> :sswitch_4c4
        0x30 -> :sswitch_4da
        0x31 -> :sswitch_4fc
        0x32 -> :sswitch_514
        0x33 -> :sswitch_532
        0x34 -> :sswitch_54d
        0x35 -> :sswitch_565
        0x36 -> :sswitch_580
        0x37 -> :sswitch_5af
        0x38 -> :sswitch_5ca
        0x39 -> :sswitch_5e5
        0x3a -> :sswitch_5fd
        0x3b -> :sswitch_615
        0x3c -> :sswitch_64f
        0x3d -> :sswitch_685
        0x3e -> :sswitch_6a3
        0x3f -> :sswitch_6c4
        0x40 -> :sswitch_6dc
        0x41 -> :sswitch_6f4
        0x42 -> :sswitch_70c
        0x43 -> :sswitch_724
        0x44 -> :sswitch_73a
        0x45 -> :sswitch_750
        0x46 -> :sswitch_768
        0x47 -> :sswitch_77e
        0x48 -> :sswitch_794
        0x49 -> :sswitch_7aa
        0x4a -> :sswitch_7ba
        0x4b -> :sswitch_7ca
        0x4c -> :sswitch_7e2
        0x4d -> :sswitch_7f8
        0x4e -> :sswitch_80e
        0x4f -> :sswitch_830
        0x50 -> :sswitch_862
        0x51 -> :sswitch_880
        0x52 -> :sswitch_89e
        0x53 -> :sswitch_8b4
        0x54 -> :sswitch_8d5
        0x55 -> :sswitch_8f3
        0x56 -> :sswitch_90b
        0x57 -> :sswitch_929
        0x58 -> :sswitch_941
        0x59 -> :sswitch_95c
        0x5a -> :sswitch_977
        0x5b -> :sswitch_98f
        0x5c -> :sswitch_9a7
        0x5d -> :sswitch_9bf
        0x5e -> :sswitch_9f5
        0x5f -> :sswitch_a13
        0x60 -> :sswitch_a31
        0x61 -> :sswitch_a49
        0x62 -> :sswitch_a5f
        0x63 -> :sswitch_a7a
        0x64 -> :sswitch_a8a
        0x65 -> :sswitch_a9a
        0x66 -> :sswitch_aaa
        0x67 -> :sswitch_aba
        0x68 -> :sswitch_ad5
        0x69 -> :sswitch_af3
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
