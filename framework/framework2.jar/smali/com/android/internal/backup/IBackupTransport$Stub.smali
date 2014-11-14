.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final TRANSACTION_clearBackupData:I = 0x8

.field static final TRANSACTION_configurationIntent:I = 0x2

.field static final TRANSACTION_currentDestinationString:I = 0x3

.field static final TRANSACTION_finishBackup:I = 0x9

.field static final TRANSACTION_finishRestore:I = 0xf

.field static final TRANSACTION_getAvailableRestoreSets:I = 0xa

.field static final TRANSACTION_getCurrentRestoreSet:I = 0xb

.field static final TRANSACTION_getRestoreData:I = 0xe

.field static final TRANSACTION_initializeDevice:I = 0x6

.field static final TRANSACTION_name:I = 0x1

.field static final TRANSACTION_nextRestorePackage:I = 0xd

.field static final TRANSACTION_performBackup:I = 0x7

.field static final TRANSACTION_requestBackupTime:I = 0x5

.field static final TRANSACTION_startRestore:I = 0xc

.field static final TRANSACTION_transportDirName:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
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
    const-string v1, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_15a

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_8
    return v5

    .line 43
    :sswitch_9
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->name()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 56
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent()Landroid/content/Intent;

    move-result-object v3

    .line 58
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v3, :cond_34

    .line 60
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v3, p3, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 64
    :cond_34
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 70
    .end local v3    # "_result":Landroid/content/Intent;
    :sswitch_39
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 78
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_49
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 80
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 86
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime()J

    move-result-wide v3

    .line 88
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8

    .line 94
    .end local v3    # "_result":J
    :sswitch_69
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice()I

    move-result v3

    .line 96
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 102
    .end local v3    # "_result":I
    :sswitch_79
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a6

    .line 105
    sget-object v6, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 111
    .local v0, "_arg0":Landroid/content/pm/PackageInfo;
    :goto_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a8

    .line 112
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 117
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_9a
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    .line 118
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 108
    .end local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_result":I
    :cond_a6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_8c

    .line 115
    :cond_a8
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_9a

    .line 124
    .end local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_aa
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c9

    .line 127
    sget-object v6, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 132
    .restart local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    :goto_bd
    invoke-virtual {p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v3

    .line 133
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 130
    .end local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_result":I
    :cond_c9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_bd

    .line 139
    .end local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    :sswitch_cb
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup()I

    move-result v3

    .line 141
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 147
    .end local v3    # "_result":I
    :sswitch_dc
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v3

    .line 149
    .local v3, "_result":[Landroid/app/backup/RestoreSet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    .line 155
    .end local v3    # "_result":[Landroid/app/backup/RestoreSet;
    :sswitch_ed
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet()J

    move-result-wide v3

    .line 157
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_8

    .line 163
    .end local v3    # "_result":J
    :sswitch_fe
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 167
    .local v0, "_arg0":J
    sget-object v6, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PackageInfo;

    .line 168
    .local v2, "_arg1":[Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v3

    .line 169
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 175
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":[Landroid/content/pm/PackageInfo;
    .end local v3    # "_result":I
    :sswitch_11b
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 183
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_12c
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14b

    .line 186
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 191
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_13f
    invoke-virtual {p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    .line 192
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 189
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_result":I
    :cond_14b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_13f

    .line 198
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_14d
    const-string v6, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 39
    :sswitch_data_15a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_39
        0x4 -> :sswitch_49
        0x5 -> :sswitch_59
        0x6 -> :sswitch_69
        0x7 -> :sswitch_79
        0x8 -> :sswitch_aa
        0x9 -> :sswitch_cb
        0xa -> :sswitch_dc
        0xb -> :sswitch_ed
        0xc -> :sswitch_fe
        0xd -> :sswitch_11b
        0xe -> :sswitch_12c
        0xf -> :sswitch_14d
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
