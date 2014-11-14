.class public abstract Lcom/sec/knox/container/IEnterpriseContainerService$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseContainerService.java"

# interfaces
.implements Lcom/sec/knox/container/IEnterpriseContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/IEnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/IEnterpriseContainerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.knox.container.IEnterpriseContainerService"

.field static final TRANSACTION_activateContainer:I = 0x7

.field static final TRANSACTION_adminPasswordReset:I = 0x7d

.field static final TRANSACTION_cancelCreateContainer:I = 0x6b

.field static final TRANSACTION_changeActiveContainerPasswordStatus:I = 0x6c

.field static final TRANSACTION_changePassword:I = 0x13

.field static final TRANSACTION_checkPassword:I = 0x11

.field static final TRANSACTION_containerizedAppStarting:I = 0x67

.field static final TRANSACTION_createContainer:I = 0x1

.field static final TRANSACTION_createContainerFromB2CtoB2B:I = 0x2

.field static final TRANSACTION_createContainerInternal:I = 0x3

.field static final TRANSACTION_enforcePasswordChange:I = 0x12

.field static final TRANSACTION_getAllowBluetoothMode:I = 0x48

.field static final TRANSACTION_getAllowBrowser:I = 0x54

.field static final TRANSACTION_getAllowCamera:I = 0x52

.field static final TRANSACTION_getAllowDesktopSync:I = 0x4a

.field static final TRANSACTION_getAllowInternetSharing:I = 0x46

.field static final TRANSACTION_getAllowIrDA:I = 0x4c

.field static final TRANSACTION_getAllowPOPIMAPEmail:I = 0x50

.field static final TRANSACTION_getAllowStorageCard:I = 0x4e

.field static final TRANSACTION_getAllowTextMessaging:I = 0x44

.field static final TRANSACTION_getAllowWifi:I = 0x42

.field static final TRANSACTION_getAndroidId:I = 0x68

.field static final TRANSACTION_getAppInstallationSource:I = 0x19

.field static final TRANSACTION_getAppUninstallAllowed:I = 0x1a

.field static final TRANSACTION_getContainerEmailId:I = 0x66

.field static final TRANSACTION_getContainerFirmwareVersion:I = 0x5b

.field static final TRANSACTION_getContainerForPackage:I = 0x6d

.field static final TRANSACTION_getContainerId:I = 0x8

.field static final TRANSACTION_getContainerLockOnScreenLock:I = 0x73

.field static final TRANSACTION_getContainerPackages:I = 0x4

.field static final TRANSACTION_getContainerSecurityInformation:I = 0x14

.field static final TRANSACTION_getContainerType:I = 0x18

.field static final TRANSACTION_getContainerisedString:I = 0x6e

.field static final TRANSACTION_getContainerizedPackageName:I = 0x9

.field static final TRANSACTION_getContainers:I = 0x5

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x1e

.field static final TRANSACTION_getInstalledApplications:I = 0x7b

.field static final TRANSACTION_getInstalledPackages:I = 0x7c

.field static final TRANSACTION_getLaunchIntentForContainerizedApp:I = 0x75

.field static final TRANSACTION_getLockType:I = 0x17

.field static final TRANSACTION_getMaximumFailedPasswordsForDisable:I = 0x21

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1f

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x24

.field static final TRANSACTION_getMinPasswordComplexChars:I = 0x63

.field static final TRANSACTION_getMountStatus:I = 0x1d

.field static final TRANSACTION_getOriginalPackageName:I = 0xa

.field static final TRANSACTION_getOriginalPackageNames:I = 0xb

.field static final TRANSACTION_getPassword:I = 0x64

.field static final TRANSACTION_getPasswordEnabledContainerLockTimeout:I = 0x7f

.field static final TRANSACTION_getPasswordExpiration:I = 0x25

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x26

.field static final TRANSACTION_getPasswordExpires:I = 0x61

.field static final TRANSACTION_getPasswordHistory:I = 0x3e

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x28

.field static final TRANSACTION_getPasswordMaximumLength:I = 0x2a

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x2b

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0x2d

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x2f

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x31

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0x33

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0x35

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x37

.field static final TRANSACTION_getPasswordQuality:I = 0x39

.field static final TRANSACTION_getPasswordVerifyOnlyOnModeChange:I = 0x56

.field static final TRANSACTION_getProperty:I = 0x69

.field static final TRANSACTION_getPropertyOpt:I = 0x6a

.field static final TRANSACTION_getSimplePasswordEnabled:I = 0x57

.field static final TRANSACTION_getStatus:I = 0xc

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x5e

.field static final TRANSACTION_installPackages:I = 0x1b

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x3b

.field static final TRANSACTION_isKeyguardLocked:I = 0x5c

.field static final TRANSACTION_isKeyguardSecure:I = 0x5d

.field static final TRANSACTION_isPasswordForbidden:I = 0x72

.field static final TRANSACTION_isPasswordVisisbilityEnabled:I = 0x40

.field static final TRANSACTION_lockContainer:I = 0xd

.field static final TRANSACTION_onUserInteraction:I = 0x5f

.field static final TRANSACTION_reboot:I = 0x65

.field static final TRANSACTION_registerEventReceiver:I = 0x79

.field static final TRANSACTION_removeContainer:I = 0x6

.field static final TRANSACTION_resetPassword:I = 0x3c

.field static final TRANSACTION_setAllowBluetoothMode:I = 0x47

.field static final TRANSACTION_setAllowBrowser:I = 0x53

.field static final TRANSACTION_setAllowCamera:I = 0x51

.field static final TRANSACTION_setAllowDesktopSync:I = 0x49

.field static final TRANSACTION_setAllowInternetSharing:I = 0x45

.field static final TRANSACTION_setAllowIrDA:I = 0x4b

.field static final TRANSACTION_setAllowPOPIMAPEmail:I = 0x4f

.field static final TRANSACTION_setAllowStorageCard:I = 0x4d

.field static final TRANSACTION_setAllowTextMessaging:I = 0x43

.field static final TRANSACTION_setAllowWifi:I = 0x41

.field static final TRANSACTION_setContainerLockOnScreenLock:I = 0x74

.field static final TRANSACTION_setDownloadWakeState:I = 0x80

.field static final TRANSACTION_setLockType:I = 0x16

.field static final TRANSACTION_setMaximumFailedPasswordsForDisable:I = 0x22

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x20

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x23

.field static final TRANSACTION_setMinPasswordComplexChars:I = 0x62

.field static final TRANSACTION_setPasswordEnabledContainerLockTimeout:I = 0x7e

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x27

.field static final TRANSACTION_setPasswordExpires:I = 0x60

.field static final TRANSACTION_setPasswordHistory:I = 0x3d

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x29

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x2c

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x2e

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x30

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0x32

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0x34

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0x36

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x38

.field static final TRANSACTION_setPasswordQuality:I = 0x3a

.field static final TRANSACTION_setPasswordVerifyOnlyOnModeChange:I = 0x55

.field static final TRANSACTION_setPasswordVisibilityEnabled:I = 0x3f

.field static final TRANSACTION_setSimplePasswordEnabled:I = 0x58

.field static final TRANSACTION_startApp:I = 0x70

.field static final TRANSACTION_startTimer:I = 0x76

.field static final TRANSACTION_startUpgrade:I = 0x59

.field static final TRANSACTION_stopApp:I = 0x71

.field static final TRANSACTION_stopTimer:I = 0x77

.field static final TRANSACTION_stopTimerWithTimeOut:I = 0x78

.field static final TRANSACTION_unRegisterEventReceiver:I = 0x7a

.field static final TRANSACTION_uninstallPackages:I = 0x1c

.field static final TRANSACTION_unlockContainer:I = 0xe

.field static final TRANSACTION_upgradeComplete:I = 0x5a

.field static final TRANSACTION_validatePasswordComplexity:I = 0x15

.field static final TRANSACTION_verifyPassword:I = 0xf

.field static final TRANSACTION_verifyPasswordForAutoMount:I = 0x10

.field static final TRANSACTION_wipeSDCardData:I = 0x6f


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.knox.container.IEnterpriseContainerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/knox/container/IEnterpriseContainerService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/knox/container/IEnterpriseContainerService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/knox/container/IEnterpriseContainerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
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
    .line 38
    sparse-switch p1, :sswitch_data_13da

    .line 1852
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 42
    :sswitch_8
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_7

    .line 47
    :sswitch_11
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v3

    .line 51
    .local v3, "_arg0":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 52
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z

    move-result v12

    .line 53
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v12, :cond_37

    const/4 v2, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v2, 0x1

    goto :goto_7

    .line 54
    :cond_37
    const/4 v2, 0x0

    goto :goto_30

    .line 59
    .end local v3    # "_arg0":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v4    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_39
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 65
    .local v4, "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 66
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->createContainerFromB2CtoB2B(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z

    move-result v12

    .line 67
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v12, :cond_63

    const/4 v2, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/4 v2, 0x1

    goto :goto_7

    .line 68
    :cond_63
    const/4 v2, 0x0

    goto :goto_5c

    .line 73
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v5    # "_arg2":I
    .end local v12    # "_result":Z
    :sswitch_65
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_98

    .line 76
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 82
    .local v3, "_arg0":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :goto_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 83
    .restart local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->createContainerInternal(Lcom/sec/knox/container/EnterpriseContainerObjectParam;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v12

    .line 84
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v12, :cond_9a

    const/4 v2, 0x1

    :goto_90
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 79
    .end local v3    # "_arg0":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v12    # "_result":Z
    :cond_98
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    goto :goto_7c

    .line 85
    .restart local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .restart local v12    # "_result":Z
    :cond_9a
    const/4 v2, 0x0

    goto :goto_90

    .line 90
    .end local v3    # "_arg0":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v12    # "_result":Z
    :sswitch_9c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerPackages(I)Ljava/util/List;

    move-result-object v17

    .line 94
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 96
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 100
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_ba
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainers()Ljava/util/List;

    move-result-object v16

    .line 102
    .local v16, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 104
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 108
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :sswitch_d2
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 113
    .restart local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v12

    .line 114
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v12, :cond_f9

    const/4 v2, 0x1

    :goto_f1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 115
    :cond_f9
    const/4 v2, 0x0

    goto :goto_f1

    .line 120
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v12    # "_result":Z
    :sswitch_fb
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->activateContainer(I)Z

    move-result v12

    .line 124
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v12, :cond_11a

    const/4 v2, 0x1

    :goto_112
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 125
    :cond_11a
    const/4 v2, 0x0

    goto :goto_112

    .line 130
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_11c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerId(I)I

    move-result v12

    .line 134
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 140
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_138
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 146
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 152
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_158
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 158
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 164
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_178
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getOriginalPackageNames(I)Ljava/util/List;

    move-result-object v17

    .line 168
    .restart local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 170
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 174
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_196
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getStatus(I)I

    move-result v12

    .line 178
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 184
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_1b2
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->lockContainer(I)Z

    move-result v12

    .line 188
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v12, :cond_1d1

    const/4 v2, 0x1

    :goto_1c9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 189
    :cond_1d1
    const/4 v2, 0x0

    goto :goto_1c9

    .line 194
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_1d3
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->unlockContainer(I)Z

    move-result v12

    .line 198
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v12, :cond_1f2

    const/4 v2, 0x1

    :goto_1ea
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 199
    :cond_1f2
    const/4 v2, 0x0

    goto :goto_1ea

    .line 204
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_1f4
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v5

    .line 211
    .local v5, "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->verifyPassword(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 217
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :sswitch_216
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 223
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v5

    .line 224
    .restart local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->verifyPasswordForAutoMount(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 230
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :sswitch_238
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->checkPassword(ILjava/lang/String;)I

    move-result v12

    .line 236
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 242
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_258
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 245
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->enforcePasswordChange(I)Z

    move-result v12

    .line 246
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v12, :cond_277

    const/4 v2, 0x1

    :goto_26f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 247
    :cond_277
    const/4 v2, 0x0

    goto :goto_26f

    .line 252
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_279
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 258
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v6

    .line 261
    .local v6, "_arg3":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->changePassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 267
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :sswitch_29f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerSecurityInformation(I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v12

    .line 271
    .local v12, "_result":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v12, :cond_2c4

    .line 273
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v2}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 279
    :goto_2c1
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 277
    :cond_2c4
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c1

    .line 283
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :sswitch_2cb
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 290
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->validatePasswordComplexity(ILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 291
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 297
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_2ef
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setLockType(II)Z

    move-result v12

    .line 303
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v12, :cond_312

    const/4 v2, 0x1

    :goto_30a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 304
    :cond_312
    const/4 v2, 0x0

    goto :goto_30a

    .line 309
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_314
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 312
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getLockType(I)I

    move-result v12

    .line 313
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 319
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_330
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 322
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerType(I)I

    move-result v12

    .line 323
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 329
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_34c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 333
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAppInstallationSource(ILjava/lang/String;)I

    move-result v12

    .line 335
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 341
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_36c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 346
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAppUninstallAllowed(ILjava/lang/String;)Z

    move-result v12

    .line 347
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v12, :cond_38f

    const/4 v2, 0x1

    :goto_387
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 348
    :cond_38f
    const/4 v2, 0x0

    goto :goto_387

    .line 353
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_391
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 357
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v5

    .line 361
    .local v5, "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 363
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 364
    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->installPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)Z

    move-result v12

    .line 365
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v12, :cond_3c4

    const/4 v2, 0x1

    :goto_3bc
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 366
    :cond_3c4
    const/4 v2, 0x0

    goto :goto_3bc

    .line 371
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v12    # "_result":Z
    :sswitch_3c6
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 377
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v5

    .line 378
    .restart local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->uninstallPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v12

    .line 379
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v12, :cond_3f1

    const/4 v2, 0x1

    :goto_3e9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 380
    :cond_3f1
    const/4 v2, 0x0

    goto :goto_3e9

    .line 385
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v12    # "_result":Z
    :sswitch_3f3
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 388
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMountStatus(I)Z

    move-result v12

    .line 389
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    if-eqz v12, :cond_412

    const/4 v2, 0x1

    :goto_40a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 390
    :cond_412
    const/4 v2, 0x0

    goto :goto_40a

    .line 395
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_414
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 398
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v12

    .line 399
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 405
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_430
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 409
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45c

    .line 410
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 415
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_44b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v12

    .line 416
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 413
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_45c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_44b

    .line 422
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_45e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 426
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_488

    .line 427
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 433
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 434
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 430
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_488
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_479

    .line 440
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_48a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 444
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b6

    .line 445
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 450
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_4a5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v12

    .line 451
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 448
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_4b6
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4a5

    .line 457
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4b8
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 461
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e2

    .line 462
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 468
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_4d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 469
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 465
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_4e2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4d3

    .line 475
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4e4
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 479
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50e

    .line 480
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 486
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_4ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 487
    .local v10, "_arg2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 483
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v10    # "_arg2":J
    :cond_50e
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4ff

    .line 493
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_510
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 497
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53c

    .line 498
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 503
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_52b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v12

    .line 504
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 506
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 501
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":J
    :cond_53c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_52b

    .line 510
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_53e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 514
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56a

    .line 515
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 520
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_559
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordExpiration(ILandroid/content/ComponentName;)J

    move-result-wide v12

    .line 521
    .restart local v12    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 523
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 518
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":J
    :cond_56a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_559

    .line 527
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_56c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 531
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_598

    .line 532
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 537
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_587
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v12

    .line 538
    .restart local v12    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 540
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 535
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":J
    :cond_598
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_587

    .line 544
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_59a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 548
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5c4

    .line 549
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 555
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_5b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 556
    .restart local v10    # "_arg2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 552
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v10    # "_arg2":J
    :cond_5c4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_5b5

    .line 562
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_5c6
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 566
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5f2

    .line 567
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 572
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_5e1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordHistoryLength(ILandroid/content/ComponentName;)I

    move-result v12

    .line 573
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 570
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_5f2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_5e1

    .line 579
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_5f4
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 583
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_61e

    .line 584
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 590
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_60f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 591
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordHistoryLength(ILandroid/content/ComponentName;I)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 587
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_61e
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_60f

    .line 597
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_620
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 601
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 602
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMaximumLength(II)I

    move-result v12

    .line 603
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 609
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v12    # "_result":I
    :sswitch_640
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 613
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66c

    .line 614
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 619
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_65b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v12

    .line 620
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 617
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_66c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_65b

    .line 626
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_66e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 630
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_698

    .line 631
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 637
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 638
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 634
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_698
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_689

    .line 644
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_69a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 648
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6c6

    .line 649
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 654
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_6b5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v12

    .line 655
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 652
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_6c6
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_6b5

    .line 661
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_6c8
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 665
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6f2

    .line 666
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 672
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_6e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 673
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 669
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_6f2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_6e3

    .line 679
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_6f4
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 683
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_720

    .line 684
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 689
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_70f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v12

    .line 690
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 687
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_720
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_70f

    .line 696
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_722
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 700
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_74c

    .line 701
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 707
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_73d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 708
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 704
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_74c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_73d

    .line 714
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_74e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 718
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_77a

    .line 719
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 724
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_769
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v12

    .line 725
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 722
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_77a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_769

    .line 731
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_77c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 735
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7a6

    .line 736
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 742
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 743
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 739
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_7a6
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_797

    .line 749
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_7a8
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 753
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7d4

    .line 754
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 759
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_7c3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v12

    .line 760
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 757
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_7d4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_7c3

    .line 766
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_7d6
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 770
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_800

    .line 771
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 777
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_7f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 778
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 774
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_800
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_7f1

    .line 784
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_802
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 788
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_82e

    .line 789
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 794
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_81d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v12

    .line 795
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 792
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_82e
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_81d

    .line 801
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_830
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 805
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_85a

    .line 806
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 812
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_84b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 813
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 809
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_85a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_84b

    .line 819
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_85c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 823
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_888

    .line 824
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 829
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_877
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v12

    .line 830
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 827
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_888
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_877

    .line 836
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_88a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 840
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8b4

    .line 841
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 847
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_8a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 848
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V

    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 844
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_8b4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_8a5

    .line 854
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_8b6
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 858
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8e2

    .line 859
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 864
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_8d1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v12

    .line 865
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 862
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_8e2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_8d1

    .line 871
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_8e4
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 875
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_90e

    .line 876
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 882
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_8ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 883
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordQuality(ILandroid/content/ComponentName;I)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 879
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_90e
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_8ff

    .line 889
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_910
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 892
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isActivePasswordSufficient(I)Z

    move-result v12

    .line 893
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    if-eqz v12, :cond_92f

    const/4 v2, 0x1

    :goto_927
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 894
    :cond_92f
    const/4 v2, 0x0

    goto :goto_927

    .line 899
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_931
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 903
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 905
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 906
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->resetPassword(ILjava/lang/String;I)Z

    move-result v12

    .line 907
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    if-eqz v12, :cond_958

    const/4 v2, 0x1

    :goto_950
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 908
    :cond_958
    const/4 v2, 0x0

    goto :goto_950

    .line 913
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v12    # "_result":Z
    :sswitch_95a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 917
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_984

    .line 918
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 924
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 925
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    .line 926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 921
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_984
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_975

    .line 931
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_986
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 935
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9b2

    .line 936
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 941
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_9a1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v12

    .line 942
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 939
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_9b2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_9a1

    .line 948
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_9b4
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 952
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9d1

    const/4 v4, 0x1

    .line 953
    .local v4, "_arg1":Z
    :goto_9c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordVisibilityEnabled(IZ)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 952
    .end local v4    # "_arg1":Z
    :cond_9d1
    const/4 v4, 0x0

    goto :goto_9c6

    .line 959
    .end local v3    # "_arg0":I
    :sswitch_9d3
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 962
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isPasswordVisisbilityEnabled(I)Z

    move-result v12

    .line 963
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    if-eqz v12, :cond_9f2

    const/4 v2, 0x1

    :goto_9ea
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 964
    :cond_9f2
    const/4 v2, 0x0

    goto :goto_9ea

    .line 969
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_9f4
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 973
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a21

    .line 974
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 980
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_a0f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a23

    const/4 v5, 0x1

    .line 981
    .local v5, "_arg2":Z
    :goto_a16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowWifi(ILandroid/content/ComponentName;Z)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 977
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_a21
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_a0f

    .line 980
    :cond_a23
    const/4 v5, 0x0

    goto :goto_a16

    .line 987
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_a25
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 991
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a54

    .line 992
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 997
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_a40
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowWifi(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 998
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    if-eqz v12, :cond_a56

    const/4 v2, 0x1

    :goto_a4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 995
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_a54
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_a40

    .line 999
    .restart local v12    # "_result":Z
    :cond_a56
    const/4 v2, 0x0

    goto :goto_a4c

    .line 1004
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_a58
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1008
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a85

    .line 1009
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1015
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_a73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a87

    const/4 v5, 0x1

    .line 1016
    .restart local v5    # "_arg2":Z
    :goto_a7a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowTextMessaging(ILandroid/content/ComponentName;Z)V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1012
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_a85
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_a73

    .line 1015
    :cond_a87
    const/4 v5, 0x0

    goto :goto_a7a

    .line 1022
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_a89
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1026
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ab8

    .line 1027
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1032
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_aa4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowTextMessaging(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1033
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    if-eqz v12, :cond_aba

    const/4 v2, 0x1

    :goto_ab0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1030
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_ab8
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_aa4

    .line 1034
    .restart local v12    # "_result":Z
    :cond_aba
    const/4 v2, 0x0

    goto :goto_ab0

    .line 1039
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_abc
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1043
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ae9

    .line 1044
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1050
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_ad7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_aeb

    const/4 v5, 0x1

    .line 1051
    .restart local v5    # "_arg2":Z
    :goto_ade
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowInternetSharing(ILandroid/content/ComponentName;Z)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1047
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_ae9
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_ad7

    .line 1050
    :cond_aeb
    const/4 v5, 0x0

    goto :goto_ade

    .line 1057
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_aed
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1061
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b1c

    .line 1062
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1067
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_b08
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowInternetSharing(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1068
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    if-eqz v12, :cond_b1e

    const/4 v2, 0x1

    :goto_b14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1065
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_b1c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_b08

    .line 1069
    .restart local v12    # "_result":Z
    :cond_b1e
    const/4 v2, 0x0

    goto :goto_b14

    .line 1074
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_b20
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1078
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b4a

    .line 1079
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1085
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_b3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1086
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowBluetoothMode(ILandroid/content/ComponentName;I)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1082
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_b4a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_b3b

    .line 1092
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_b4c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1096
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b78

    .line 1097
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1102
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_b67
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowBluetoothMode(ILandroid/content/ComponentName;)I

    move-result v12

    .line 1103
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1100
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_b78
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_b67

    .line 1109
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_b7a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1113
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ba7

    .line 1114
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1120
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_b95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ba9

    const/4 v5, 0x1

    .line 1121
    .local v5, "_arg2":Z
    :goto_b9c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowDesktopSync(ILandroid/content/ComponentName;Z)V

    .line 1122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1117
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_ba7
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_b95

    .line 1120
    :cond_ba9
    const/4 v5, 0x0

    goto :goto_b9c

    .line 1127
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_bab
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1131
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_bda

    .line 1132
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1137
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_bc6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowDesktopSync(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1138
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    if-eqz v12, :cond_bdc

    const/4 v2, 0x1

    :goto_bd2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1135
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_bda
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_bc6

    .line 1139
    .restart local v12    # "_result":Z
    :cond_bdc
    const/4 v2, 0x0

    goto :goto_bd2

    .line 1144
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_bde
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1148
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c0b

    .line 1149
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1155
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_bf9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c0d

    const/4 v5, 0x1

    .line 1156
    .restart local v5    # "_arg2":Z
    :goto_c00
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowIrDA(ILandroid/content/ComponentName;Z)V

    .line 1157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1152
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_c0b
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_bf9

    .line 1155
    :cond_c0d
    const/4 v5, 0x0

    goto :goto_c00

    .line 1162
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_c0f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1166
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c3e

    .line 1167
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1172
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_c2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowIrDA(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1173
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    if-eqz v12, :cond_c40

    const/4 v2, 0x1

    :goto_c36
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1170
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_c3e
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_c2a

    .line 1174
    .restart local v12    # "_result":Z
    :cond_c40
    const/4 v2, 0x0

    goto :goto_c36

    .line 1179
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_c42
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1183
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c6f

    .line 1184
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1190
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_c5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c71

    const/4 v5, 0x1

    .line 1191
    .restart local v5    # "_arg2":Z
    :goto_c64
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowStorageCard(ILandroid/content/ComponentName;Z)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1187
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_c6f
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_c5d

    .line 1190
    :cond_c71
    const/4 v5, 0x0

    goto :goto_c64

    .line 1197
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_c73
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1201
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ca2

    .line 1202
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1207
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_c8e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowStorageCard(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1208
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    if-eqz v12, :cond_ca4

    const/4 v2, 0x1

    :goto_c9a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1205
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_ca2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_c8e

    .line 1209
    .restart local v12    # "_result":Z
    :cond_ca4
    const/4 v2, 0x0

    goto :goto_c9a

    .line 1214
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_ca6
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1218
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cd3

    .line 1219
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1225
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_cc1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cd5

    const/4 v5, 0x1

    .line 1226
    .restart local v5    # "_arg2":Z
    :goto_cc8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1222
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_cd3
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_cc1

    .line 1225
    :cond_cd5
    const/4 v5, 0x0

    goto :goto_cc8

    .line 1232
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_cd7
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1236
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d06

    .line 1237
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1242
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_cf2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1243
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    if-eqz v12, :cond_d08

    const/4 v2, 0x1

    :goto_cfe
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1240
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_d06
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_cf2

    .line 1244
    .restart local v12    # "_result":Z
    :cond_d08
    const/4 v2, 0x0

    goto :goto_cfe

    .line 1249
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_d0a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1253
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d37

    .line 1254
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1260
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_d25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d39

    const/4 v5, 0x1

    .line 1261
    .restart local v5    # "_arg2":Z
    :goto_d2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowCamera(ILandroid/content/ComponentName;Z)V

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1257
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_d37
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d25

    .line 1260
    :cond_d39
    const/4 v5, 0x0

    goto :goto_d2c

    .line 1267
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_d3b
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1271
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d6a

    .line 1272
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1277
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_d56
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowCamera(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1278
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    if-eqz v12, :cond_d6c

    const/4 v2, 0x1

    :goto_d62
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1275
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_d6a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d56

    .line 1279
    .restart local v12    # "_result":Z
    :cond_d6c
    const/4 v2, 0x0

    goto :goto_d62

    .line 1284
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_d6e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1288
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d9b

    .line 1289
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1295
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_d89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d9d

    const/4 v5, 0x1

    .line 1296
    .restart local v5    # "_arg2":Z
    :goto_d90
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowBrowser(ILandroid/content/ComponentName;Z)V

    .line 1297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1292
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_d9b
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d89

    .line 1295
    :cond_d9d
    const/4 v5, 0x0

    goto :goto_d90

    .line 1302
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_d9f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1306
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_dce

    .line 1307
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1312
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_dba
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowBrowser(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1313
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    if-eqz v12, :cond_dd0

    const/4 v2, 0x1

    :goto_dc6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1310
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_dce
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_dba

    .line 1314
    .restart local v12    # "_result":Z
    :cond_dd0
    const/4 v2, 0x0

    goto :goto_dc6

    .line 1319
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_dd2
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1323
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_df8

    const/4 v4, 0x1

    .line 1324
    .local v4, "_arg1":Z
    :goto_de4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordVerifyOnlyOnModeChange(IZ)Z

    move-result v12

    .line 1325
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    if-eqz v12, :cond_dfa

    const/4 v2, 0x1

    :goto_df0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1323
    .end local v4    # "_arg1":Z
    .end local v12    # "_result":Z
    :cond_df8
    const/4 v4, 0x0

    goto :goto_de4

    .line 1326
    .restart local v4    # "_arg1":Z
    .restart local v12    # "_result":Z
    :cond_dfa
    const/4 v2, 0x0

    goto :goto_df0

    .line 1331
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v12    # "_result":Z
    :sswitch_dfc
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1334
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordVerifyOnlyOnModeChange(I)Z

    move-result v12

    .line 1335
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    if-eqz v12, :cond_e1b

    const/4 v2, 0x1

    :goto_e13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1336
    :cond_e1b
    const/4 v2, 0x0

    goto :goto_e13

    .line 1341
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_e1d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1345
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e4c

    .line 1346
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1351
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_e38
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1352
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    if-eqz v12, :cond_e4e

    const/4 v2, 0x1

    :goto_e44
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1349
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_e4c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_e38

    .line 1353
    .restart local v12    # "_result":Z
    :cond_e4e
    const/4 v2, 0x0

    goto :goto_e44

    .line 1358
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_e50
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1362
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e7d

    .line 1363
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1369
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_e6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e7f

    const/4 v5, 0x1

    .line 1370
    .restart local v5    # "_arg2":Z
    :goto_e72
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V

    .line 1371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1366
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_e7d
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_e6b

    .line 1369
    :cond_e7f
    const/4 v5, 0x0

    goto :goto_e72

    .line 1376
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_e81
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1379
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->startUpgrade(I)Z

    move-result v12

    .line 1380
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    if-eqz v12, :cond_ea0

    const/4 v2, 0x1

    :goto_e98
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1381
    :cond_ea0
    const/4 v2, 0x0

    goto :goto_e98

    .line 1386
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_ea2
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1389
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->upgradeComplete(I)Z

    move-result v12

    .line 1390
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    if-eqz v12, :cond_ec1

    const/4 v2, 0x1

    :goto_eb9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1391
    :cond_ec1
    const/4 v2, 0x0

    goto :goto_eb9

    .line 1396
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_ec3
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1399
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerFirmwareVersion(I)Ljava/lang/String;

    move-result-object v12

    .line 1400
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1402
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1406
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_edf
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1409
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isKeyguardLocked(I)Z

    move-result v12

    .line 1410
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    if-eqz v12, :cond_efe

    const/4 v2, 0x1

    :goto_ef6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1411
    :cond_efe
    const/4 v2, 0x0

    goto :goto_ef6

    .line 1416
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_f00
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1419
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isKeyguardSecure(I)Z

    move-result v12

    .line 1420
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    if-eqz v12, :cond_f1f

    const/4 v2, 0x1

    :goto_f17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1421
    :cond_f1f
    const/4 v2, 0x0

    goto :goto_f17

    .line 1426
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_f21
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1429
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->inKeyguardRestrictedInputMode(I)Z

    move-result v12

    .line 1430
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    if-eqz v12, :cond_f40

    const/4 v2, 0x1

    :goto_f38
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1431
    :cond_f40
    const/4 v2, 0x0

    goto :goto_f38

    .line 1436
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_f42
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1439
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->onUserInteraction(I)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1445
    .end local v3    # "_arg0":I
    :sswitch_f58
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1449
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f82

    .line 1450
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1456
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_f73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1457
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordExpires(ILandroid/content/ComponentName;I)V

    .line 1458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1453
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_f82
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_f73

    .line 1463
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_f84
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1467
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fb0

    .line 1468
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1473
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_f9f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordExpires(ILandroid/content/ComponentName;)I

    move-result v12

    .line 1474
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1471
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_fb0
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_f9f

    .line 1480
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_fb2
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1484
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fdc

    .line 1485
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1491
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_fcd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1492
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V

    .line 1493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1488
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_fdc
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_fcd

    .line 1498
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_fde
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1502
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_100a

    .line 1503
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1508
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_ff9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMinPasswordComplexChars(ILandroid/content/ComponentName;)I

    move-result v12

    .line 1509
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1506
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_100a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_ff9

    .line 1515
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_100c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1519
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1038

    .line 1520
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1525
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_1027
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPassword(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v12

    .line 1526
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1528
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1523
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Ljava/lang/String;
    :cond_1038
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1027

    .line 1532
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_103a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1536
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1537
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->reboot(ILjava/lang/String;)V

    .line 1538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1543
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1054
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1546
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerEmailId(I)Ljava/lang/String;

    move-result-object v12

    .line 1547
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1549
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1553
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_1070
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1556
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->containerizedAppStarting(I)V

    .line 1557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1562
    .end local v3    # "_arg0":I
    :sswitch_1086
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1565
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAndroidId(I)Ljava/lang/String;

    move-result-object v12

    .line 1566
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1568
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1572
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_10a2
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1576
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1577
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1578
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1580
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1584
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_10c2
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1588
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1590
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1591
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPropertyOpt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1592
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1594
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1598
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_10e6
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1601
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->cancelCreateContainer(I)Z

    move-result v12

    .line 1602
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    if-eqz v12, :cond_1105

    const/4 v2, 0x1

    :goto_10fd
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1603
    :cond_1105
    const/4 v2, 0x0

    goto :goto_10fd

    .line 1608
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_1107
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1611
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->changeActiveContainerPasswordStatus(I)V

    .line 1612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1617
    .end local v3    # "_arg0":I
    :sswitch_111d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1620
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerForPackage(Ljava/lang/String;)I

    move-result v12

    .line 1621
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1627
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_1139
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1631
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1632
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1633
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1634
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1635
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1639
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_1159
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1642
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->wipeSDCardData(I)Z

    move-result v12

    .line 1643
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    if-eqz v12, :cond_1178

    const/4 v2, 0x1

    :goto_1170
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1644
    :cond_1178
    const/4 v2, 0x0

    goto :goto_1170

    .line 1649
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_117a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1653
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1655
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1656
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->startApp(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 1657
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1658
    if-eqz v12, :cond_11a1

    const/4 v2, 0x1

    :goto_1199
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1658
    :cond_11a1
    const/4 v2, 0x0

    goto :goto_1199

    .line 1663
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_11a3
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1667
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1668
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->stopApp(ILjava/lang/String;)Z

    move-result v12

    .line 1669
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    if-eqz v12, :cond_11c6

    const/4 v2, 0x1

    :goto_11be
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1670
    :cond_11c6
    const/4 v2, 0x0

    goto :goto_11be

    .line 1675
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_11c8
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1679
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1680
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isPasswordForbidden(ILjava/lang/String;)Z

    move-result v12

    .line 1681
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    if-eqz v12, :cond_11eb

    const/4 v2, 0x1

    :goto_11e3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1682
    :cond_11eb
    const/4 v2, 0x0

    goto :goto_11e3

    .line 1687
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_11ed
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1690
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerLockOnScreenLock(I)Z

    move-result v12

    .line 1691
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    if-eqz v12, :cond_120c

    const/4 v2, 0x1

    :goto_1204
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1692
    :cond_120c
    const/4 v2, 0x0

    goto :goto_1204

    .line 1697
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_120e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1701
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1234

    const/4 v4, 0x1

    .line 1702
    .local v4, "_arg1":Z
    :goto_1220
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setContainerLockOnScreenLock(IZ)Z

    move-result v12

    .line 1703
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1704
    if-eqz v12, :cond_1236

    const/4 v2, 0x1

    :goto_122c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1705
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1701
    .end local v4    # "_arg1":Z
    .end local v12    # "_result":Z
    :cond_1234
    const/4 v4, 0x0

    goto :goto_1220

    .line 1704
    .restart local v4    # "_arg1":Z
    .restart local v12    # "_result":Z
    :cond_1236
    const/4 v2, 0x0

    goto :goto_122c

    .line 1709
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v12    # "_result":Z
    :sswitch_1238
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1713
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1714
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getLaunchIntentForContainerizedApp(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 1715
    .local v12, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    if-eqz v12, :cond_1261

    .line 1717
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1718
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1723
    :goto_125e
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1721
    :cond_1261
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_125e

    .line 1727
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Landroid/content/Intent;
    :sswitch_1268
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1731
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1732
    .local v4, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->startTimer(ILandroid/os/IBinder;)Z

    move-result v12

    .line 1733
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    if-eqz v12, :cond_128b

    const/4 v2, 0x1

    :goto_1283
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1734
    :cond_128b
    const/4 v2, 0x0

    goto :goto_1283

    .line 1739
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v12    # "_result":Z
    :sswitch_128d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1743
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1744
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->stopTimer(ILandroid/os/IBinder;)Z

    move-result v12

    .line 1745
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    if-eqz v12, :cond_12b0

    const/4 v2, 0x1

    :goto_12a8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1746
    :cond_12b0
    const/4 v2, 0x0

    goto :goto_12a8

    .line 1751
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v12    # "_result":Z
    :sswitch_12b2
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1755
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1757
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1758
    .restart local v10    # "_arg2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->stopTimerWithTimeOut(ILandroid/os/IBinder;J)Z

    move-result v12

    .line 1759
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    if-eqz v12, :cond_12d9

    const/4 v2, 0x1

    :goto_12d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1760
    :cond_12d9
    const/4 v2, 0x0

    goto :goto_12d1

    .line 1765
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v10    # "_arg2":J
    .end local v12    # "_result":Z
    :sswitch_12db
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1769
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 1771
    .local v4, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;

    move-result-object v5

    .line 1772
    .local v5, "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->registerEventReceiver(I[ILcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z

    move-result v12

    .line 1773
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    if-eqz v12, :cond_1306

    const/4 v2, 0x1

    :goto_12fe
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1774
    :cond_1306
    const/4 v2, 0x0

    goto :goto_12fe

    .line 1779
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    .end local v12    # "_result":Z
    :sswitch_1308
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;

    move-result-object v3

    .line 1782
    .local v3, "_arg0":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->unRegisterEventReceiver(Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z

    move-result v12

    .line 1783
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    if-eqz v12, :cond_132b

    const/4 v2, 0x1

    :goto_1323
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1784
    :cond_132b
    const/4 v2, 0x0

    goto :goto_1323

    .line 1789
    .end local v3    # "_arg0":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    .end local v12    # "_result":Z
    :sswitch_132d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1793
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1794
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v14

    .line 1795
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1797
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1801
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_134d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1805
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1806
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v15

    .line 1807
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1809
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1813
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_136d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1816
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->adminPasswordReset(I)Z

    move-result v12

    .line 1817
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    if-eqz v12, :cond_138c

    const/4 v2, 0x1

    :goto_1384
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1818
    :cond_138c
    const/4 v2, 0x0

    goto :goto_1384

    .line 1823
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_138e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1827
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1828
    .local v8, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordEnabledContainerLockTimeout(IJ)V

    .line 1829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1834
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":J
    :sswitch_13a8
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1837
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordEnabledContainerLockTimeout(I)J

    move-result-wide v12

    .line 1838
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 1840
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1844
    .end local v3    # "_arg0":I
    .end local v12    # "_result":J
    :sswitch_13c4
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1847
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setDownloadWakeState(I)V

    .line 1848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 38
    :sswitch_data_13da
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_39
        0x3 -> :sswitch_65
        0x4 -> :sswitch_9c
        0x5 -> :sswitch_ba
        0x6 -> :sswitch_d2
        0x7 -> :sswitch_fb
        0x8 -> :sswitch_11c
        0x9 -> :sswitch_138
        0xa -> :sswitch_158
        0xb -> :sswitch_178
        0xc -> :sswitch_196
        0xd -> :sswitch_1b2
        0xe -> :sswitch_1d3
        0xf -> :sswitch_1f4
        0x10 -> :sswitch_216
        0x11 -> :sswitch_238
        0x12 -> :sswitch_258
        0x13 -> :sswitch_279
        0x14 -> :sswitch_29f
        0x15 -> :sswitch_2cb
        0x16 -> :sswitch_2ef
        0x17 -> :sswitch_314
        0x18 -> :sswitch_330
        0x19 -> :sswitch_34c
        0x1a -> :sswitch_36c
        0x1b -> :sswitch_391
        0x1c -> :sswitch_3c6
        0x1d -> :sswitch_3f3
        0x1e -> :sswitch_414
        0x1f -> :sswitch_430
        0x20 -> :sswitch_45e
        0x21 -> :sswitch_48a
        0x22 -> :sswitch_4b8
        0x23 -> :sswitch_4e4
        0x24 -> :sswitch_510
        0x25 -> :sswitch_53e
        0x26 -> :sswitch_56c
        0x27 -> :sswitch_59a
        0x28 -> :sswitch_5c6
        0x29 -> :sswitch_5f4
        0x2a -> :sswitch_620
        0x2b -> :sswitch_640
        0x2c -> :sswitch_66e
        0x2d -> :sswitch_69a
        0x2e -> :sswitch_6c8
        0x2f -> :sswitch_6f4
        0x30 -> :sswitch_722
        0x31 -> :sswitch_74e
        0x32 -> :sswitch_77c
        0x33 -> :sswitch_7a8
        0x34 -> :sswitch_7d6
        0x35 -> :sswitch_802
        0x36 -> :sswitch_830
        0x37 -> :sswitch_85c
        0x38 -> :sswitch_88a
        0x39 -> :sswitch_8b6
        0x3a -> :sswitch_8e4
        0x3b -> :sswitch_910
        0x3c -> :sswitch_931
        0x3d -> :sswitch_95a
        0x3e -> :sswitch_986
        0x3f -> :sswitch_9b4
        0x40 -> :sswitch_9d3
        0x41 -> :sswitch_9f4
        0x42 -> :sswitch_a25
        0x43 -> :sswitch_a58
        0x44 -> :sswitch_a89
        0x45 -> :sswitch_abc
        0x46 -> :sswitch_aed
        0x47 -> :sswitch_b20
        0x48 -> :sswitch_b4c
        0x49 -> :sswitch_b7a
        0x4a -> :sswitch_bab
        0x4b -> :sswitch_bde
        0x4c -> :sswitch_c0f
        0x4d -> :sswitch_c42
        0x4e -> :sswitch_c73
        0x4f -> :sswitch_ca6
        0x50 -> :sswitch_cd7
        0x51 -> :sswitch_d0a
        0x52 -> :sswitch_d3b
        0x53 -> :sswitch_d6e
        0x54 -> :sswitch_d9f
        0x55 -> :sswitch_dd2
        0x56 -> :sswitch_dfc
        0x57 -> :sswitch_e1d
        0x58 -> :sswitch_e50
        0x59 -> :sswitch_e81
        0x5a -> :sswitch_ea2
        0x5b -> :sswitch_ec3
        0x5c -> :sswitch_edf
        0x5d -> :sswitch_f00
        0x5e -> :sswitch_f21
        0x5f -> :sswitch_f42
        0x60 -> :sswitch_f58
        0x61 -> :sswitch_f84
        0x62 -> :sswitch_fb2
        0x63 -> :sswitch_fde
        0x64 -> :sswitch_100c
        0x65 -> :sswitch_103a
        0x66 -> :sswitch_1054
        0x67 -> :sswitch_1070
        0x68 -> :sswitch_1086
        0x69 -> :sswitch_10a2
        0x6a -> :sswitch_10c2
        0x6b -> :sswitch_10e6
        0x6c -> :sswitch_1107
        0x6d -> :sswitch_111d
        0x6e -> :sswitch_1139
        0x6f -> :sswitch_1159
        0x70 -> :sswitch_117a
        0x71 -> :sswitch_11a3
        0x72 -> :sswitch_11c8
        0x73 -> :sswitch_11ed
        0x74 -> :sswitch_120e
        0x75 -> :sswitch_1238
        0x76 -> :sswitch_1268
        0x77 -> :sswitch_128d
        0x78 -> :sswitch_12b2
        0x79 -> :sswitch_12db
        0x7a -> :sswitch_1308
        0x7b -> :sswitch_132d
        0x7c -> :sswitch_134d
        0x7d -> :sswitch_136d
        0x7e -> :sswitch_138e
        0x7f -> :sswitch_13a8
        0x80 -> :sswitch_13c4
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
