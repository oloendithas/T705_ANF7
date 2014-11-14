.class public abstract Landroid/service/tima/ITimaService$Stub;
.super Landroid/os/Binder;
.source "ITimaService.java"

# interfaces
.implements Landroid/service/tima/ITimaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/tima/ITimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/tima/ITimaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.tima.ITimaService"

.field static final TRANSACTION_KeyStore3_del:I = 0x11

.field static final TRANSACTION_KeyStore3_exist:I = 0xe

.field static final TRANSACTION_KeyStore3_get:I = 0xf

.field static final TRANSACTION_KeyStore3_getmtime:I = 0x10

.field static final TRANSACTION_KeyStore3_init:I = 0xc

.field static final TRANSACTION_KeyStore3_put:I = 0xd

.field static final TRANSACTION_KeyStore3_saw:I = 0x12

.field static final TRANSACTION_attestation:I = 0xa

.field static final TRANSACTION_ccmRegisterForDefaultCertificate:I = 0x14

.field static final TRANSACTION_checkEvent:I = 0x1

.field static final TRANSACTION_checkHistory:I = 0x2

.field static final TRANSACTION_displayEvent:I = 0x3

.field static final TRANSACTION_dumpLog:I = 0x15

.field static final TRANSACTION_getDeviceID:I = 0xb

.field static final TRANSACTION_getEventList:I = 0x4

.field static final TRANSACTION_getTimaVersion:I = 0x13

.field static final TRANSACTION_keystoreInit:I = 0x6

.field static final TRANSACTION_keystoreInstallKey:I = 0x7

.field static final TRANSACTION_keystoreRetrieveKey:I = 0x8

.field static final TRANSACTION_keystoreShutdown:I = 0x9

.field static final TRANSACTION_setISLCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;
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
    const-string v1, "android.service.tima.ITimaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/service/tima/ITimaService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/service/tima/ITimaService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/tima/ITimaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_1e6

    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 42
    :sswitch_a
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/service/tima/ITimaService$Stub;->checkEvent(II)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 59
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_28
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/service/tima/ITimaService$Stub;->checkHistory(II)Ljava/lang/String;

    move-result-object v4

    .line 65
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_40
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/service/tima/ITimaService$Stub;->displayEvent(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_50
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/tima/ITimaService$Stub;->getEventList(I)Ljava/util/List;

    move-result-object v6

    .line 84
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_9

    .line 90
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_64
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/service/tima/ITimaISLCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaISLCallback;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Landroid/service/tima/ITimaISLCallback;
    invoke-virtual {p0, v0}, Landroid/service/tima/ITimaService$Stub;->setISLCallback(Landroid/service/tima/ITimaISLCallback;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 99
    .end local v0    # "_arg0":Landroid/service/tima/ITimaISLCallback;
    :sswitch_78
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->keystoreInit()I

    move-result v4

    .line 101
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 107
    .end local v4    # "_result":I
    :sswitch_88
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 112
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Landroid/service/tima/ITimaService$Stub;->keystoreInstallKey(I[B)I

    move-result v4

    .line 113
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 119
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v4    # "_result":I
    :sswitch_a1
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/tima/ITimaService$Stub;->keystoreRetrieveKey(I)[B

    move-result-object v4

    .line 123
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 129
    .end local v0    # "_arg0":I
    .end local v4    # "_result":[B
    :sswitch_b6
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->keystoreShutdown()I

    move-result v4

    .line 131
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 137
    .end local v4    # "_result":I
    :sswitch_c7
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 140
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Landroid/service/tima/ITimaService$Stub;->attestation([B)[B

    move-result-object v4

    .line 141
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 147
    .end local v0    # "_arg0":[B
    .end local v4    # "_result":[B
    :sswitch_dc
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->getDeviceID()[B

    move-result-object v4

    .line 149
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 155
    .end local v4    # "_result":[B
    :sswitch_ed
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_init()I

    move-result v4

    .line 157
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 163
    .end local v4    # "_result":I
    :sswitch_fe
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 169
    .restart local v1    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v3

    .line 172
    .local v3, "_arg3":[C
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v4

    .line 173
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 179
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[C
    .end local v4    # "_result":I
    :sswitch_11f
    const-string v9, "android.service.tima.ITimaService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_exist(Ljava/lang/String;I)Z

    move-result v4

    .line 185
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v4, :cond_136

    move v7, v8

    :cond_136
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 191
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_13b
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    .line 196
    .local v1, "_arg1":[C
    invoke-virtual {p0, v0, v1}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v4

    .line 197
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[C
    .end local v4    # "_result":[B
    :sswitch_154
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v4

    .line 207
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 213
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :sswitch_169
    const-string v9, "android.service.tima.ITimaService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_del(Ljava/lang/String;I)Z

    move-result v4

    .line 219
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v4, :cond_180

    move v7, v8

    :cond_180
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 225
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_185
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 237
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_19e
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 245
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1af
    const-string v9, "android.service.tima.ITimaService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1d3

    move v3, v8

    .line 254
    .local v3, "_arg3":Z
    :goto_1c7
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/service/tima/ITimaService$Stub;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    .line 255
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v3    # "_arg3":Z
    .end local v4    # "_result":I
    :cond_1d3
    move v3, v7

    .line 253
    goto :goto_1c7

    .line 261
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_1d5
    const-string v7, "android.service.tima.ITimaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->dumpLog()[B

    move-result-object v4

    .line 263
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_1e6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x3 -> :sswitch_40
        0x4 -> :sswitch_50
        0x5 -> :sswitch_64
        0x6 -> :sswitch_78
        0x7 -> :sswitch_88
        0x8 -> :sswitch_a1
        0x9 -> :sswitch_b6
        0xa -> :sswitch_c7
        0xb -> :sswitch_dc
        0xc -> :sswitch_ed
        0xd -> :sswitch_fe
        0xe -> :sswitch_11f
        0xf -> :sswitch_13b
        0x10 -> :sswitch_154
        0x11 -> :sswitch_169
        0x12 -> :sswitch_185
        0x13 -> :sswitch_19e
        0x14 -> :sswitch_1af
        0x15 -> :sswitch_1d5
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
