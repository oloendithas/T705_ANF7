.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_checkBackupPin:I = 0x12

.field static final TRANSACTION_checkFingerprintPassword:I = 0xf

.field static final TRANSACTION_checkParentControlPassword:I = 0x15

.field static final TRANSACTION_checkPassword:I = 0xa

.field static final TRANSACTION_checkPattern:I = 0x8

.field static final TRANSACTION_checkPersonalModeBackupPin:I = 0x2c

.field static final TRANSACTION_checkPersonalModeFingerprintPassword:I = 0x2f

.field static final TRANSACTION_checkPersonalModePassword:I = 0x25

.field static final TRANSACTION_checkPersonalModePattern:I = 0x27

.field static final TRANSACTION_checkPersonalModePin:I = 0x23

.field static final TRANSACTION_checkSKTPassword:I = 0x19

.field static final TRANSACTION_checkSignatureBackupPin:I = 0x1e

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getParentControlPasswordHashSize:I = 0x17

.field static final TRANSACTION_getSignatureInfo:I = 0x1c

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_haveBackupPin:I = 0x13

.field static final TRANSACTION_haveFingerprintPassword:I = 0x10

.field static final TRANSACTION_haveParentControlPassword:I = 0x16

.field static final TRANSACTION_havePassword:I = 0xc

.field static final TRANSACTION_havePattern:I = 0xb

.field static final TRANSACTION_havePersonalModeBackupPin:I = 0x2d

.field static final TRANSACTION_havePersonalModeFingerprintPassword:I = 0x30

.field static final TRANSACTION_havePersonalModePassword:I = 0x29

.field static final TRANSACTION_havePersonalModePattern:I = 0x2a

.field static final TRANSACTION_havePersonalModePin:I = 0x28

.field static final TRANSACTION_haveSKTPassword:I = 0x1a

.field static final TRANSACTION_haveSignature:I = 0x1f

.field static final TRANSACTION_haveSignatureBackupPin:I = 0x20

.field static final TRANSACTION_lock:I = 0x21

.field static final TRANSACTION_removeUser:I = 0xd

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setLockBackupPin:I = 0x11

.field static final TRANSACTION_setLockFingerprintPassword:I = 0xe

.field static final TRANSACTION_setLockParentControlPassword:I = 0x14

.field static final TRANSACTION_setLockPassword:I = 0x9

.field static final TRANSACTION_setLockPattern:I = 0x7

.field static final TRANSACTION_setLockSKTPassword:I = 0x18

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setPersonalModeFingerprintPassword:I = 0x2e

.field static final TRANSACTION_setPersonalModeLockBackupPin:I = 0x2b

.field static final TRANSACTION_setPersonalModeLockPassword:I = 0x24

.field static final TRANSACTION_setPersonalModeLockPattern:I = 0x26

.field static final TRANSACTION_setPersonalModeLockPin:I = 0x22

.field static final TRANSACTION_setSignatureBackupPin:I = 0x1d

.field static final TRANSACTION_setSignatureInfo:I = 0x1b

.field static final TRANSACTION_setString:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
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
    const-string v1, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_4a8

    .line 584
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 43
    :sswitch_a
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2b

    move v1, v6

    .line 54
    .local v1, "_arg1":Z
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_arg2":I
    :cond_2b
    move v1, v7

    .line 52
    goto :goto_20

    .line 61
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 67
    .local v1, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :sswitch_45
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_5d
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7f

    move v1, v6

    .line 93
    .local v1, "_arg1":Z
    :goto_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v4

    .line 95
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v4, :cond_7b

    move v7, v6

    :cond_7b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :cond_7f
    move v1, v7

    .line 91
    goto :goto_6d

    .line 101
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_81
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 107
    .local v1, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 109
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":J
    :sswitch_9e
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_bb
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPattern(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_d0
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPattern(Ljava/lang/String;I)Z

    move-result v4

    .line 146
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_e7

    move v7, v6

    :cond_e7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_ec
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPassword(Ljava/lang/String;I)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 163
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_101
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 169
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v4, :cond_118

    move v7, v6

    :cond_118
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 175
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_11d
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->havePattern(I)Z

    move-result v4

    .line 179
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v4, :cond_130

    move v7, v6

    :cond_130
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 185
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_135
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->havePassword(I)Z

    move-result v4

    .line 189
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v4, :cond_148

    move v7, v6

    :cond_148
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 195
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_14d
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->removeUser(I)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 204
    .end local v0    # "_arg0":I
    :sswitch_15e
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockFingerprintPassword(Ljava/lang/String;I)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 215
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_173
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 221
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v4, :cond_18a

    move v7, v6

    :cond_18a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 227
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_18f
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveFingerprintPassword(I)Z

    move-result v4

    .line 231
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v4, :cond_1a2

    move v7, v6

    :cond_1a2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 237
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_1a7
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockBackupPin(Ljava/lang/String;I)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 248
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_1bc
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkBackupPin(Ljava/lang/String;I)Z

    move-result v4

    .line 254
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v4, :cond_1d3

    move v7, v6

    :cond_1d3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 260
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_1d8
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveBackupPin(I)Z

    move-result v4

    .line 264
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v4, :cond_1eb

    move v7, v6

    :cond_1eb
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 270
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_1f0
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 274
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockParentControlPassword([BI)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 281
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :sswitch_205
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 285
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkParentControlPassword([BI)Z

    move-result v4

    .line 287
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v4, :cond_21c

    move v7, v6

    :cond_21c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 293
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_221
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveParentControlPassword(I)Z

    move-result v4

    .line 297
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v4, :cond_234

    move v7, v6

    :cond_234
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 303
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_239
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getParentControlPasswordHashSize(I)I

    move-result v4

    .line 307
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 313
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_24e
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockSKTPassword(Ljava/lang/String;I)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 324
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_263
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkSKTPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 330
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v4, :cond_27a

    move v7, v6

    :cond_27a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 336
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_27f
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveSKTPassword(I)Z

    move-result v4

    .line 340
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v4, :cond_292

    move v7, v6

    :cond_292
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 346
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_297
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 350
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setSignatureInfo([BI)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 357
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :sswitch_2ac
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 360
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getSignatureInfo(I)[B

    move-result-object v4

    .line 361
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 367
    .end local v0    # "_arg0":I
    .end local v4    # "_result":[B
    :sswitch_2c1
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 371
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 372
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setSignatureBackupPin([BI)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 378
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :sswitch_2d6
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 382
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkSignatureBackupPin([BI)Z

    move-result v4

    .line 384
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v4, :cond_2ed

    move v7, v6

    :cond_2ed
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 390
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_2f2
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 393
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveSignature(I)Z

    move-result v4

    .line 394
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v4, :cond_305

    move v7, v6

    :cond_305
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 400
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_30a
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveSignatureBackupPin(I)Z

    move-result v4

    .line 404
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v4, :cond_31d

    move v7, v6

    :cond_31d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 410
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_322
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 413
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->lock(I)Z

    move-result v4

    .line 414
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    if-eqz v4, :cond_335

    move v7, v6

    :cond_335
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 420
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_33a
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeLockPin(Ljava/lang/String;I)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 431
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_34f
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 436
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v4

    .line 437
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v4, :cond_366

    move v7, v6

    :cond_366
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 443
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_36b
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 448
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeLockPassword(Ljava/lang/String;I)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 454
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_380
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v4

    .line 460
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v4, :cond_397

    move v7, v6

    :cond_397
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 466
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_39c
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 471
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeLockPattern(Ljava/lang/String;I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 477
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_3b1
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v4

    .line 483
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v4, :cond_3c8

    move v7, v6

    :cond_3c8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 489
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_3cd
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 492
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModePin(I)Z

    move-result v4

    .line 493
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v4, :cond_3e0

    move v7, v6

    :cond_3e0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 499
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3e5
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 502
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModePassword(I)Z

    move-result v4

    .line 503
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v4, :cond_3f8

    move v7, v6

    :cond_3f8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 509
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3fd
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 512
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModePattern(I)Z

    move-result v4

    .line 513
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v4, :cond_410

    move v7, v6

    :cond_410
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 519
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_415
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 524
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 530
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_42a
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z

    move-result v4

    .line 536
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    if-eqz v4, :cond_441

    move v7, v6

    :cond_441
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 542
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_446
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 545
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModeBackupPin(I)Z

    move-result v4

    .line 546
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v4, :cond_459

    move v7, v6

    :cond_459
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 552
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_45e
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 557
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 563
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_473
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 568
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 569
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    if-eqz v4, :cond_48a

    move v7, v6

    :cond_48a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 575
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_48f
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 578
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModeFingerprintPassword(I)Z

    move-result v4

    .line 579
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    if-eqz v4, :cond_4a2

    move v7, v6

    :cond_4a2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_4a8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_45
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_81
        0x6 -> :sswitch_9e
        0x7 -> :sswitch_bb
        0x8 -> :sswitch_d0
        0x9 -> :sswitch_ec
        0xa -> :sswitch_101
        0xb -> :sswitch_11d
        0xc -> :sswitch_135
        0xd -> :sswitch_14d
        0xe -> :sswitch_15e
        0xf -> :sswitch_173
        0x10 -> :sswitch_18f
        0x11 -> :sswitch_1a7
        0x12 -> :sswitch_1bc
        0x13 -> :sswitch_1d8
        0x14 -> :sswitch_1f0
        0x15 -> :sswitch_205
        0x16 -> :sswitch_221
        0x17 -> :sswitch_239
        0x18 -> :sswitch_24e
        0x19 -> :sswitch_263
        0x1a -> :sswitch_27f
        0x1b -> :sswitch_297
        0x1c -> :sswitch_2ac
        0x1d -> :sswitch_2c1
        0x1e -> :sswitch_2d6
        0x1f -> :sswitch_2f2
        0x20 -> :sswitch_30a
        0x21 -> :sswitch_322
        0x22 -> :sswitch_33a
        0x23 -> :sswitch_34f
        0x24 -> :sswitch_36b
        0x25 -> :sswitch_380
        0x26 -> :sswitch_39c
        0x27 -> :sswitch_3b1
        0x28 -> :sswitch_3cd
        0x29 -> :sswitch_3e5
        0x2a -> :sswitch_3fd
        0x2b -> :sswitch_415
        0x2c -> :sswitch_42a
        0x2d -> :sswitch_446
        0x2e -> :sswitch_45e
        0x2f -> :sswitch_473
        0x30 -> :sswitch_48f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
