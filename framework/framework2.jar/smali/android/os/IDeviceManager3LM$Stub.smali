.class public abstract Landroid/os/IDeviceManager3LM$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager3LM.java"

# interfaces
.implements Landroid/os/IDeviceManager3LM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceManager3LM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceManager3LM$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceManager3LM"

.field static final TRANSACTION_addApn:I = 0x3a

.field static final TRANSACTION_addOrUpdateApn:I = 0x4f

.field static final TRANSACTION_addOrUpdateApnResult:I = 0x52

.field static final TRANSACTION_blockAdb:I = 0x25

.field static final TRANSACTION_blockScreenshot:I = 0x38

.field static final TRANSACTION_blockTethering:I = 0x37

.field static final TRANSACTION_blockUsb:I = 0x2b

.field static final TRANSACTION_checkAppUninstallPolicies:I = 0x12

.field static final TRANSACTION_checkPackagePermission:I = 0x8

.field static final TRANSACTION_checkSignature:I = 0x29

.field static final TRANSACTION_clear:I = 0x1

.field static final TRANSACTION_clearApn:I = 0x3b

.field static final TRANSACTION_clearApplicationUserData:I = 0x24

.field static final TRANSACTION_clearPackagePermissions:I = 0x32

.field static final TRANSACTION_completePackageScan:I = 0x36

.field static final TRANSACTION_deleteApn:I = 0x4c

.field static final TRANSACTION_deleteApnResult:I = 0x53

.field static final TRANSACTION_deletePackage:I = 0x14

.field static final TRANSACTION_disablePackage:I = 0xa

.field static final TRANSACTION_enablePackage:I = 0xb

.field static final TRANSACTION_getActivationState:I = 0x45

.field static final TRANSACTION_getApn:I = 0x50

.field static final TRANSACTION_getApnByMccMnc:I = 0x51

.field static final TRANSACTION_getBluetoothEnabled:I = 0x6

.field static final TRANSACTION_getExternalSDEncryptionState:I = 0x33

.field static final TRANSACTION_getMultiUserEnabled:I = 0x3e

.field static final TRANSACTION_getNfcState:I = 0x21

.field static final TRANSACTION_getNotificationText:I = 0x3f

.field static final TRANSACTION_getOwnerInfo:I = 0x48

.field static final TRANSACTION_getOwnerInfoEnabled:I = 0x47

.field static final TRANSACTION_getPackageScanner:I = 0x35

.field static final TRANSACTION_getPreferredApn:I = 0x4e

.field static final TRANSACTION_getSecureOSVendorName:I = 0x40

.field static final TRANSACTION_getVersion:I = 0x2

.field static final TRANSACTION_installPackage:I = 0x13

.field static final TRANSACTION_isAdminLocked:I = 0x2e

.field static final TRANSACTION_isApnSelectable:I = 0x4a

.field static final TRANSACTION_isPackageDisabled:I = 0xd

.field static final TRANSACTION_isPackageWhitelisted:I = 0x42

.field static final TRANSACTION_isReadExternalStorageBlocked:I = 0x43

.field static final TRANSACTION_isSdEncrypted:I = 0x1f

.field static final TRANSACTION_isSsidAllowed:I = 0x27

.field static final TRANSACTION_isSsidLocked:I = 0x28

.field static final TRANSACTION_isUsbBlocked:I = 0x2c

.field static final TRANSACTION_keyStoreChangePassword:I = 0x1c

.field static final TRANSACTION_keyStoreContains:I = 0x1a

.field static final TRANSACTION_keyStoreDeleteKey:I = 0x17

.field static final TRANSACTION_keyStoreGetKey:I = 0x16

.field static final TRANSACTION_keyStorePutKey:I = 0x15

.field static final TRANSACTION_keyStoreReset:I = 0x1b

.field static final TRANSACTION_keyStoreSetPassword:I = 0x18

.field static final TRANSACTION_keyStoreUnlock:I = 0x19

.field static final TRANSACTION_lockAdmin:I = 0x2d

.field static final TRANSACTION_lockApn:I = 0x39

.field static final TRANSACTION_notification:I = 0x2a

.field static final TRANSACTION_putSettingsSecureInt:I = 0x1e

.field static final TRANSACTION_putSettingsSecureString:I = 0x1d

.field static final TRANSACTION_restoreDefaultApns:I = 0x3c

.field static final TRANSACTION_setActivationState:I = 0x44

.field static final TRANSACTION_setAllowedPackages:I = 0xc

.field static final TRANSACTION_setApnList:I = 0x4b

.field static final TRANSACTION_setAppInstallPermissionPolicies:I = 0xf

.field static final TRANSACTION_setAppInstallPkgNamePolicies:I = 0xe

.field static final TRANSACTION_setAppInstallPubkeyPolicies:I = 0x10

.field static final TRANSACTION_setAppUninstallPkgNamePolicies:I = 0x11

.field static final TRANSACTION_setBluetoothEnabled:I = 0x5

.field static final TRANSACTION_setBootLock:I = 0x3

.field static final TRANSACTION_setExternalStorageEnabled:I = 0x49

.field static final TRANSACTION_setLocationMode:I = 0x55

.field static final TRANSACTION_setLocationProviderEnabled:I = 0x30

.field static final TRANSACTION_setMultiUserEnabled:I = 0x3d

.field static final TRANSACTION_setNfcState:I = 0x22

.field static final TRANSACTION_setNotificationText:I = 0x7

.field static final TRANSACTION_setOtaDelay:I = 0x2f

.field static final TRANSACTION_setPackagePermission:I = 0x9

.field static final TRANSACTION_setPackageScanner:I = 0x34

.field static final TRANSACTION_setPackageWhitelist:I = 0x41

.field static final TRANSACTION_setPreferredApn:I = 0x4d

.field static final TRANSACTION_setPreferredApnResult:I = 0x54

.field static final TRANSACTION_setProvisionedSsids:I = 0x46

.field static final TRANSACTION_setSdEncryptionRequired:I = 0x20

.field static final TRANSACTION_setSsidFilter:I = 0x26

.field static final TRANSACTION_setWifiState:I = 0x23

.field static final TRANSACTION_setisSimulatorPermitted:I = 0x31

.field static final TRANSACTION_unlock:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;
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
    const-string v1, "android.os.IDeviceManager3LM"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IDeviceManager3LM;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/IDeviceManager3LM;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/IDeviceManager3LM$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IDeviceManager3LM$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_75a

    .line 859
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 43
    :sswitch_a
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clear()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 55
    :sswitch_1c
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getVersion()I

    move-result v4

    .line 57
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 63
    .end local v4    # "_result":I
    :sswitch_2c
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3f

    move v0, v6

    .line 66
    .local v0, "_arg0":Z
    :goto_38
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBootLock(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_3f
    move v0, v7

    .line 65
    goto :goto_38

    .line 72
    :sswitch_41
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->unlock()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 79
    :sswitch_4d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_60

    move v0, v6

    .line 82
    .restart local v0    # "_arg0":Z
    :goto_59
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBluetoothEnabled(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_60
    move v0, v7

    .line 81
    goto :goto_59

    .line 88
    :sswitch_62
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getBluetoothEnabled()Z

    move-result v4

    .line 90
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v4, :cond_71

    move v7, v6

    :cond_71
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 96
    .end local v4    # "_result":Z
    :sswitch_75
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setNotificationText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 105
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_85
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 111
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v4, :cond_9c

    move v7, v6

    :cond_9c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_a1
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c4

    move v3, v6

    .line 124
    .local v3, "_arg2":Z
    :goto_b5
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 125
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v4, :cond_bf

    move v7, v6

    :cond_bf
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    :cond_c4
    move v3, v7

    .line 123
    goto :goto_b5

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_c6
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->disablePackage(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d7
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->enablePackage(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 149
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e8
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 152
    .local v5, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 153
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAllowedPackages(Ljava/util/Map;)Z

    move-result v4

    .line 154
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_103

    move v7, v6

    :cond_103
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 160
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_108
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v4

    .line 164
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_11b

    move v7, v6

    :cond_11b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 170
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_120
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 173
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 174
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v4

    .line 175
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v4, :cond_13b

    move v7, v6

    :cond_13b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 181
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_140
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 184
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 185
    .restart local v0    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z

    move-result v4

    .line 186
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v4, :cond_15b

    move v7, v6

    :cond_15b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 192
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_160
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 195
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 196
    .restart local v0    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z

    move-result v4

    .line 197
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v4, :cond_17b

    move v7, v6

    :cond_17b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 203
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_180
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 206
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 207
    .restart local v0    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v4

    .line 208
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v4, :cond_19b

    move v7, v6

    :cond_19b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 214
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_1a0
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v4

    .line 218
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_1b3

    move v7, v6

    :cond_1b3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 224
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1b8
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->installPackage(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1c9
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1e1

    move v2, v6

    .line 238
    .local v2, "_arg1":Z
    :goto_1d9
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->deletePackage(Ljava/lang/String;Z)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    :cond_1e1
    move v2, v7

    .line 237
    goto :goto_1d9

    .line 244
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1e3
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 250
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v4, :cond_1fa

    move v7, v6

    :cond_1fa
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1ff
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 266
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_214
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreDeleteKey(Ljava/lang/String;)Z

    move-result v4

    .line 270
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v4, :cond_227

    move v7, v6

    :cond_227
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 276
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_22c
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreSetPassword(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 285
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_23d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreUnlock(Ljava/lang/String;)Z

    move-result v4

    .line 289
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v4, :cond_250

    move v7, v6

    :cond_250
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 295
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_255
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreContains(Ljava/lang/String;)Z

    move-result v4

    .line 299
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v4, :cond_268

    move v7, v6

    :cond_268
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 305
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_26d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreReset()Z

    move-result v4

    .line 307
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v4, :cond_27c

    move v7, v6

    :cond_27c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 313
    .end local v4    # "_result":Z
    :sswitch_281
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 319
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v4, :cond_298

    move v7, v6

    :cond_298
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 325
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_29d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 331
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v4, :cond_2b4

    move v7, v6

    :cond_2b4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 337
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_2b9
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureInt(Ljava/lang/String;I)Z

    move-result v4

    .line 343
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v4, :cond_2d0

    move v7, v6

    :cond_2d0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 349
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_2d5
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncrypted()Z

    move-result v4

    .line 351
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v4, :cond_2e4

    move v7, v6

    :cond_2e4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 357
    .end local v4    # "_result":Z
    :sswitch_2e9
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2fd

    move v0, v6

    .line 360
    .local v0, "_arg0":Z
    :goto_2f5
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setSdEncryptionRequired(Z)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_2fd
    move v0, v7

    .line 359
    goto :goto_2f5

    .line 366
    :sswitch_2ff
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getNfcState()I

    move-result v4

    .line 368
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 374
    .end local v4    # "_result":I
    :sswitch_310
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 377
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setNfcState(I)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 383
    .end local v0    # "_arg0":I
    :sswitch_321
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setWifiState(I)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 392
    .end local v0    # "_arg0":I
    :sswitch_332
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->clearApplicationUserData(Ljava/lang/String;)Z

    move-result v4

    .line 396
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v4, :cond_345

    move v7, v6

    :cond_345
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 402
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_34a
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_35e

    move v0, v6

    .line 405
    .local v0, "_arg0":Z
    :goto_356
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockAdb(Z)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_35e
    move v0, v7

    .line 404
    goto :goto_356

    .line 411
    :sswitch_360
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 414
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setSsidFilter(Ljava/util/List;)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 420
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_371
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v4

    .line 424
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v4, :cond_384

    move v7, v6

    :cond_384
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 430
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_389
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isSsidLocked(Ljava/lang/String;)Z

    move-result v4

    .line 434
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v4, :cond_39c

    move v7, v6

    :cond_39c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 440
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3a1
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 443
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkSignature(I)Z

    move-result v4

    .line 444
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v4, :cond_3b4

    move v7, v6

    :cond_3b4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 450
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3b9
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 454
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 456
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 457
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->notification(III)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 463
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_3d2
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3e6

    move v0, v6

    .line 466
    .local v0, "_arg0":Z
    :goto_3de
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockUsb(Z)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_3e6
    move v0, v7

    .line 465
    goto :goto_3de

    .line 472
    :sswitch_3e8
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isUsbBlocked()Z

    move-result v4

    .line 474
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v4, :cond_3f7

    move v7, v6

    :cond_3f7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 480
    .end local v4    # "_result":Z
    :sswitch_3fc
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_410

    move v0, v6

    .line 483
    .restart local v0    # "_arg0":Z
    :goto_408
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->lockAdmin(Z)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_410
    move v0, v7

    .line 482
    goto :goto_408

    .line 489
    :sswitch_412
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isAdminLocked()Z

    move-result v4

    .line 491
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v4, :cond_421

    move v7, v6

    :cond_421
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 497
    .end local v4    # "_result":Z
    :sswitch_426
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setOtaDelay(I)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 506
    .end local v0    # "_arg0":I
    :sswitch_437
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_44f

    move v2, v6

    .line 511
    .local v2, "_arg1":Z
    :goto_447
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->setLocationProviderEnabled(Ljava/lang/String;Z)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    :cond_44f
    move v2, v7

    .line 510
    goto :goto_447

    .line 517
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_451
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_465

    move v0, v6

    .line 520
    .local v0, "_arg0":Z
    :goto_45d
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setisSimulatorPermitted(Z)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_465
    move v0, v7

    .line 519
    goto :goto_45d

    .line 526
    :sswitch_467
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearPackagePermissions()V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 533
    :sswitch_474
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getExternalSDEncryptionState()I

    move-result v4

    .line 535
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 541
    .end local v4    # "_result":I
    :sswitch_485
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4a1

    move v2, v6

    .line 547
    .restart local v2    # "_arg1":Z
    :goto_495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 548
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackageScanner(Ljava/lang/String;ZI)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :cond_4a1
    move v2, v7

    .line 545
    goto :goto_495

    .line 554
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4a3
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getPackageScanner()[Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 562
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_4b4
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 567
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->completePackageScan(II)V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 573
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4c9
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4dd

    move v0, v6

    .line 576
    .local v0, "_arg0":Z
    :goto_4d5
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockTethering(Z)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_4dd
    move v0, v7

    .line 575
    goto :goto_4d5

    .line 582
    :sswitch_4df
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4f3

    move v0, v6

    .line 585
    .restart local v0    # "_arg0":Z
    :goto_4eb
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockScreenshot(Z)V

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_4f3
    move v0, v7

    .line 584
    goto :goto_4eb

    .line 591
    :sswitch_4f5
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_509

    move v0, v6

    .line 594
    .restart local v0    # "_arg0":Z
    :goto_501
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->lockApn(Z)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_509
    move v0, v7

    .line 593
    goto :goto_501

    .line 600
    :sswitch_50b
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 603
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 604
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->addApn(Ljava/util/Map;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 610
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_524
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearApn()V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 617
    :sswitch_531
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->restoreDefaultApns()V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 624
    :sswitch_53e
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_552

    move v0, v6

    .line 627
    .local v0, "_arg0":Z
    :goto_54a
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setMultiUserEnabled(Z)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_552
    move v0, v7

    .line 626
    goto :goto_54a

    .line 633
    :sswitch_554
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getMultiUserEnabled()Z

    move-result v4

    .line 635
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v4, :cond_563

    move v7, v6

    :cond_563
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 641
    .end local v4    # "_result":Z
    :sswitch_568
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getNotificationText()Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 649
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_579
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getSecureOSVendorName()Ljava/lang/String;

    move-result-object v4

    .line 651
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 657
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_58a
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 660
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setPackageWhitelist(Ljava/util/List;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 666
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_59b
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v4

    .line 670
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v4, :cond_5ae

    move v7, v6

    :cond_5ae
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 676
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_5b3
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isReadExternalStorageBlocked()Z

    move-result v4

    .line 678
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v4, :cond_5c2

    move v7, v6

    :cond_5c2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 684
    .end local v4    # "_result":Z
    :sswitch_5c7
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5db

    move v0, v6

    .line 687
    .local v0, "_arg0":Z
    :goto_5d3
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setActivationState(Z)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_5db
    move v0, v7

    .line 686
    goto :goto_5d3

    .line 693
    :sswitch_5dd
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getActivationState()Z

    move-result v4

    .line 695
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    if-eqz v4, :cond_5ec

    move v7, v6

    :cond_5ec
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 701
    .end local v4    # "_result":Z
    :sswitch_5f1
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 704
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setProvisionedSsids(Ljava/util/List;)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 710
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_602
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getOwnerInfoEnabled()I

    move-result v4

    .line 712
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 718
    .end local v4    # "_result":I
    :sswitch_613
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getOwnerInfo()Ljava/lang/String;

    move-result-object v4

    .line 720
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 726
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_624
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_638

    move v0, v6

    .line 729
    .restart local v0    # "_arg0":Z
    :goto_630
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setExternalStorageEnabled(Z)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_638
    move v0, v7

    .line 728
    goto :goto_630

    .line 735
    :sswitch_63a
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isApnSelectable(Ljava/lang/String;)Z

    move-result v4

    .line 739
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    if-eqz v4, :cond_64d

    move v7, v6

    :cond_64d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 745
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_652
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 748
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setApnList(Ljava/util/List;)V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 754
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_663
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 757
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->deleteApn(I)Z

    move-result v4

    .line 758
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    if-eqz v4, :cond_676

    move v7, v6

    :cond_676
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 764
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_67b
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 767
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredApn(I)Z

    move-result v4

    .line 768
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    if-eqz v4, :cond_68e

    move v7, v6

    :cond_68e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 774
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_693
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getPreferredApn()I

    move-result v4

    .line 776
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 782
    .end local v4    # "_result":I
    :sswitch_6a4
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 785
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 787
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 788
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->addOrUpdateApn(Ljava/util/Map;I)Z

    move-result v4

    .line 789
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    if-eqz v4, :cond_6c3

    move v7, v6

    :cond_6c3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 795
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6c8
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 798
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->getApn(I)Ljava/util/Map;

    move-result-object v4

    .line 799
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 805
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_6dd
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 809
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 810
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->getApnByMccMnc(II)Ljava/util/List;

    move-result-object v4

    .line 811
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 817
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_6f6
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 820
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 822
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->addOrUpdateApnResult(Ljava/util/Map;I)I

    move-result v4

    .line 824
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 830
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":I
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_717
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 833
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->deleteApnResult(I)I

    move-result v4

    .line 834
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 840
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_72c
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 843
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredApnResult(I)I

    move-result v4

    .line 844
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 850
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_741
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 853
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setLocationMode(I)Z

    move-result v4

    .line 854
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    if-eqz v4, :cond_754

    move v7, v6

    :cond_754
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_75a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_41
        0x5 -> :sswitch_4d
        0x6 -> :sswitch_62
        0x7 -> :sswitch_75
        0x8 -> :sswitch_85
        0x9 -> :sswitch_a1
        0xa -> :sswitch_c6
        0xb -> :sswitch_d7
        0xc -> :sswitch_e8
        0xd -> :sswitch_108
        0xe -> :sswitch_120
        0xf -> :sswitch_140
        0x10 -> :sswitch_160
        0x11 -> :sswitch_180
        0x12 -> :sswitch_1a0
        0x13 -> :sswitch_1b8
        0x14 -> :sswitch_1c9
        0x15 -> :sswitch_1e3
        0x16 -> :sswitch_1ff
        0x17 -> :sswitch_214
        0x18 -> :sswitch_22c
        0x19 -> :sswitch_23d
        0x1a -> :sswitch_255
        0x1b -> :sswitch_26d
        0x1c -> :sswitch_281
        0x1d -> :sswitch_29d
        0x1e -> :sswitch_2b9
        0x1f -> :sswitch_2d5
        0x20 -> :sswitch_2e9
        0x21 -> :sswitch_2ff
        0x22 -> :sswitch_310
        0x23 -> :sswitch_321
        0x24 -> :sswitch_332
        0x25 -> :sswitch_34a
        0x26 -> :sswitch_360
        0x27 -> :sswitch_371
        0x28 -> :sswitch_389
        0x29 -> :sswitch_3a1
        0x2a -> :sswitch_3b9
        0x2b -> :sswitch_3d2
        0x2c -> :sswitch_3e8
        0x2d -> :sswitch_3fc
        0x2e -> :sswitch_412
        0x2f -> :sswitch_426
        0x30 -> :sswitch_437
        0x31 -> :sswitch_451
        0x32 -> :sswitch_467
        0x33 -> :sswitch_474
        0x34 -> :sswitch_485
        0x35 -> :sswitch_4a3
        0x36 -> :sswitch_4b4
        0x37 -> :sswitch_4c9
        0x38 -> :sswitch_4df
        0x39 -> :sswitch_4f5
        0x3a -> :sswitch_50b
        0x3b -> :sswitch_524
        0x3c -> :sswitch_531
        0x3d -> :sswitch_53e
        0x3e -> :sswitch_554
        0x3f -> :sswitch_568
        0x40 -> :sswitch_579
        0x41 -> :sswitch_58a
        0x42 -> :sswitch_59b
        0x43 -> :sswitch_5b3
        0x44 -> :sswitch_5c7
        0x45 -> :sswitch_5dd
        0x46 -> :sswitch_5f1
        0x47 -> :sswitch_602
        0x48 -> :sswitch_613
        0x49 -> :sswitch_624
        0x4a -> :sswitch_63a
        0x4b -> :sswitch_652
        0x4c -> :sswitch_663
        0x4d -> :sswitch_67b
        0x4e -> :sswitch_693
        0x4f -> :sswitch_6a4
        0x50 -> :sswitch_6c8
        0x51 -> :sswitch_6dd
        0x52 -> :sswitch_6f6
        0x53 -> :sswitch_717
        0x54 -> :sswitch_72c
        0x55 -> :sswitch_741
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
