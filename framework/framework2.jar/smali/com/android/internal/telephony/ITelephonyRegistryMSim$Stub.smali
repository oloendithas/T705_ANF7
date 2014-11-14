.class public abstract Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistryMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistryMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistryMSim"

.field static final TRANSACTION_listen:I = 0x1

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0x6

.field static final TRANSACTION_notifyCallState:I = 0x2

.field static final TRANSACTION_notifyCellInfo:I = 0xc

.field static final TRANSACTION_notifyCellLocation:I = 0xa

.field static final TRANSACTION_notifyDataActivity:I = 0x7

.field static final TRANSACTION_notifyDataConnection:I = 0x8

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x9

.field static final TRANSACTION_notifyMessageWaitingChanged:I = 0x5

.field static final TRANSACTION_notifyOtaspChanged:I = 0xb

.field static final TRANSACTION_notifyServiceState:I = 0x3

.field static final TRANSACTION_notifySignalStrength:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryMSim;
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
    const-string v1, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 17
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
    sparse-switch p1, :sswitch_data_19e

    .line 225
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 42
    :sswitch_8
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_7

    .line 47
    :sswitch_f
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v4, 0x1

    .line 57
    .local v4, "_arg3":Z
    :goto_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v0, 0x1

    goto :goto_7

    .line 55
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    :cond_38
    const/4 v4, 0x0

    goto :goto_2b

    .line 64
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v3    # "_arg2":I
    :sswitch_3a
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 71
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyCallState(ILjava/lang/String;I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v0, 0x1

    goto :goto_7

    .line 77
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_53
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    .line 80
    sget-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    .line 86
    .local v1, "_arg0":Landroid/telephony/ServiceState;
    :goto_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyServiceState(Landroid/telephony/ServiceState;I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v0, 0x1

    goto :goto_7

    .line 83
    .end local v1    # "_arg0":Landroid/telephony/ServiceState;
    .end local v2    # "_arg1":I
    :cond_72
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/ServiceState;
    goto :goto_66

    .line 93
    .end local v1    # "_arg0":Landroid/telephony/ServiceState;
    :sswitch_74
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_94

    .line 96
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrength;

    .line 102
    .local v1, "_arg0":Landroid/telephony/SignalStrength;
    :goto_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifySignalStrength(Landroid/telephony/SignalStrength;I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 99
    .end local v1    # "_arg0":Landroid/telephony/SignalStrength;
    .end local v2    # "_arg1":I
    :cond_94
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_87

    .line 109
    .end local v1    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_96
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_af

    const/4 v1, 0x1

    .line 113
    .local v1, "_arg0":Z
    :goto_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyMessageWaitingChanged(ZI)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 111
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_af
    const/4 v1, 0x0

    goto :goto_a2

    .line 120
    :sswitch_b1
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ca

    const/4 v1, 0x1

    .line 124
    .restart local v1    # "_arg0":Z
    :goto_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyCallForwardingChanged(ZI)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 122
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_ca
    const/4 v1, 0x0

    goto :goto_bd

    .line 131
    :sswitch_cc
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyDataActivity(I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 140
    .end local v1    # "_arg0":I
    :sswitch_de
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12f

    const/4 v2, 0x1

    .line 146
    .local v2, "_arg1":Z
    :goto_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_131

    .line 153
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .line 159
    .local v6, "_arg5":Landroid/net/LinkProperties;
    :goto_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_133

    .line 160
    sget-object v0, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkCapabilities;

    .line 166
    .local v7, "_arg6":Landroid/net/LinkCapabilities;
    :goto_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 168
    .local v8, "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_135

    const/4 v9, 0x1

    .line 170
    .local v9, "_arg8":Z
    :goto_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg9":I
    move-object v0, p0

    .line 171
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 144
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/net/LinkProperties;
    .end local v7    # "_arg6":Landroid/net/LinkCapabilities;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":I
    :cond_12f
    const/4 v2, 0x0

    goto :goto_ee

    .line 156
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v4    # "_arg3":Ljava/lang/String;
    .restart local v5    # "_arg4":Ljava/lang/String;
    :cond_131
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/net/LinkProperties;
    goto :goto_108

    .line 163
    :cond_133
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/net/LinkCapabilities;
    goto :goto_116

    .line 168
    .restart local v8    # "_arg7":I
    :cond_135
    const/4 v9, 0x0

    goto :goto_121

    .line 177
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/net/LinkProperties;
    .end local v7    # "_arg6":Landroid/net/LinkCapabilities;
    .end local v8    # "_arg7":I
    :sswitch_137
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 190
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_151
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_171

    .line 193
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 199
    .local v1, "_arg0":Landroid/os/Bundle;
    :goto_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyCellLocation(Landroid/os/Bundle;I)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 196
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_arg1":I
    :cond_171
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_164

    .line 206
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_173
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyOtaspChanged(I)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 215
    .end local v1    # "_arg0":I
    :sswitch_185
    const-string v0, "com.android.internal.telephony.ITelephonyRegistryMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 219
    .local v11, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v11, v2}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->notifyCellInfo(Ljava/util/List;I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 38
    nop

    :sswitch_data_19e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_53
        0x4 -> :sswitch_74
        0x5 -> :sswitch_96
        0x6 -> :sswitch_b1
        0x7 -> :sswitch_cc
        0x8 -> :sswitch_de
        0x9 -> :sswitch_137
        0xa -> :sswitch_151
        0xb -> :sswitch_173
        0xc -> :sswitch_185
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
