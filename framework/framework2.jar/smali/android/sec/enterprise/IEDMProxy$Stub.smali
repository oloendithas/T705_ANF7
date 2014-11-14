.class public abstract Landroid/sec/enterprise/IEDMProxy$Stub;
.super Landroid/os/Binder;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.enterprise.IEDMProxy"

.field static final TRANSACTION_AuditLogger:I = 0x44

.field static final TRANSACTION_addCallsCount:I = 0x1

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x1f

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x22

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x20

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x23

.field static final TRANSACTION_bluetoothLog:I = 0x3d

.field static final TRANSACTION_canIncomingCall:I = 0x1c

.field static final TRANSACTION_canIncomingSms:I = 0x26

.field static final TRANSACTION_canOutgoingCall:I = 0x1d

.field static final TRANSACTION_canOutgoingSms:I = 0x25

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x24

.field static final TRANSACTION_edmAddOrUpdate:I = 0x2d

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x9

.field static final TRANSACTION_getAllowUserPolicyChanges:I = 0x29

.field static final TRANSACTION_getAllowUserProfiles:I = 0x2a

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x7

.field static final TRANSACTION_getApplicationNameFromDb:I = 0x5c

.field static final TRANSACTION_getApplicationNotificationMode:I = 0x3a

.field static final TRANSACTION_getApplicationStateEnabled:I = 0x42

.field static final TRANSACTION_getApplicationStateEnabledAsUser:I = 0x43

.field static final TRANSACTION_getAutomaticConnectionToWifi:I = 0x4b

.field static final TRANSACTION_getBlockedNetworks:I = 0x28

.field static final TRANSACTION_getBrowserSettingStatus:I = 0x12

.field static final TRANSACTION_getELMPermissions:I = 0x67

.field static final TRANSACTION_getEmergencyCallOnly:I = 0x1e

.field static final TRANSACTION_getMinimumRequiredSecurity:I = 0x2c

.field static final TRANSACTION_getNetworkSSIDList:I = 0x27

.field static final TRANSACTION_getPromptCredentialsEnabled:I = 0x2b

.field static final TRANSACTION_getSealedNotificationMessagesState:I = 0x64

.field static final TRANSACTION_getSealedState:I = 0x63

.field static final TRANSACTION_getSlotIdForCaller:I = 0x69

.field static final TRANSACTION_getWifiSsidRestrictionList:I = 0x5b

.field static final TRANSACTION_isAccountAdditionAllowed:I = 0x59

.field static final TRANSACTION_isAccountRemovalAllowed:I = 0x58

.field static final TRANSACTION_isAndroidBeamAllowed:I = 0x57

.field static final TRANSACTION_isApplicationForceStopDisabled:I = 0x3e

.field static final TRANSACTION_isAudioRecordAllowed:I = 0x49

.field static final TRANSACTION_isBackgroundProcessLimitAllowed:I = 0x4e

.field static final TRANSACTION_isBackupAllowed:I = 0x40

.field static final TRANSACTION_isBlockMmsWithStorageEnabled:I = 0x52

.field static final TRANSACTION_isBlockSmsWithStorageEnabled:I = 0x51

.field static final TRANSACTION_isBluetoothDeviceAllowed:I = 0xd

.field static final TRANSACTION_isBluetoothEnabled:I = 0x11

.field static final TRANSACTION_isBluetoothLogEnabled:I = 0x3c

.field static final TRANSACTION_isBluetoothUUIDAllowed:I = 0xb

.field static final TRANSACTION_isCCMPolicyEnabledForCaller:I = 0x68

.field static final TRANSACTION_isCCMPolicyEnabledForPackage:I = 0x6a

.field static final TRANSACTION_isCaCertificateTrusted:I = 0x48

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x2

.field static final TRANSACTION_isCameraEnabled:I = 0x18

.field static final TRANSACTION_isChangeRequested:I = 0x13

.field static final TRANSACTION_isClipboardAllowed:I = 0x1a

.field static final TRANSACTION_isClipboardShareAllowed:I = 0x50

.field static final TRANSACTION_isCopyContactToSimAllowed:I = 0x5d

.field static final TRANSACTION_isDateTimeChangeEnabled:I = 0x2f

.field static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x41

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xf

.field static final TRANSACTION_isGoogleCrashReportAllowed:I = 0x31

.field static final TRANSACTION_isHardwareKeyAllowed:I = 0x34

.field static final TRANSACTION_isIncomingMmsAllowed:I = 0x3f

.field static final TRANSACTION_isIncomingSmsAllowed:I = 0x37

.field static final TRANSACTION_isIntentDisabled:I = 0x8

.field static final TRANSACTION_isKillingActivitiesOnLeaveAllowed:I = 0x4f

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x21

.field static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0x10

.field static final TRANSACTION_isLocationProviderBlocked:I = 0x6

.field static final TRANSACTION_isMMSCaptureEnabled:I = 0x60

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x1b

.field static final TRANSACTION_isNFCEnabled:I = 0x19

.field static final TRANSACTION_isNFCStateChangeAllowed:I = 0x5e

.field static final TRANSACTION_isNonMarketAppAllowed:I = 0x17

.field static final TRANSACTION_isOcspCheckEnabled:I = 0x47

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0xa

.field static final TRANSACTION_isOutgoingSmsAllowed:I = 0x38

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccess:I = 0x65

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccessUid:I = 0x66

.field static final TRANSACTION_isPairingEnabled:I = 0xe

.field static final TRANSACTION_isPowerOffAllowed:I = 0x36

.field static final TRANSACTION_isProfileEnabled:I = 0xc

.field static final TRANSACTION_isRevocationCheckEnabled:I = 0x46

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x14

.field static final TRANSACTION_isRoamingSyncEnabled:I = 0x15

.field static final TRANSACTION_isSBeamAllowed:I = 0x56

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0x4

.field static final TRANSACTION_isSVoiceAllowed:I = 0x54

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x33

.field static final TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x30

.field static final TRANSACTION_isSettingsChangesAllowed:I = 0x16

.field static final TRANSACTION_isSimLockedByAdmin:I = 0x5a

.field static final TRANSACTION_isStatusBarNotificationAllowed:I = 0x3b

.field static final TRANSACTION_isTaskManagerAllowed:I = 0x35

.field static final TRANSACTION_isTimaKeystoreEnabled:I = 0x6b

.field static final TRANSACTION_isTimaKeystoreEnabledForPackage:I = 0x6c

.field static final TRANSACTION_isUrlBlocked:I = 0x39

.field static final TRANSACTION_isUserRemoveCertificatesAllowed:I = 0x5f

.field static final TRANSACTION_isVideoRecordAllowed:I = 0x4a

.field static final TRANSACTION_isWapPushAllowed:I = 0x55

.field static final TRANSACTION_isWifiDirectAllowed:I = 0x4d

.field static final TRANSACTION_isWifiStateChangeAllowed:I = 0x32

.field static final TRANSACTION_notifyCertificateFailure:I = 0x45

.field static final TRANSACTION_notifyCertificateRemoved:I = 0x4c

.field static final TRANSACTION_notifyUserKeystoreUnlocked:I = 0x62

.field static final TRANSACTION_removeNetworkConfiguration:I = 0x2e

.field static final TRANSACTION_storeBlockedSmsMms:I = 0x53

.field static final TRANSACTION_storeCalling:I = 0x3

.field static final TRANSACTION_storeMMS:I = 0x61

.field static final TRANSACTION_storeSMS:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "android.sec.enterprise.IEDMProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Landroid/sec/enterprise/IEDMProxy;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    .line 40
    sparse-switch p1, :sswitch_data_b60

    .line 1103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 44
    :sswitch_8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_7

    .line 49
    :sswitch_f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->addCallsCount(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v0, 0x1

    goto :goto_7

    .line 58
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCallingCaptureEnabled()Z

    move-result v7

    .line 60
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v7, :cond_34

    const/4 v0, 0x1

    :goto_2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v0, 0x1

    goto :goto_7

    .line 61
    :cond_34
    const/4 v0, 0x0

    goto :goto_2f

    .line 66
    .end local v7    # "_result":Z
    :sswitch_36
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v5, 0x1

    .local v5, "_arg4":Z
    :goto_52
    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v0, 0x1

    goto :goto_7

    .line 76
    .end local v5    # "_arg4":Z
    :cond_5b
    const/4 v5, 0x0

    goto :goto_52

    .line 83
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_5d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSMSCaptureEnabled()Z

    move-result v7

    .line 85
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v7, :cond_71

    const/4 v0, 0x1

    :goto_6c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v0, 0x1

    goto :goto_7

    .line 86
    :cond_71
    const/4 v0, 0x0

    goto :goto_6c

    .line 91
    .end local v7    # "_result":Z
    :sswitch_73
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_94

    const/4 v4, 0x1

    .line 100
    .local v4, "_arg3":Z
    :goto_8b
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 99
    .end local v4    # "_arg3":Z
    :cond_94
    const/4 v4, 0x0

    goto :goto_8b

    .line 106
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_96
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v7

    .line 110
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v7, :cond_af

    const/4 v0, 0x1

    :goto_a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 111
    :cond_af
    const/4 v0, 0x0

    goto :goto_a9

    .line 116
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_b1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v7

    .line 120
    .local v7, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 122
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":[B
    :sswitch_c7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ea

    .line 129
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 134
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_da
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v7

    .line 135
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v7, :cond_ec

    const/4 v0, 0x1

    :goto_e4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 132
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_result":Z
    :cond_ea
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_da

    .line 136
    .restart local v7    # "_result":Z
    :cond_ec
    const/4 v0, 0x0

    goto :goto_e4

    .line 141
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_result":Z
    :sswitch_ee
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10a

    const/4 v1, 0x1

    .line 144
    .local v1, "_arg0":Z
    :goto_fa
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowBluetoothDataTransfer(Z)Z

    move-result v7

    .line 145
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v7, :cond_10c

    const/4 v0, 0x1

    :goto_104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 143
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_10a
    const/4 v1, 0x0

    goto :goto_fa

    .line 146
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_10c
    const/4 v0, 0x0

    goto :goto_104

    .line 151
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_10e
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingCallsAllowed()Z

    move-result v7

    .line 153
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v7, :cond_123

    const/4 v0, 0x1

    :goto_11d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 154
    :cond_123
    const/4 v0, 0x0

    goto :goto_11d

    .line 159
    .end local v7    # "_result":Z
    :sswitch_125
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v7

    .line 163
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v7, :cond_13e

    const/4 v0, 0x1

    :goto_138
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 164
    :cond_13e
    const/4 v0, 0x0

    goto :goto_138

    .line 169
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_140
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isProfileEnabled(I)Z

    move-result v7

    .line 173
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v7, :cond_159

    const/4 v0, 0x1

    :goto_153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 174
    :cond_159
    const/4 v0, 0x0

    goto :goto_153

    .line 179
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_15b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v7

    .line 183
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v7, :cond_174

    const/4 v0, 0x1

    :goto_16e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 184
    :cond_174
    const/4 v0, 0x0

    goto :goto_16e

    .line 189
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_176
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPairingEnabled()Z

    move-result v7

    .line 191
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v7, :cond_18b

    const/4 v0, 0x1

    :goto_185
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 192
    :cond_18b
    const/4 v0, 0x0

    goto :goto_185

    .line 197
    .end local v7    # "_result":Z
    :sswitch_18d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDiscoverableEnabled()Z

    move-result v7

    .line 199
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v7, :cond_1a2

    const/4 v0, 0x1

    :goto_19c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 200
    :cond_1a2
    const/4 v0, 0x0

    goto :goto_19c

    .line 205
    .end local v7    # "_result":Z
    :sswitch_1a4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitedDiscoverableEnabled()Z

    move-result v7

    .line 207
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v7, :cond_1b9

    const/4 v0, 0x1

    :goto_1b3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 208
    :cond_1b9
    const/4 v0, 0x0

    goto :goto_1b3

    .line 213
    .end local v7    # "_result":Z
    :sswitch_1bb
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothEnabled()Z

    move-result v7

    .line 215
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v7, :cond_1d0

    const/4 v0, 0x1

    :goto_1ca
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 216
    :cond_1d0
    const/4 v0, 0x0

    goto :goto_1ca

    .line 221
    .end local v7    # "_result":Z
    :sswitch_1d2
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 224
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBrowserSettingStatus(I)Z

    move-result v7

    .line 225
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v7, :cond_1eb

    const/4 v0, 0x1

    :goto_1e5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 226
    :cond_1eb
    const/4 v0, 0x0

    goto :goto_1e5

    .line 231
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_1ed
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isChangeRequested()I

    move-result v7

    .line 233
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 239
    .end local v7    # "_result":I
    :sswitch_1ff
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingPushEnabled()Z

    move-result v7

    .line 241
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v7, :cond_214

    const/4 v0, 0x1

    :goto_20e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 242
    :cond_214
    const/4 v0, 0x0

    goto :goto_20e

    .line 247
    .end local v7    # "_result":Z
    :sswitch_216
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingSyncEnabled()Z

    move-result v7

    .line 249
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v7, :cond_22b

    const/4 v0, 0x1

    :goto_225
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 250
    :cond_22b
    const/4 v0, 0x0

    goto :goto_225

    .line 255
    .end local v7    # "_result":Z
    :sswitch_22d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_249

    const/4 v1, 0x1

    .line 258
    .local v1, "_arg0":Z
    :goto_239
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSettingsChangesAllowed(Z)Z

    move-result v7

    .line 259
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v7, :cond_24b

    const/4 v0, 0x1

    :goto_243
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 257
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_249
    const/4 v1, 0x0

    goto :goto_239

    .line 260
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_24b
    const/4 v0, 0x0

    goto :goto_243

    .line 265
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_24d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNonMarketAppAllowed()Z

    move-result v7

    .line 267
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v7, :cond_262

    const/4 v0, 0x1

    :goto_25c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 268
    :cond_262
    const/4 v0, 0x0

    goto :goto_25c

    .line 273
    .end local v7    # "_result":Z
    :sswitch_264
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_280

    const/4 v1, 0x1

    .line 276
    .restart local v1    # "_arg0":Z
    :goto_270
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCameraEnabled(Z)Z

    move-result v7

    .line 277
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v7, :cond_282

    const/4 v0, 0x1

    :goto_27a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 275
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_280
    const/4 v1, 0x0

    goto :goto_270

    .line 278
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_282
    const/4 v0, 0x0

    goto :goto_27a

    .line 283
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_284
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCEnabled()Z

    move-result v7

    .line 285
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v7, :cond_299

    const/4 v0, 0x1

    :goto_293
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 286
    :cond_299
    const/4 v0, 0x0

    goto :goto_293

    .line 291
    .end local v7    # "_result":Z
    :sswitch_29b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b7

    const/4 v1, 0x1

    .line 294
    .restart local v1    # "_arg0":Z
    :goto_2a7
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardAllowed(Z)Z

    move-result v7

    .line 295
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v7, :cond_2b9

    const/4 v0, 0x1

    :goto_2b1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 293
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_2b7
    const/4 v1, 0x0

    goto :goto_2a7

    .line 296
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_2b9
    const/4 v0, 0x0

    goto :goto_2b1

    .line 301
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_2bb
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d7

    const/4 v1, 0x1

    .line 304
    .restart local v1    # "_arg0":Z
    :goto_2c7
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v7

    .line 305
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v7, :cond_2d9

    const/4 v0, 0x1

    :goto_2d1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 303
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_2d7
    const/4 v1, 0x0

    goto :goto_2c7

    .line 306
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_2d9
    const/4 v0, 0x0

    goto :goto_2d1

    .line 311
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_2db
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v7

    .line 315
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v7, :cond_2f4

    const/4 v0, 0x1

    :goto_2ee
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 316
    :cond_2f4
    const/4 v0, 0x0

    goto :goto_2ee

    .line 321
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_2f6
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v7

    .line 325
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v7, :cond_30f

    const/4 v0, 0x1

    :goto_309
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 326
    :cond_30f
    const/4 v0, 0x0

    goto :goto_309

    .line 331
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_311
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32d

    const/4 v1, 0x1

    .line 334
    .local v1, "_arg0":Z
    :goto_31d
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v7

    .line 335
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v7, :cond_32f

    const/4 v0, 0x1

    :goto_327
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 333
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_32d
    const/4 v1, 0x0

    goto :goto_31d

    .line 336
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_32f
    const/4 v0, 0x0

    goto :goto_327

    .line 341
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_331
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingCalls()Z

    move-result v7

    .line 343
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v7, :cond_346

    const/4 v0, 0x1

    :goto_340
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 344
    :cond_346
    const/4 v0, 0x0

    goto :goto_340

    .line 349
    .end local v7    # "_result":Z
    :sswitch_348
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v7

    .line 351
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v7, :cond_35d

    const/4 v0, 0x1

    :goto_357
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 352
    :cond_35d
    const/4 v0, 0x0

    goto :goto_357

    .line 357
    .end local v7    # "_result":Z
    :sswitch_35f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v7

    .line 359
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v7, :cond_374

    const/4 v0, 0x1

    :goto_36e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 360
    :cond_374
    const/4 v0, 0x0

    goto :goto_36e

    .line 365
    .end local v7    # "_result":Z
    :sswitch_376
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingSms()Z

    move-result v7

    .line 367
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v7, :cond_38b

    const/4 v0, 0x1

    :goto_385
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 368
    :cond_38b
    const/4 v0, 0x0

    goto :goto_385

    .line 373
    .end local v7    # "_result":Z
    :sswitch_38d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingSms()Z

    move-result v7

    .line 375
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v7, :cond_3a2

    const/4 v0, 0x1

    :goto_39c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 376
    :cond_3a2
    const/4 v0, 0x0

    goto :goto_39c

    .line 381
    .end local v7    # "_result":Z
    :sswitch_3a4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v7

    .line 383
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v7, :cond_3b9

    const/4 v0, 0x1

    :goto_3b3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 384
    :cond_3b9
    const/4 v0, 0x0

    goto :goto_3b3

    .line 389
    .end local v7    # "_result":Z
    :sswitch_3bb
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v7

    .line 393
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v7, :cond_3d4

    const/4 v0, 0x1

    :goto_3ce
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 394
    :cond_3d4
    const/4 v0, 0x0

    goto :goto_3ce

    .line 399
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_3d6
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 402
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v7

    .line 403
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v7, :cond_3ef

    const/4 v0, 0x1

    :goto_3e9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 404
    :cond_3ef
    const/4 v0, 0x0

    goto :goto_3e9

    .line 409
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_3f1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v9

    .line 411
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 413
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 417
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_403
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBlockedNetworks()Ljava/util/List;

    move-result-object v9

    .line 419
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 421
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 425
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_415
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserPolicyChanges()Z

    move-result v7

    .line 427
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v7, :cond_42a

    const/4 v0, 0x1

    :goto_424
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 428
    :cond_42a
    const/4 v0, 0x0

    goto :goto_424

    .line 433
    .end local v7    # "_result":Z
    :sswitch_42c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44c

    const/4 v1, 0x1

    .line 437
    .local v1, "_arg0":Z
    :goto_438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserProfiles(ZI)Z

    move-result v7

    .line 439
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v7, :cond_44e

    const/4 v0, 0x1

    :goto_446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 435
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :cond_44c
    const/4 v1, 0x0

    goto :goto_438

    .line 440
    .restart local v1    # "_arg0":Z
    .restart local v2    # "_arg1":I
    .restart local v7    # "_result":Z
    :cond_44e
    const/4 v0, 0x0

    goto :goto_446

    .line 445
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_450
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getPromptCredentialsEnabled()Z

    move-result v7

    .line 447
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v7, :cond_465

    const/4 v0, 0x1

    :goto_45f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 448
    :cond_465
    const/4 v0, 0x0

    goto :goto_45f

    .line 453
    .end local v7    # "_result":Z
    :sswitch_467
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getMinimumRequiredSecurity()I

    move-result v7

    .line 455
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 461
    .end local v7    # "_result":I
    :sswitch_479
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_499

    .line 464
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 470
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_48c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 467
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_499
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_48c

    .line 477
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_49b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v7

    .line 481
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    if-eqz v7, :cond_4b4

    const/4 v0, 0x1

    :goto_4ae
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 482
    :cond_4b4
    const/4 v0, 0x0

    goto :goto_4ae

    .line 487
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_4b6
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDateTimeChangeEnabled()Z

    move-result v7

    .line 489
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    if-eqz v7, :cond_4cb

    const/4 v0, 0x1

    :goto_4c5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 490
    :cond_4cb
    const/4 v0, 0x0

    goto :goto_4c5

    .line 495
    .end local v7    # "_result":Z
    :sswitch_4cd
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenLockPatternVisibilityEnabled()Z

    move-result v7

    .line 497
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v7, :cond_4e2

    const/4 v0, 0x1

    :goto_4dc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 498
    :cond_4e2
    const/4 v0, 0x0

    goto :goto_4dc

    .line 503
    .end local v7    # "_result":Z
    :sswitch_4e4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isGoogleCrashReportAllowed()Z

    move-result v7

    .line 505
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    if-eqz v7, :cond_4f9

    const/4 v0, 0x1

    :goto_4f3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 506
    :cond_4f9
    const/4 v0, 0x0

    goto :goto_4f3

    .line 511
    .end local v7    # "_result":Z
    :sswitch_4fb
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiStateChangeAllowed()Z

    move-result v7

    .line 513
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v7, :cond_510

    const/4 v0, 0x1

    :goto_50a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 514
    :cond_510
    const/4 v0, 0x0

    goto :goto_50a

    .line 519
    .end local v7    # "_result":Z
    :sswitch_512
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52e

    const/4 v1, 0x1

    .line 522
    .local v1, "_arg0":Z
    :goto_51e
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenCaptureEnabled(Z)Z

    move-result v7

    .line 523
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    if-eqz v7, :cond_530

    const/4 v0, 0x1

    :goto_528
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 521
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_52e
    const/4 v1, 0x0

    goto :goto_51e

    .line 524
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_530
    const/4 v0, 0x0

    goto :goto_528

    .line 529
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_532
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 533
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_552

    const/4 v2, 0x1

    .line 534
    .local v2, "_arg1":Z
    :goto_542
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isHardwareKeyAllowed(IZ)Z

    move-result v7

    .line 535
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v7, :cond_554

    const/4 v0, 0x1

    :goto_54c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 533
    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :cond_552
    const/4 v2, 0x0

    goto :goto_542

    .line 536
    .restart local v2    # "_arg1":Z
    .restart local v7    # "_result":Z
    :cond_554
    const/4 v0, 0x0

    goto :goto_54c

    .line 541
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :sswitch_556
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_572

    const/4 v1, 0x1

    .line 544
    .local v1, "_arg0":Z
    :goto_562
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTaskManagerAllowed(Z)Z

    move-result v7

    .line 545
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v7, :cond_574

    const/4 v0, 0x1

    :goto_56c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 543
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_572
    const/4 v1, 0x0

    goto :goto_562

    .line 546
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_574
    const/4 v0, 0x0

    goto :goto_56c

    .line 551
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_576
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_592

    const/4 v1, 0x1

    .line 554
    .restart local v1    # "_arg0":Z
    :goto_582
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPowerOffAllowed(Z)Z

    move-result v7

    .line 555
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    if-eqz v7, :cond_594

    const/4 v0, 0x1

    :goto_58c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 553
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_592
    const/4 v1, 0x0

    goto :goto_582

    .line 556
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_594
    const/4 v0, 0x0

    goto :goto_58c

    .line 561
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_596
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingSmsAllowed()Z

    move-result v7

    .line 563
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v7, :cond_5ab

    const/4 v0, 0x1

    :goto_5a5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 564
    :cond_5ab
    const/4 v0, 0x0

    goto :goto_5a5

    .line 569
    .end local v7    # "_result":Z
    :sswitch_5ad
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingSmsAllowed()Z

    move-result v7

    .line 571
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    if-eqz v7, :cond_5c2

    const/4 v0, 0x1

    :goto_5bc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 572
    :cond_5c2
    const/4 v0, 0x0

    goto :goto_5bc

    .line 577
    .end local v7    # "_result":Z
    :sswitch_5c4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v7

    .line 581
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v7, :cond_5dd

    const/4 v0, 0x1

    :goto_5d7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 582
    :cond_5dd
    const/4 v0, 0x0

    goto :goto_5d7

    .line 587
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_5df
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5f8

    const/4 v1, 0x1

    .line 590
    .local v1, "_arg0":Z
    :goto_5eb
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationNotificationMode(Z)I

    move-result v7

    .line 591
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 589
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":I
    :cond_5f8
    const/4 v1, 0x0

    goto :goto_5eb

    .line 597
    :sswitch_5fa
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z

    move-result v7

    .line 601
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v7, :cond_613

    const/4 v0, 0x1

    :goto_60d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 602
    :cond_613
    const/4 v0, 0x0

    goto :goto_60d

    .line 607
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_615
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothLogEnabled()Z

    move-result v7

    .line 609
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    if-eqz v7, :cond_62a

    const/4 v0, 0x1

    :goto_624
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 610
    :cond_62a
    const/4 v0, 0x0

    goto :goto_624

    .line 615
    .end local v7    # "_result":Z
    :sswitch_62c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 619
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 626
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_642
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 630
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_666

    const/4 v3, 0x1

    .line 633
    .local v3, "_arg2":Z
    :goto_656
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isApplicationForceStopDisabled(Ljava/lang/String;IZ)Z

    move-result v7

    .line 634
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    if-eqz v7, :cond_668

    const/4 v0, 0x1

    :goto_660
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 632
    .end local v3    # "_arg2":Z
    .end local v7    # "_result":Z
    :cond_666
    const/4 v3, 0x0

    goto :goto_656

    .line 635
    .restart local v3    # "_arg2":Z
    .restart local v7    # "_result":Z
    :cond_668
    const/4 v0, 0x0

    goto :goto_660

    .line 640
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v7    # "_result":Z
    :sswitch_66a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingMmsAllowed()Z

    move-result v7

    .line 642
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    if-eqz v7, :cond_67f

    const/4 v0, 0x1

    :goto_679
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 643
    :cond_67f
    const/4 v0, 0x0

    goto :goto_679

    .line 648
    .end local v7    # "_result":Z
    :sswitch_681
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69d

    const/4 v1, 0x1

    .line 651
    .local v1, "_arg0":Z
    :goto_68d
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackupAllowed(Z)Z

    move-result v7

    .line 652
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v7, :cond_69f

    const/4 v0, 0x1

    :goto_697
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 650
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_69d
    const/4 v1, 0x0

    goto :goto_68d

    .line 653
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_69f
    const/4 v0, 0x0

    goto :goto_697

    .line 658
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_6a1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDesktopConnectivityEnabled()Z

    move-result v7

    .line 660
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v7, :cond_6b6

    const/4 v0, 0x1

    :goto_6b0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 661
    :cond_6b6
    const/4 v0, 0x0

    goto :goto_6b0

    .line 666
    .end local v7    # "_result":Z
    :sswitch_6b8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d8

    const/4 v2, 0x1

    .line 671
    .local v2, "_arg1":Z
    :goto_6c8
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationStateEnabled(Ljava/lang/String;Z)Z

    move-result v7

    .line 672
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    if-eqz v7, :cond_6da

    const/4 v0, 0x1

    :goto_6d2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 670
    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :cond_6d8
    const/4 v2, 0x0

    goto :goto_6c8

    .line 673
    .restart local v2    # "_arg1":Z
    .restart local v7    # "_result":Z
    :cond_6da
    const/4 v0, 0x0

    goto :goto_6d2

    .line 678
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :sswitch_6dc
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 682
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_700

    const/4 v2, 0x1

    .line 684
    .restart local v2    # "_arg1":Z
    :goto_6ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 685
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v7

    .line 686
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    if-eqz v7, :cond_702

    const/4 v0, 0x1

    :goto_6fa
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 682
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v7    # "_result":Z
    :cond_700
    const/4 v2, 0x0

    goto :goto_6ec

    .line 687
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":I
    .restart local v7    # "_result":Z
    :cond_702
    const/4 v0, 0x0

    goto :goto_6fa

    .line 692
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v7    # "_result":Z
    :sswitch_704
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 696
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 698
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72e

    const/4 v3, 0x1

    .line 700
    .local v3, "_arg2":Z
    :goto_718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 702
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 704
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 705
    invoke-virtual/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 698
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :cond_72e
    const/4 v3, 0x0

    goto :goto_718

    .line 711
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_730
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_74d

    const/4 v3, 0x1

    .line 718
    .restart local v3    # "_arg2":Z
    :goto_744
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 717
    .end local v3    # "_arg2":Z
    :cond_74d
    const/4 v3, 0x0

    goto :goto_744

    .line 724
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_74f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRevocationCheckEnabled()Z

    move-result v7

    .line 726
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    if-eqz v7, :cond_764

    const/4 v0, 0x1

    :goto_75e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 727
    :cond_764
    const/4 v0, 0x0

    goto :goto_75e

    .line 732
    .end local v7    # "_result":Z
    :sswitch_766
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOcspCheckEnabled()Z

    move-result v7

    .line 734
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    if-eqz v7, :cond_77b

    const/4 v0, 0x1

    :goto_775
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 735
    :cond_77b
    const/4 v0, 0x0

    goto :goto_775

    .line 740
    .end local v7    # "_result":Z
    :sswitch_77d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 744
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_79d

    const/4 v2, 0x1

    .line 745
    .local v2, "_arg1":Z
    :goto_78d
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCaCertificateTrusted([BZ)Z

    move-result v7

    .line 746
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    if-eqz v7, :cond_79f

    const/4 v0, 0x1

    :goto_797
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 744
    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :cond_79d
    const/4 v2, 0x0

    goto :goto_78d

    .line 747
    .restart local v2    # "_arg1":Z
    .restart local v7    # "_result":Z
    :cond_79f
    const/4 v0, 0x0

    goto :goto_797

    .line 752
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :sswitch_7a1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7bd

    const/4 v1, 0x1

    .line 755
    .local v1, "_arg0":Z
    :goto_7ad
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAudioRecordAllowed(Z)Z

    move-result v7

    .line 756
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    if-eqz v7, :cond_7bf

    const/4 v0, 0x1

    :goto_7b7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 754
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_7bd
    const/4 v1, 0x0

    goto :goto_7ad

    .line 757
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_7bf
    const/4 v0, 0x0

    goto :goto_7b7

    .line 762
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_7c1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7dd

    const/4 v1, 0x1

    .line 765
    .restart local v1    # "_arg0":Z
    :goto_7cd
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isVideoRecordAllowed(Z)Z

    move-result v7

    .line 766
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v7, :cond_7df

    const/4 v0, 0x1

    :goto_7d7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 764
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_7dd
    const/4 v1, 0x0

    goto :goto_7cd

    .line 767
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_7df
    const/4 v0, 0x0

    goto :goto_7d7

    .line 772
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_7e1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAutomaticConnectionToWifi()Z

    move-result v7

    .line 774
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    if-eqz v7, :cond_7f6

    const/4 v0, 0x1

    :goto_7f0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 775
    :cond_7f6
    const/4 v0, 0x0

    goto :goto_7f0

    .line 780
    .end local v7    # "_result":Z
    :sswitch_7f8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateRemoved(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 789
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_80a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_826

    const/4 v1, 0x1

    .line 792
    .local v1, "_arg0":Z
    :goto_816
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiDirectAllowed(Z)Z

    move-result v7

    .line 793
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    if-eqz v7, :cond_828

    const/4 v0, 0x1

    :goto_820
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 791
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_826
    const/4 v1, 0x0

    goto :goto_816

    .line 794
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_828
    const/4 v0, 0x0

    goto :goto_820

    .line 799
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_82a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackgroundProcessLimitAllowed()Z

    move-result v7

    .line 801
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    if-eqz v7, :cond_83f

    const/4 v0, 0x1

    :goto_839
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 802
    :cond_83f
    const/4 v0, 0x0

    goto :goto_839

    .line 807
    .end local v7    # "_result":Z
    :sswitch_841
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isKillingActivitiesOnLeaveAllowed()Z

    move-result v7

    .line 809
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    if-eqz v7, :cond_856

    const/4 v0, 0x1

    :goto_850
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 810
    :cond_856
    const/4 v0, 0x0

    goto :goto_850

    .line 815
    .end local v7    # "_result":Z
    :sswitch_858
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardShareAllowed()Z

    move-result v7

    .line 817
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    if-eqz v7, :cond_86d

    const/4 v0, 0x1

    :goto_867
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 818
    :cond_86d
    const/4 v0, 0x0

    goto :goto_867

    .line 823
    .end local v7    # "_result":Z
    :sswitch_86f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockSmsWithStorageEnabled()Z

    move-result v7

    .line 825
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    if-eqz v7, :cond_884

    const/4 v0, 0x1

    :goto_87e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 826
    :cond_884
    const/4 v0, 0x0

    goto :goto_87e

    .line 831
    .end local v7    # "_result":Z
    :sswitch_886
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockMmsWithStorageEnabled()Z

    move-result v7

    .line 833
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    if-eqz v7, :cond_89b

    const/4 v0, 0x1

    :goto_895
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 834
    :cond_89b
    const/4 v0, 0x0

    goto :goto_895

    .line 839
    .end local v7    # "_result":Z
    :sswitch_89d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8c3

    const/4 v1, 0x1

    .line 843
    .restart local v1    # "_arg0":Z
    :goto_8a9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 845
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 847
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 849
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 850
    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 851
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 841
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :cond_8c3
    const/4 v1, 0x0

    goto :goto_8a9

    .line 856
    :sswitch_8c5
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8e1

    const/4 v1, 0x1

    .line 859
    .restart local v1    # "_arg0":Z
    :goto_8d1
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSVoiceAllowed(Z)Z

    move-result v7

    .line 860
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    if-eqz v7, :cond_8e3

    const/4 v0, 0x1

    :goto_8db
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 858
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_8e1
    const/4 v1, 0x0

    goto :goto_8d1

    .line 861
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_8e3
    const/4 v0, 0x0

    goto :goto_8db

    .line 866
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_8e5
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWapPushAllowed()Z

    move-result v7

    .line 868
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    if-eqz v7, :cond_8fa

    const/4 v0, 0x1

    :goto_8f4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 869
    :cond_8fa
    const/4 v0, 0x0

    goto :goto_8f4

    .line 874
    .end local v7    # "_result":Z
    :sswitch_8fc
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_918

    const/4 v1, 0x1

    .line 877
    .restart local v1    # "_arg0":Z
    :goto_908
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSBeamAllowed(Z)Z

    move-result v7

    .line 878
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    if-eqz v7, :cond_91a

    const/4 v0, 0x1

    :goto_912
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 876
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_918
    const/4 v1, 0x0

    goto :goto_908

    .line 879
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_91a
    const/4 v0, 0x0

    goto :goto_912

    .line 884
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_91c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_938

    const/4 v1, 0x1

    .line 887
    .restart local v1    # "_arg0":Z
    :goto_928
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAndroidBeamAllowed(Z)Z

    move-result v7

    .line 888
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    if-eqz v7, :cond_93a

    const/4 v0, 0x1

    :goto_932
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 886
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_938
    const/4 v1, 0x0

    goto :goto_928

    .line 889
    .restart local v1    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_93a
    const/4 v0, 0x0

    goto :goto_932

    .line 894
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_93c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_960

    const/4 v3, 0x1

    .line 901
    .local v3, "_arg2":Z
    :goto_950
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 902
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    if-eqz v7, :cond_962

    const/4 v0, 0x1

    :goto_95a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 900
    .end local v3    # "_arg2":Z
    .end local v7    # "_result":Z
    :cond_960
    const/4 v3, 0x0

    goto :goto_950

    .line 903
    .restart local v3    # "_arg2":Z
    .restart local v7    # "_result":Z
    :cond_962
    const/4 v0, 0x0

    goto :goto_95a

    .line 908
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v7    # "_result":Z
    :sswitch_964
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 912
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 914
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_988

    const/4 v3, 0x1

    .line 915
    .restart local v3    # "_arg2":Z
    :goto_978
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 916
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    if-eqz v7, :cond_98a

    const/4 v0, 0x1

    :goto_982
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 914
    .end local v3    # "_arg2":Z
    .end local v7    # "_result":Z
    :cond_988
    const/4 v3, 0x0

    goto :goto_978

    .line 917
    .restart local v3    # "_arg2":Z
    .restart local v7    # "_result":Z
    :cond_98a
    const/4 v0, 0x0

    goto :goto_982

    .line 922
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v7    # "_result":Z
    :sswitch_98c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 925
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v7

    .line 926
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    if-eqz v7, :cond_9a5

    const/4 v0, 0x1

    :goto_99f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 927
    :cond_9a5
    const/4 v0, 0x0

    goto :goto_99f

    .line 932
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_9a7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 935
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v9

    .line 936
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 938
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 942
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9bd
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 947
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 948
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 950
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 954
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_9d7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 957
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCopyContactToSimAllowed(I)Z

    move-result v7

    .line 958
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    if-eqz v7, :cond_9f0

    const/4 v0, 0x1

    :goto_9ea
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 959
    :cond_9f0
    const/4 v0, 0x0

    goto :goto_9ea

    .line 964
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_9f2
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCStateChangeAllowed()Z

    move-result v7

    .line 966
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    if-eqz v7, :cond_a07

    const/4 v0, 0x1

    :goto_a01
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 967
    :cond_a07
    const/4 v0, 0x0

    goto :goto_a01

    .line 972
    .end local v7    # "_result":Z
    :sswitch_a09
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isUserRemoveCertificatesAllowed()Z

    move-result v7

    .line 974
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    if-eqz v7, :cond_a1e

    const/4 v0, 0x1

    :goto_a18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 975
    :cond_a1e
    const/4 v0, 0x0

    goto :goto_a18

    .line 980
    .end local v7    # "_result":Z
    :sswitch_a20
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMMSCaptureEnabled()Z

    move-result v7

    .line 982
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    if-eqz v7, :cond_a35

    const/4 v0, 0x1

    :goto_a2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 983
    :cond_a35
    const/4 v0, 0x0

    goto :goto_a2f

    .line 988
    .end local v7    # "_result":Z
    :sswitch_a37
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 996
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a58

    const/4 v4, 0x1

    .line 997
    .local v4, "_arg3":Z
    :goto_a4f
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 998
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 996
    .end local v4    # "_arg3":Z
    :cond_a58
    const/4 v4, 0x0

    goto :goto_a4f

    .line 1003
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_a5a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1006
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyUserKeystoreUnlocked(I)V

    .line 1007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1012
    .end local v1    # "_arg0":I
    :sswitch_a6c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSealedState()Z

    move-result v7

    .line 1014
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    if-eqz v7, :cond_a81

    const/4 v0, 0x1

    :goto_a7b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1015
    :cond_a81
    const/4 v0, 0x0

    goto :goto_a7b

    .line 1020
    .end local v7    # "_result":Z
    :sswitch_a83
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSealedNotificationMessagesState()Z

    move-result v7

    .line 1022
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    if-eqz v7, :cond_a98

    const/4 v0, 0x1

    :goto_a92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1023
    :cond_a98
    const/4 v0, 0x0

    goto :goto_a92

    .line 1028
    .end local v7    # "_result":Z
    :sswitch_a9a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z

    move-result v7

    .line 1032
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    if-eqz v7, :cond_ab3

    const/4 v0, 0x1

    :goto_aad
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1033
    :cond_ab3
    const/4 v0, 0x0

    goto :goto_aad

    .line 1038
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_ab5
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1041
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageWhitelistedFromBTSecureAccessUid(I)Z

    move-result v7

    .line 1042
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    if-eqz v7, :cond_ace

    const/4 v0, 0x1

    :goto_ac8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1043
    :cond_ace
    const/4 v0, 0x0

    goto :goto_ac8

    .line 1048
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_ad0
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1052
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1054
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1058
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_ae6
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCCMPolicyEnabledForCaller()Z

    move-result v7

    .line 1060
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    if-eqz v7, :cond_afb

    const/4 v0, 0x1

    :goto_af5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1061
    :cond_afb
    const/4 v0, 0x0

    goto :goto_af5

    .line 1066
    .end local v7    # "_result":Z
    :sswitch_afd
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSlotIdForCaller(Ljava/lang/String;)J

    move-result-wide v7

    .line 1070
    .local v7, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1072
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1076
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":J
    :sswitch_b13
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v7

    .line 1080
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    if-eqz v7, :cond_b2c

    const/4 v0, 0x1

    :goto_b26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1082
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1081
    :cond_b2c
    const/4 v0, 0x0

    goto :goto_b26

    .line 1086
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_b2e
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTimaKeystoreEnabled()Z

    move-result v7

    .line 1088
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    if-eqz v7, :cond_b43

    const/4 v0, 0x1

    :goto_b3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1089
    :cond_b43
    const/4 v0, 0x0

    goto :goto_b3d

    .line 1094
    .end local v7    # "_result":Z
    :sswitch_b45
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1097
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z

    move-result v7

    .line 1098
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    if-eqz v7, :cond_b5e

    const/4 v0, 0x1

    :goto_b58
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1099
    :cond_b5e
    const/4 v0, 0x0

    goto :goto_b58

    .line 40
    :sswitch_data_b60
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_36
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_73
        0x6 -> :sswitch_96
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_c7
        0x9 -> :sswitch_ee
        0xa -> :sswitch_10e
        0xb -> :sswitch_125
        0xc -> :sswitch_140
        0xd -> :sswitch_15b
        0xe -> :sswitch_176
        0xf -> :sswitch_18d
        0x10 -> :sswitch_1a4
        0x11 -> :sswitch_1bb
        0x12 -> :sswitch_1d2
        0x13 -> :sswitch_1ed
        0x14 -> :sswitch_1ff
        0x15 -> :sswitch_216
        0x16 -> :sswitch_22d
        0x17 -> :sswitch_24d
        0x18 -> :sswitch_264
        0x19 -> :sswitch_284
        0x1a -> :sswitch_29b
        0x1b -> :sswitch_2bb
        0x1c -> :sswitch_2db
        0x1d -> :sswitch_2f6
        0x1e -> :sswitch_311
        0x1f -> :sswitch_331
        0x20 -> :sswitch_348
        0x21 -> :sswitch_35f
        0x22 -> :sswitch_376
        0x23 -> :sswitch_38d
        0x24 -> :sswitch_3a4
        0x25 -> :sswitch_3bb
        0x26 -> :sswitch_3d6
        0x27 -> :sswitch_3f1
        0x28 -> :sswitch_403
        0x29 -> :sswitch_415
        0x2a -> :sswitch_42c
        0x2b -> :sswitch_450
        0x2c -> :sswitch_467
        0x2d -> :sswitch_479
        0x2e -> :sswitch_49b
        0x2f -> :sswitch_4b6
        0x30 -> :sswitch_4cd
        0x31 -> :sswitch_4e4
        0x32 -> :sswitch_4fb
        0x33 -> :sswitch_512
        0x34 -> :sswitch_532
        0x35 -> :sswitch_556
        0x36 -> :sswitch_576
        0x37 -> :sswitch_596
        0x38 -> :sswitch_5ad
        0x39 -> :sswitch_5c4
        0x3a -> :sswitch_5df
        0x3b -> :sswitch_5fa
        0x3c -> :sswitch_615
        0x3d -> :sswitch_62c
        0x3e -> :sswitch_642
        0x3f -> :sswitch_66a
        0x40 -> :sswitch_681
        0x41 -> :sswitch_6a1
        0x42 -> :sswitch_6b8
        0x43 -> :sswitch_6dc
        0x44 -> :sswitch_704
        0x45 -> :sswitch_730
        0x46 -> :sswitch_74f
        0x47 -> :sswitch_766
        0x48 -> :sswitch_77d
        0x49 -> :sswitch_7a1
        0x4a -> :sswitch_7c1
        0x4b -> :sswitch_7e1
        0x4c -> :sswitch_7f8
        0x4d -> :sswitch_80a
        0x4e -> :sswitch_82a
        0x4f -> :sswitch_841
        0x50 -> :sswitch_858
        0x51 -> :sswitch_86f
        0x52 -> :sswitch_886
        0x53 -> :sswitch_89d
        0x54 -> :sswitch_8c5
        0x55 -> :sswitch_8e5
        0x56 -> :sswitch_8fc
        0x57 -> :sswitch_91c
        0x58 -> :sswitch_93c
        0x59 -> :sswitch_964
        0x5a -> :sswitch_98c
        0x5b -> :sswitch_9a7
        0x5c -> :sswitch_9bd
        0x5d -> :sswitch_9d7
        0x5e -> :sswitch_9f2
        0x5f -> :sswitch_a09
        0x60 -> :sswitch_a20
        0x61 -> :sswitch_a37
        0x62 -> :sswitch_a5a
        0x63 -> :sswitch_a6c
        0x64 -> :sswitch_a83
        0x65 -> :sswitch_a9a
        0x66 -> :sswitch_ab5
        0x67 -> :sswitch_ad0
        0x68 -> :sswitch_ae6
        0x69 -> :sswitch_afd
        0x6a -> :sswitch_b13
        0x6b -> :sswitch_b2e
        0x6c -> :sswitch_b45
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
