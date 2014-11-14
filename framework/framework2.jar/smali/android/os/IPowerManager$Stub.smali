.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final TRANSACTION_crash:I = 0x10

.field static final TRANSACTION_forceDisableWakeLock:I = 0x1e

.field static final TRANSACTION_getCurrentBrightness:I = 0x1b

.field static final TRANSACTION_goToSleep:I = 0xa

.field static final TRANSACTION_isAlpmMode:I = 0x27

.field static final TRANSACTION_isForceUnblankDisplay:I = 0x25

.field static final TRANSACTION_isScreenOn:I = 0xc

.field static final TRANSACTION_isWakeLockLevelSupported:I = 0x7

.field static final TRANSACTION_nap:I = 0xb

.field static final TRANSACTION_preventAutoPowerOff:I = 0x5

.field static final TRANSACTION_reboot:I = 0xd

.field static final TRANSACTION_releaseWakeLock:I = 0x3

.field static final TRANSACTION_resetAutoPowerOffTimer:I = 0x1c

.field static final TRANSACTION_setAlpmModeLocked:I = 0x26

.field static final TRANSACTION_setAttentionLight:I = 0x15

.field static final TRANSACTION_setAutoBrightnessForEbookOnly:I = 0x20

.field static final TRANSACTION_setAutoBrightnessLimit:I = 0x18

.field static final TRANSACTION_setButtonBrightnessLimit:I = 0x23

.field static final TRANSACTION_setForceUnblankDisplay:I = 0x24

.field static final TRANSACTION_setKeyboardVisibility:I = 0x1f

.field static final TRANSACTION_setMasterBrightnessAdjustmentFromSSRM:I = 0x1a

.field static final TRANSACTION_setMasterBrightnessLimit:I = 0x19

.field static final TRANSACTION_setMaximumScreenOffTimeoutFromDeviceAdmin:I = 0x12

.field static final TRANSACTION_setRatioOfAutoBrightness:I = 0x17

.field static final TRANSACTION_setStayOnSetting:I = 0x11

.field static final TRANSACTION_setSystemPowerSaveMode:I = 0x1d

.field static final TRANSACTION_setTemporaryScreenAutoBrightnessAdjustmentSettingOverride:I = 0x14

.field static final TRANSACTION_setTemporaryScreenBrightnessSettingOverride:I = 0x13

.field static final TRANSACTION_setThermalBrightnessLimit:I = 0x16

.field static final TRANSACTION_shutdown:I = 0xe

.field static final TRANSACTION_switchForceLcdBacklightOffState:I = 0x22

.field static final TRANSACTION_systemShutdown:I = 0xf

.field static final TRANSACTION_updateCoverState:I = 0x21

.field static final TRANSACTION_updateWakeLockUids:I = 0x4

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x6

.field static final TRANSACTION_userActivity:I = 0x8

.field static final TRANSACTION_wakeUp:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
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
    const-string v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/IPowerManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/IPowerManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_37c

    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 43
    :sswitch_a
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 59
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .local v5, "_arg4":Landroid/os/WorkSource;
    :goto_33
    move-object v0, p0

    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 62
    .end local v5    # "_arg4":Landroid/os/WorkSource;
    :cond_3b
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/WorkSource;
    goto :goto_33

    .line 70
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/WorkSource;
    :sswitch_3d
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 74
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 87
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :sswitch_5e
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 91
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 98
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_72
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 102
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 103
    .local v2, "_arg1":[I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 109
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":[I
    :sswitch_86
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9e

    move v2, v9

    .line 114
    .local v2, "_arg1":Z
    :goto_96
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->preventAutoPowerOff(IZ)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    :cond_9e
    move v2, v0

    .line 113
    goto :goto_96

    .line 120
    .end local v1    # "_arg0":I
    :sswitch_a0
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 124
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bf

    .line 125
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 130
    .local v2, "_arg1":Landroid/os/WorkSource;
    :goto_b7
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 128
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :cond_bf
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/WorkSource;
    goto :goto_b7

    .line 136
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :sswitch_c1
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v8

    .line 140
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v8, :cond_d4

    move v0, v9

    :cond_d4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 146
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_d9
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 150
    .local v6, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 153
    .local v3, "_arg2":I
    invoke-virtual {p0, v6, v7, v2, v3}, Landroid/os/IPowerManager$Stub;->userActivity(JII)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 159
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_arg0":J
    :sswitch_f2
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 162
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Landroid/os/IPowerManager$Stub;->wakeUp(J)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 168
    .end local v6    # "_arg0":J
    :sswitch_103
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 172
    .restart local v6    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v6, v7, v2}, Landroid/os/IPowerManager$Stub;->goToSleep(JI)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 179
    .end local v2    # "_arg1":I
    .end local v6    # "_arg0":J
    :sswitch_118
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 182
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Landroid/os/IPowerManager$Stub;->nap(J)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 188
    .end local v6    # "_arg0":J
    :sswitch_129
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isScreenOn()Z

    move-result v8

    .line 190
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v8, :cond_138

    move v0, v9

    :cond_138
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 196
    .end local v8    # "_result":Z
    :sswitch_13d
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_15c

    move v1, v9

    .line 200
    .local v1, "_arg0":Z
    :goto_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_15e

    move v3, v9

    .line 203
    .local v3, "_arg2":Z
    :goto_154
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :cond_15c
    move v1, v0

    .line 198
    goto :goto_149

    .restart local v1    # "_arg0":Z
    .restart local v2    # "_arg1":Ljava/lang/String;
    :cond_15e
    move v3, v0

    .line 202
    goto :goto_154

    .line 209
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_160
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17b

    move v1, v9

    .line 213
    .restart local v1    # "_arg0":Z
    :goto_16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17d

    move v2, v9

    .line 214
    .local v2, "_arg1":Z
    :goto_173
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->shutdown(ZZ)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_17b
    move v1, v0

    .line 211
    goto :goto_16c

    .restart local v1    # "_arg0":Z
    :cond_17d
    move v2, v0

    .line 213
    goto :goto_173

    .line 220
    .end local v1    # "_arg0":Z
    :sswitch_17f
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->systemShutdown()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 227
    :sswitch_18c
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 236
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_19d
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 239
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 245
    .end local v1    # "_arg0":I
    :sswitch_1ae
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 254
    .end local v1    # "_arg0":I
    :sswitch_1bf
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 263
    .end local v1    # "_arg0":I
    :sswitch_1d0
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 266
    .local v1, "_arg0":F
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 272
    .end local v1    # "_arg0":F
    :sswitch_1e1
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1f9

    move v1, v9

    .line 276
    .local v1, "_arg0":Z
    :goto_1ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_1f9
    move v1, v0

    .line 274
    goto :goto_1ed

    .line 283
    :sswitch_1fb
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_213

    move v2, v9

    .line 288
    .local v2, "_arg1":Z
    :goto_20b
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setThermalBrightnessLimit(IZ)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    :cond_213
    move v2, v0

    .line 287
    goto :goto_20b

    .line 294
    .end local v1    # "_arg0":I
    :sswitch_215
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setRatioOfAutoBrightness(I)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 303
    .end local v1    # "_arg0":I
    :sswitch_226
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setAutoBrightnessLimit(II)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 314
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_23b
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setMasterBrightnessLimit(II)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 325
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_250
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->setMasterBrightnessAdjustmentFromSSRM(III)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 338
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_269
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_281

    move v1, v9

    .line 341
    .local v1, "_arg0":Z
    :goto_275
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->getCurrentBrightness(Z)F

    move-result v8

    .line 342
    .local v8, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v8    # "_result":F
    :cond_281
    move v1, v0

    .line 340
    goto :goto_275

    .line 348
    :sswitch_283
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->resetAutoPowerOffTimer()V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 355
    :sswitch_290
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2a4

    move v1, v9

    .line 358
    .restart local v1    # "_arg0":Z
    :goto_29c
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setSystemPowerSaveMode(Z)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_2a4
    move v1, v0

    .line 357
    goto :goto_29c

    .line 364
    :sswitch_2a6
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2ba

    move v1, v9

    .line 367
    .restart local v1    # "_arg0":Z
    :goto_2b2
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->forceDisableWakeLock(Z)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_2ba
    move v1, v0

    .line 366
    goto :goto_2b2

    .line 373
    :sswitch_2bc
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2d0

    move v1, v9

    .line 376
    .restart local v1    # "_arg0":Z
    :goto_2c8
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setKeyboardVisibility(Z)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_2d0
    move v1, v0

    .line 375
    goto :goto_2c8

    .line 382
    :sswitch_2d2
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2e6

    move v1, v9

    .line 385
    .restart local v1    # "_arg0":Z
    :goto_2de
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setAutoBrightnessForEbookOnly(Z)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_2e6
    move v1, v0

    .line 384
    goto :goto_2de

    .line 391
    :sswitch_2e8
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2fc

    move v1, v9

    .line 394
    .restart local v1    # "_arg0":Z
    :goto_2f4
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->updateCoverState(Z)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_2fc
    move v1, v0

    .line 393
    goto :goto_2f4

    .line 400
    :sswitch_2fe
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->switchForceLcdBacklightOffState()V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 407
    :sswitch_30b
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 410
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setButtonBrightnessLimit(I)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 416
    .end local v1    # "_arg0":I
    :sswitch_31c
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_330

    move v1, v9

    .line 419
    .local v1, "_arg0":Z
    :goto_328
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setForceUnblankDisplay(Z)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_330
    move v1, v0

    .line 418
    goto :goto_328

    .line 425
    :sswitch_332
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isForceUnblankDisplay()Z

    move-result v8

    .line 427
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v8, :cond_341

    move v0, v9

    :cond_341
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 433
    .end local v8    # "_result":Z
    :sswitch_346
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_366

    move v1, v9

    .line 437
    .restart local v1    # "_arg0":Z
    :goto_352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 439
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 441
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 442
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IPowerManager$Stub;->setAlpmModeLocked(ZIILandroid/os/IBinder;)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :cond_366
    move v1, v0

    .line 435
    goto :goto_352

    .line 448
    :sswitch_368
    const-string v10, "android.os.IPowerManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isAlpmMode()Z

    move-result v8

    .line 450
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz v8, :cond_377

    move v0, v9

    :cond_377
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_37c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_5e
        0x4 -> :sswitch_72
        0x5 -> :sswitch_86
        0x6 -> :sswitch_a0
        0x7 -> :sswitch_c1
        0x8 -> :sswitch_d9
        0x9 -> :sswitch_f2
        0xa -> :sswitch_103
        0xb -> :sswitch_118
        0xc -> :sswitch_129
        0xd -> :sswitch_13d
        0xe -> :sswitch_160
        0xf -> :sswitch_17f
        0x10 -> :sswitch_18c
        0x11 -> :sswitch_19d
        0x12 -> :sswitch_1ae
        0x13 -> :sswitch_1bf
        0x14 -> :sswitch_1d0
        0x15 -> :sswitch_1e1
        0x16 -> :sswitch_1fb
        0x17 -> :sswitch_215
        0x18 -> :sswitch_226
        0x19 -> :sswitch_23b
        0x1a -> :sswitch_250
        0x1b -> :sswitch_269
        0x1c -> :sswitch_283
        0x1d -> :sswitch_290
        0x1e -> :sswitch_2a6
        0x1f -> :sswitch_2bc
        0x20 -> :sswitch_2d2
        0x21 -> :sswitch_2e8
        0x22 -> :sswitch_2fe
        0x23 -> :sswitch_30b
        0x24 -> :sswitch_31c
        0x25 -> :sswitch_332
        0x26 -> :sswitch_346
        0x27 -> :sswitch_368
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
