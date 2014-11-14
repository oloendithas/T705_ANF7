.class public abstract Landroid/os/IPersonaManager$Stub;
.super Landroid/os/Binder;
.source "IPersonaManager.java"

# interfaces
.implements Landroid/os/IPersonaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPersonaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPersonaManager"

.field static final TRANSACTION_addAppForPersona:I = 0x36

.field static final TRANSACTION_addLockOnImage:I = 0x1f

.field static final TRANSACTION_addPackageToInstallWhiteList:I = 0x3c

.field static final TRANSACTION_adminLockPersona:I = 0x32

.field static final TRANSACTION_adminUnLockPersona:I = 0x33

.field static final TRANSACTION_clearAppListForPersona:I = 0x39

.field static final TRANSACTION_createPersona:I = 0x2

.field static final TRANSACTION_disablePersonaKeyGuard:I = 0x46

.field static final TRANSACTION_enablePersonaKeyGuard:I = 0x47

.field static final TRANSACTION_exists:I = 0x8

.field static final TRANSACTION_getAdminUidForPersona:I = 0x25

.field static final TRANSACTION_getAppListForPersona:I = 0x38

.field static final TRANSACTION_getCurrentPersonaForUser:I = 0x12

.field static final TRANSACTION_getDisabledHomeLaunchers:I = 0x45

.field static final TRANSACTION_getKeyguardShowState:I = 0x50

.field static final TRANSACTION_getLastShortcutState:I = 0x51

.field static final TRANSACTION_getNormalizedState:I = 0x18

.field static final TRANSACTION_getPackagesFromInstallWhiteList:I = 0x3f

.field static final TRANSACTION_getParentId:I = 0xe

.field static final TRANSACTION_getParentUserForCurrentPersona:I = 0xb

.field static final TRANSACTION_getPasswordHint:I = 0x49

.field static final TRANSACTION_getPersonaBackgroundTime:I = 0x21

.field static final TRANSACTION_getPersonaIcon:I = 0xd

.field static final TRANSACTION_getPersonaIdentification:I = 0x24

.field static final TRANSACTION_getPersonaIds:I = 0x34

.field static final TRANSACTION_getPersonaInfo:I = 0x7

.field static final TRANSACTION_getPersonaSamsungAccount:I = 0x28

.field static final TRANSACTION_getPersonaState:I = 0x17

.field static final TRANSACTION_getPersonaType:I = 0x14

.field static final TRANSACTION_getPersonas:I = 0x6

.field static final TRANSACTION_getPersonasForCreator:I = 0xa

.field static final TRANSACTION_getPersonasForUser:I = 0x9

.field static final TRANSACTION_getPhoneCaller:I = 0x10

.field static final TRANSACTION_getScreenOffTime:I = 0x41

.field static final TRANSACTION_getShortcutMode:I = 0x30

.field static final TRANSACTION_getUserManagedPersonas:I = 0x2a

.field static final TRANSACTION_handleHomeShow:I = 0x2e

.field static final TRANSACTION_installApplications:I = 0x19

.field static final TRANSACTION_isKioskContainerExistOnDevice:I = 0x4b

.field static final TRANSACTION_isKioskModeEnabled:I = 0x4a

.field static final TRANSACTION_isPackageInInstallWhiteList:I = 0x3e

.field static final TRANSACTION_isSessionExpired:I = 0x31

.field static final TRANSACTION_lockPersona:I = 0x2d

.field static final TRANSACTION_markForRemoval:I = 0x26

.field static final TRANSACTION_notifyKeyguardShow:I = 0x4f

.field static final TRANSACTION_onSentinelActivityResumed:I = 0x4d

.field static final TRANSACTION_onWakeLockChange:I = 0x44

.field static final TRANSACTION_refreshTimer:I = 0x42

.field static final TRANSACTION_registerHandler:I = 0x1b

.field static final TRANSACTION_registerObserver:I = 0x1c

.field static final TRANSACTION_registerOutsideObserver:I = 0x1d

.field static final TRANSACTION_registerSystemPersonaObserver:I = 0x22

.field static final TRANSACTION_registerUser:I = 0x1

.field static final TRANSACTION_removeAppForPersona:I = 0x37

.field static final TRANSACTION_removePackageFromInstallWhiteList:I = 0x3d

.field static final TRANSACTION_removePersona:I = 0x5

.field static final TRANSACTION_resetPassword:I = 0x3b

.field static final TRANSACTION_resetPersona:I = 0x23

.field static final TRANSACTION_resetPersonaOnReboot:I = 0x4e

.field static final TRANSACTION_rollBackToPersona:I = 0x2c

.field static final TRANSACTION_rollUpToParent:I = 0x2b

.field static final TRANSACTION_savePasswordInTima:I = 0x3a

.field static final TRANSACTION_setBackPressed:I = 0x4c

.field static final TRANSACTION_setCurrentPersonaForUser:I = 0x13

.field static final TRANSACTION_setFsMountState:I = 0x48

.field static final TRANSACTION_setMaximumScreenOffTimeoutFromDeviceAdmin:I = 0x40

.field static final TRANSACTION_setPersonaIcon:I = 0xc

.field static final TRANSACTION_setPersonaName:I = 0x11

.field static final TRANSACTION_setPersonaSamsungAccount:I = 0x29

.field static final TRANSACTION_setPersonaState:I = 0x16

.field static final TRANSACTION_setPersonaType:I = 0x15

.field static final TRANSACTION_setPhoneCaller:I = 0xf

.field static final TRANSACTION_setShortcutMode:I = 0x2f

.field static final TRANSACTION_setSuperLock:I = 0x20

.field static final TRANSACTION_settingSyncAllowed:I = 0x35

.field static final TRANSACTION_switchPersona:I = 0x3

.field static final TRANSACTION_switchPersonaAndLaunch:I = 0x4

.field static final TRANSACTION_unInstallSystemApplications:I = 0x1a

.field static final TRANSACTION_unmarkForRemoval:I = 0x27

.field static final TRANSACTION_unregisterObserver:I = 0x1e

.field static final TRANSACTION_userActivity:I = 0x43


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IPersonaManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.os.IPersonaManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/os/IPersonaManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/os/IPersonaManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPersonaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
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
    .line 41
    sparse-switch p1, :sswitch_data_a4e

    .line 951
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 45
    :sswitch_8
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    goto :goto_7

    .line 50
    :sswitch_11
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaCallback;

    move-result-object v4

    .line 53
    .local v4, "_arg0":Landroid/content/pm/IPersonaCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->registerUser(Landroid/content/pm/IPersonaCallback;)Z

    move-result v21

    .line 54
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v21, :cond_33

    const/4 v3, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v3, 0x1

    goto :goto_7

    .line 55
    :cond_33
    const/4 v3, 0x0

    goto :goto_2c

    .line 60
    .end local v4    # "_arg0":Landroid/content/pm/IPersonaCallback;
    .end local v21    # "_result":Z
    :sswitch_35
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 68
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_82

    .line 73
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 79
    .local v10, "_arg5":Landroid/net/Uri;
    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_84

    .line 80
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .local v11, "_arg6":Landroid/net/Uri;
    :goto_70
    move-object/from16 v3, p0

    .line 85
    invoke-virtual/range {v3 .. v11}, Landroid/os/IPersonaManager$Stub;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v21

    .line 86
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v3, 0x1

    goto :goto_7

    .line 76
    .end local v10    # "_arg5":Landroid/net/Uri;
    .end local v11    # "_arg6":Landroid/net/Uri;
    .end local v21    # "_result":I
    :cond_82
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/net/Uri;
    goto :goto_60

    .line 83
    :cond_84
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Landroid/net/Uri;
    goto :goto_70

    .line 92
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Landroid/net/Uri;
    .end local v11    # "_arg6":Landroid/net/Uri;
    :sswitch_86
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 95
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->switchPersona(I)Z

    move-result v21

    .line 96
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v21, :cond_a5

    const/4 v3, 0x1

    :goto_9d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 97
    :cond_a5
    const/4 v3, 0x0

    goto :goto_9d

    .line 102
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_a7
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d6

    .line 107
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 112
    .local v5, "_arg1":Landroid/content/Intent;
    :goto_c2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    move-result v21

    .line 113
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v21, :cond_d8

    const/4 v3, 0x1

    :goto_ce
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 110
    .end local v5    # "_arg1":Landroid/content/Intent;
    .end local v21    # "_result":Z
    :cond_d6
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/content/Intent;
    goto :goto_c2

    .line 114
    .restart local v21    # "_result":Z
    :cond_d8
    const/4 v3, 0x0

    goto :goto_ce

    .line 119
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/content/Intent;
    .end local v21    # "_result":Z
    :sswitch_da
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 122
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->removePersona(I)I

    move-result v21

    .line 123
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 129
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_f8
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_119

    const/4 v4, 0x1

    .line 132
    .local v4, "_arg0":Z
    :goto_106
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonas(Z)Ljava/util/List;

    move-result-object v23

    .line 133
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 135
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 131
    .end local v4    # "_arg0":Z
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_119
    const/4 v4, 0x0

    goto :goto_106

    .line 139
    :sswitch_11b
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v21

    .line 143
    .local v21, "_result":Landroid/content/pm/PersonaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v21, :cond_142

    .line 145
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PersonaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    :goto_13f
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 149
    :cond_142
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13f

    .line 155
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Landroid/content/pm/PersonaInfo;
    :sswitch_149
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 158
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->exists(I)Z

    move-result v21

    .line 159
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v21, :cond_168

    const/4 v3, 0x1

    :goto_160
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 160
    :cond_168
    const/4 v3, 0x0

    goto :goto_160

    .line 165
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_16a
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18f

    const/4 v5, 0x1

    .line 170
    .local v5, "_arg1":Z
    :goto_17c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v23

    .line 171
    .restart local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 173
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 169
    .end local v5    # "_arg1":Z
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_18f
    const/4 v5, 0x0

    goto :goto_17c

    .line 177
    .end local v4    # "_arg0":I
    :sswitch_191
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 181
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b6

    const/4 v5, 0x1

    .line 182
    .restart local v5    # "_arg1":Z
    :goto_1a3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->getPersonasForCreator(IZ)Ljava/util/List;

    move-result-object v23

    .line 183
    .restart local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 185
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 181
    .end local v5    # "_arg1":Z
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1b6
    const/4 v5, 0x0

    goto :goto_1a3

    .line 189
    .end local v4    # "_arg0":I
    :sswitch_1b8
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getParentUserForCurrentPersona()I

    move-result v21

    .line 191
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 197
    .end local v21    # "_result":I
    :sswitch_1d0
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f6

    .line 202
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 207
    .local v5, "_arg1":Landroid/graphics/Bitmap;
    :goto_1eb
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 205
    .end local v5    # "_arg1":Landroid/graphics/Bitmap;
    :cond_1f6
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_1eb

    .line 213
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_1f8
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 216
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaIcon(I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 217
    .local v21, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v21, :cond_21f

    .line 219
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    :goto_21c
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 223
    :cond_21f
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21c

    .line 229
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Landroid/graphics/Bitmap;
    :sswitch_226
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 232
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getParentId(I)I

    move-result v21

    .line 233
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 239
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_244
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->setPhoneCaller(I)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 248
    .end local v4    # "_arg0":I
    :sswitch_25a
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPhoneCaller()I

    move-result v21

    .line 250
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 256
    .end local v21    # "_result":I
    :sswitch_272
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 260
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaName(ILjava/lang/String;)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 267
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_28c
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 270
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getCurrentPersonaForUser(I)I

    move-result v21

    .line 271
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 277
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_2aa
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 281
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 282
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setCurrentPersonaForUser(II)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 288
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_2c4
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaType(I)Ljava/lang/String;

    move-result-object v21

    .line 292
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 298
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_2e2
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaType(ILjava/lang/String;)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 309
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_2fc
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 313
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 314
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaState(II)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 320
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_316
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 323
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaState(I)I

    move-result v21

    .line 324
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 330
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_334
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 333
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getNormalizedState(I)I

    move-result v21

    .line 334
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 340
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_352
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 344
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 345
    .local v20, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/IPersonaManager$Stub;->installApplications(ILjava/util/List;)Z

    move-result v21

    .line 346
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v21, :cond_377

    const/4 v3, 0x1

    :goto_36f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 347
    :cond_377
    const/4 v3, 0x0

    goto :goto_36f

    .line 352
    .end local v4    # "_arg0":I
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_result":Z
    :sswitch_379
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 356
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 357
    .restart local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/IPersonaManager$Stub;->unInstallSystemApplications(ILjava/util/List;)I

    move-result v21

    .line 358
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 364
    .end local v4    # "_arg0":I
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_result":I
    :sswitch_39d
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 370
    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaObserver;

    move-result-object v6

    .line 371
    .local v6, "_arg2":Landroid/content/pm/IPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IPersonaManager$Stub;->registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 377
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Landroid/content/pm/IPersonaObserver;
    :sswitch_3bf
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaObserver;

    move-result-object v4

    .line 380
    .local v4, "_arg0":Landroid/content/pm/IPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->registerObserver(Landroid/content/pm/IPersonaObserver;)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 386
    .end local v4    # "_arg0":Landroid/content/pm/IPersonaObserver;
    :sswitch_3d9
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 390
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaObserver;

    move-result-object v5

    .line 391
    .local v5, "_arg1":Landroid/content/pm/IPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->registerOutsideObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 397
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/content/pm/IPersonaObserver;
    :sswitch_3f7
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaObserver;

    move-result-object v4

    .line 400
    .local v4, "_arg0":Landroid/content/pm/IPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->unregisterObserver(Landroid/content/pm/IPersonaObserver;)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 406
    .end local v4    # "_arg0":Landroid/content/pm/IPersonaObserver;
    :sswitch_411
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_444

    .line 409
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 414
    .local v4, "_arg0":Landroid/graphics/Bitmap;
    :goto_428
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 415
    .local v21, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v21, :cond_446

    .line 417
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 423
    :goto_441
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 412
    .end local v4    # "_arg0":Landroid/graphics/Bitmap;
    .end local v21    # "_result":Landroid/graphics/Bitmap;
    :cond_444
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_428

    .line 421
    .restart local v21    # "_result":Landroid/graphics/Bitmap;
    :cond_446
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_441

    .line 427
    .end local v4    # "_arg0":Landroid/graphics/Bitmap;
    .end local v21    # "_result":Landroid/graphics/Bitmap;
    :sswitch_44d
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 431
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_46a

    const/4 v5, 0x1

    .line 432
    .local v5, "_arg1":Z
    :goto_45f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setSuperLock(IZ)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 431
    .end local v5    # "_arg1":Z
    :cond_46a
    const/4 v5, 0x0

    goto :goto_45f

    .line 438
    .end local v4    # "_arg0":I
    :sswitch_46c
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 441
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaBackgroundTime(I)J

    move-result-wide v21

    .line 442
    .local v21, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    move-object/from16 v0, p3

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 444
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 448
    .end local v4    # "_arg0":I
    .end local v21    # "_result":J
    :sswitch_48a
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object v4

    .line 451
    .local v4, "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v21

    .line 452
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v21, :cond_4ad

    const/4 v3, 0x1

    :goto_4a5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 453
    :cond_4ad
    const/4 v3, 0x0

    goto :goto_4a5

    .line 458
    .end local v4    # "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    .end local v21    # "_result":Z
    :sswitch_4af
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 461
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->resetPersona(I)I

    move-result v21

    .line 462
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 468
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_4cd
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 471
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaIdentification(I)Ljava/lang/String;

    move-result-object v21

    .line 472
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 478
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_4eb
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 481
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getAdminUidForPersona(I)I

    move-result v21

    .line 482
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 488
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_509
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 492
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_52f

    .line 493
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 498
    .local v5, "_arg1":Landroid/content/ComponentName;
    :goto_524
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->markForRemoval(ILandroid/content/ComponentName;)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 496
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    :cond_52f
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/content/ComponentName;
    goto :goto_524

    .line 504
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    :sswitch_531
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 507
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->unmarkForRemoval(I)V

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 513
    .end local v4    # "_arg0":I
    :sswitch_547
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 516
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaSamsungAccount(I)Ljava/lang/String;

    move-result-object v21

    .line 517
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 523
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_565
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 527
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 528
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaSamsungAccount(ILjava/lang/String;)V

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 534
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_57f
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5a0

    const/4 v4, 0x1

    .line 537
    .local v4, "_arg0":Z
    :goto_58d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getUserManagedPersonas(Z)Ljava/util/List;

    move-result-object v23

    .line 538
    .restart local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 540
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 536
    .end local v4    # "_arg0":Z
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_5a0
    const/4 v4, 0x0

    goto :goto_58d

    .line 544
    :sswitch_5a2
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 547
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->rollUpToParent(I)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 553
    .end local v4    # "_arg0":I
    :sswitch_5b8
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 556
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->rollBackToPersona(I)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 562
    .end local v4    # "_arg0":I
    :sswitch_5ce
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 565
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->lockPersona(I)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 571
    .end local v4    # "_arg0":I
    :sswitch_5e4
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->handleHomeShow()Z

    move-result v21

    .line 573
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    if-eqz v21, :cond_5fd

    const/4 v3, 0x1

    :goto_5f5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 574
    :cond_5fd
    const/4 v3, 0x0

    goto :goto_5f5

    .line 579
    .end local v21    # "_result":Z
    :sswitch_5ff
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 583
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_61c

    const/4 v5, 0x1

    .line 584
    .local v5, "_arg1":Z
    :goto_611
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setShortcutMode(IZ)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 583
    .end local v5    # "_arg1":Z
    :cond_61c
    const/4 v5, 0x0

    goto :goto_611

    .line 590
    .end local v4    # "_arg0":I
    :sswitch_61e
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 593
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getShortcutMode(I)Z

    move-result v21

    .line 594
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    if-eqz v21, :cond_63d

    const/4 v3, 0x1

    :goto_635
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 595
    :cond_63d
    const/4 v3, 0x0

    goto :goto_635

    .line 600
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_63f
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 603
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->isSessionExpired(I)Z

    move-result v21

    .line 604
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    if-eqz v21, :cond_65e

    const/4 v3, 0x1

    :goto_656
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 605
    :cond_65e
    const/4 v3, 0x0

    goto :goto_656

    .line 610
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_660
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 614
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->adminLockPersona(ILjava/lang/String;)Z

    move-result v21

    .line 616
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v21, :cond_683

    const/4 v3, 0x1

    :goto_67b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 617
    :cond_683
    const/4 v3, 0x0

    goto :goto_67b

    .line 622
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_685
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 625
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->adminUnLockPersona(I)Z

    move-result v21

    .line 626
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    if-eqz v21, :cond_6a4

    const/4 v3, 0x1

    :goto_69c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 627
    :cond_6a4
    const/4 v3, 0x0

    goto :goto_69c

    .line 632
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_6a6
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPersonaIds()[I

    move-result-object v21

    .line 634
    .local v21, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 636
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 640
    .end local v21    # "_result":[I
    :sswitch_6be
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 643
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->settingSyncAllowed(I)Z

    move-result v21

    .line 644
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    if-eqz v21, :cond_6dd

    const/4 v3, 0x1

    :goto_6d5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 645
    :cond_6dd
    const/4 v3, 0x0

    goto :goto_6d5

    .line 650
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_6df
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 654
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 656
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 657
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IPersonaManager$Stub;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 663
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    :sswitch_6fd
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 667
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 669
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 670
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IPersonaManager$Stub;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 676
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    :sswitch_71b
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 680
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 681
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    .line 682
    .local v24, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 684
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 688
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_73d
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 692
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 693
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->clearAppListForPersona(Ljava/lang/String;I)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 699
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_757
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 703
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 704
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->savePasswordInTima(ILjava/lang/String;)Z

    move-result v21

    .line 705
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    if-eqz v21, :cond_77a

    const/4 v3, 0x1

    :goto_772
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 706
    :cond_77a
    const/4 v3, 0x0

    goto :goto_772

    .line 711
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_77c
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->resetPassword(Ljava/lang/String;)Z

    move-result v21

    .line 715
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    if-eqz v21, :cond_79b

    const/4 v3, 0x1

    :goto_793
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 716
    :cond_79b
    const/4 v3, 0x0

    goto :goto_793

    .line 721
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_79d
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 725
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 726
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 732
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_7b7
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 736
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 737
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 743
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_7d1
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 747
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 748
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z

    move-result v21

    .line 749
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    if-eqz v21, :cond_7f4

    const/4 v3, 0x1

    :goto_7ec
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 750
    :cond_7f4
    const/4 v3, 0x0

    goto :goto_7ec

    .line 755
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v21    # "_result":Z
    :sswitch_7f6
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 758
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v24

    .line 759
    .restart local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 761
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 765
    .end local v4    # "_arg0":I
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_814
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 769
    .local v18, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 770
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/IPersonaManager$Stub;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 776
    .end local v5    # "_arg1":I
    .end local v18    # "_arg0":J
    :sswitch_830
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 779
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getScreenOffTime(I)J

    move-result-wide v21

    .line 780
    .local v21, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    move-object/from16 v0, p3

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 782
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 786
    .end local v4    # "_arg0":I
    .end local v21    # "_result":J
    :sswitch_84e
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 789
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->refreshTimer(I)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 795
    .end local v4    # "_arg0":I
    :sswitch_864
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 798
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->userActivity(I)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 804
    .end local v4    # "_arg0":I
    :sswitch_87a
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8aa

    const/4 v4, 0x1

    .line 808
    .local v4, "_arg0":Z
    :goto_888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 810
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 812
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 814
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v8

    move-object/from16 v17, v9

    .line 815
    invoke-virtual/range {v12 .. v17}, Landroid/os/IPersonaManager$Stub;->onWakeLockChange(ZIIILjava/lang/String;)V

    .line 816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 806
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    :cond_8aa
    const/4 v4, 0x0

    goto :goto_888

    .line 821
    :sswitch_8ac
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 825
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8d1

    const/4 v5, 0x1

    .line 826
    .local v5, "_arg1":Z
    :goto_8be
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->getDisabledHomeLaunchers(IZ)Ljava/util/List;

    move-result-object v24

    .line 827
    .restart local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 829
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 825
    .end local v5    # "_arg1":Z
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8d1
    const/4 v5, 0x0

    goto :goto_8be

    .line 833
    .end local v4    # "_arg0":I
    :sswitch_8d3
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 836
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->disablePersonaKeyGuard(I)Z

    move-result v21

    .line 837
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    if-eqz v21, :cond_8f2

    const/4 v3, 0x1

    :goto_8ea
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 838
    :cond_8f2
    const/4 v3, 0x0

    goto :goto_8ea

    .line 843
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_8f4
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 846
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->enablePersonaKeyGuard(I)Z

    move-result v21

    .line 847
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    if-eqz v21, :cond_913

    const/4 v3, 0x1

    :goto_90b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 848
    :cond_913
    const/4 v3, 0x0

    goto :goto_90b

    .line 853
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_915
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 857
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_932

    const/4 v5, 0x1

    .line 858
    .restart local v5    # "_arg1":Z
    :goto_927
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setFsMountState(IZ)V

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 857
    .end local v5    # "_arg1":Z
    :cond_932
    const/4 v5, 0x0

    goto :goto_927

    .line 864
    .end local v4    # "_arg0":I
    :sswitch_934
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPasswordHint()Ljava/lang/String;

    move-result-object v21

    .line 866
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 868
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 872
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_94c
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 875
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->isKioskModeEnabled(I)Z

    move-result v21

    .line 876
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    if-eqz v21, :cond_96b

    const/4 v3, 0x1

    :goto_963
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 877
    :cond_96b
    const/4 v3, 0x0

    goto :goto_963

    .line 882
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_96d
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->isKioskContainerExistOnDevice()Z

    move-result v21

    .line 884
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    if-eqz v21, :cond_986

    const/4 v3, 0x1

    :goto_97e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 885
    :cond_986
    const/4 v3, 0x0

    goto :goto_97e

    .line 890
    .end local v21    # "_result":Z
    :sswitch_988
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 894
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9a5

    const/4 v5, 0x1

    .line 895
    .restart local v5    # "_arg1":Z
    :goto_99a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setBackPressed(IZ)V

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 894
    .end local v5    # "_arg1":Z
    :cond_9a5
    const/4 v5, 0x0

    goto :goto_99a

    .line 901
    .end local v4    # "_arg0":I
    :sswitch_9a7
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->onSentinelActivityResumed()Z

    move-result v21

    .line 903
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    if-eqz v21, :cond_9c0

    const/4 v3, 0x1

    :goto_9b8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 904
    :cond_9c0
    const/4 v3, 0x0

    goto :goto_9b8

    .line 909
    .end local v21    # "_result":Z
    :sswitch_9c2
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 913
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9e8

    const/4 v5, 0x1

    .line 914
    .restart local v5    # "_arg1":Z
    :goto_9d4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->resetPersonaOnReboot(IZ)Z

    move-result v21

    .line 915
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    if-eqz v21, :cond_9ea

    const/4 v3, 0x1

    :goto_9e0
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 913
    .end local v5    # "_arg1":Z
    .end local v21    # "_result":Z
    :cond_9e8
    const/4 v5, 0x0

    goto :goto_9d4

    .line 916
    .restart local v5    # "_arg1":Z
    .restart local v21    # "_result":Z
    :cond_9ea
    const/4 v3, 0x0

    goto :goto_9e0

    .line 921
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Z
    .end local v21    # "_result":Z
    :sswitch_9ec
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 925
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a09

    const/4 v5, 0x1

    .line 926
    .restart local v5    # "_arg1":Z
    :goto_9fe
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->notifyKeyguardShow(IZ)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 925
    .end local v5    # "_arg1":Z
    :cond_a09
    const/4 v5, 0x0

    goto :goto_9fe

    .line 932
    .end local v4    # "_arg0":I
    :sswitch_a0b
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 935
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getKeyguardShowState(I)Z

    move-result v21

    .line 936
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    if-eqz v21, :cond_a2a

    const/4 v3, 0x1

    :goto_a22
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 937
    :cond_a2a
    const/4 v3, 0x0

    goto :goto_a22

    .line 942
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_a2c
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 945
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getLastShortcutState(I)Z

    move-result v21

    .line 946
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    if-eqz v21, :cond_a4b

    const/4 v3, 0x1

    :goto_a43
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 947
    :cond_a4b
    const/4 v3, 0x0

    goto :goto_a43

    .line 41
    nop

    :sswitch_data_a4e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_35
        0x3 -> :sswitch_86
        0x4 -> :sswitch_a7
        0x5 -> :sswitch_da
        0x6 -> :sswitch_f8
        0x7 -> :sswitch_11b
        0x8 -> :sswitch_149
        0x9 -> :sswitch_16a
        0xa -> :sswitch_191
        0xb -> :sswitch_1b8
        0xc -> :sswitch_1d0
        0xd -> :sswitch_1f8
        0xe -> :sswitch_226
        0xf -> :sswitch_244
        0x10 -> :sswitch_25a
        0x11 -> :sswitch_272
        0x12 -> :sswitch_28c
        0x13 -> :sswitch_2aa
        0x14 -> :sswitch_2c4
        0x15 -> :sswitch_2e2
        0x16 -> :sswitch_2fc
        0x17 -> :sswitch_316
        0x18 -> :sswitch_334
        0x19 -> :sswitch_352
        0x1a -> :sswitch_379
        0x1b -> :sswitch_39d
        0x1c -> :sswitch_3bf
        0x1d -> :sswitch_3d9
        0x1e -> :sswitch_3f7
        0x1f -> :sswitch_411
        0x20 -> :sswitch_44d
        0x21 -> :sswitch_46c
        0x22 -> :sswitch_48a
        0x23 -> :sswitch_4af
        0x24 -> :sswitch_4cd
        0x25 -> :sswitch_4eb
        0x26 -> :sswitch_509
        0x27 -> :sswitch_531
        0x28 -> :sswitch_547
        0x29 -> :sswitch_565
        0x2a -> :sswitch_57f
        0x2b -> :sswitch_5a2
        0x2c -> :sswitch_5b8
        0x2d -> :sswitch_5ce
        0x2e -> :sswitch_5e4
        0x2f -> :sswitch_5ff
        0x30 -> :sswitch_61e
        0x31 -> :sswitch_63f
        0x32 -> :sswitch_660
        0x33 -> :sswitch_685
        0x34 -> :sswitch_6a6
        0x35 -> :sswitch_6be
        0x36 -> :sswitch_6df
        0x37 -> :sswitch_6fd
        0x38 -> :sswitch_71b
        0x39 -> :sswitch_73d
        0x3a -> :sswitch_757
        0x3b -> :sswitch_77c
        0x3c -> :sswitch_79d
        0x3d -> :sswitch_7b7
        0x3e -> :sswitch_7d1
        0x3f -> :sswitch_7f6
        0x40 -> :sswitch_814
        0x41 -> :sswitch_830
        0x42 -> :sswitch_84e
        0x43 -> :sswitch_864
        0x44 -> :sswitch_87a
        0x45 -> :sswitch_8ac
        0x46 -> :sswitch_8d3
        0x47 -> :sswitch_8f4
        0x48 -> :sswitch_915
        0x49 -> :sswitch_934
        0x4a -> :sswitch_94c
        0x4b -> :sswitch_96d
        0x4c -> :sswitch_988
        0x4d -> :sswitch_9a7
        0x4e -> :sswitch_9c2
        0x4f -> :sswitch_9ec
        0x50 -> :sswitch_a0b
        0x51 -> :sswitch_a2c
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
