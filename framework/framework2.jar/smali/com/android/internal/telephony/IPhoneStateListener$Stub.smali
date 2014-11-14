.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final TRANSACTION_onCallStateChanged:I = 0x6

.field static final TRANSACTION_onCellInfoChanged:I = 0xb

.field static final TRANSACTION_onCellLocationChanged:I = 0x5

.field static final TRANSACTION_onDataActivity:I = 0x8

.field static final TRANSACTION_onDataConnectionStateChanged:I = 0x7

.field static final TRANSACTION_onDunDataActivity:I = 0xc

.field static final TRANSACTION_onDunDataConnectionStateChanged:I = 0xd

.field static final TRANSACTION_onFdnUpdated:I = 0xe

.field static final TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final TRANSACTION_onOtaspChanged:I = 0xa

.field static final TRANSACTION_onServiceStateChanged:I = 0x1

.field static final TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final TRANSACTION_onSignalStrengthsChanged:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
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
    const-string v1, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/internal/telephony/IPhoneStateListener;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_102

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 50
    sget-object v4, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    .line 55
    .local v0, "_arg0":Landroid/telephony/ServiceState;
    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_9

    .line 53
    .end local v0    # "_arg0":Landroid/telephony/ServiceState;
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telephony/ServiceState;
    goto :goto_23

    .line 60
    .end local v0    # "_arg0":Landroid/telephony/ServiceState;
    :sswitch_29
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    goto :goto_9

    .line 68
    .end local v0    # "_arg0":I
    :sswitch_36
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    move v0, v3

    .line 71
    .local v0, "_arg0":Z
    :cond_42
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    goto :goto_9

    .line 76
    .end local v0    # "_arg0":Z
    :sswitch_46
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52

    move v0, v3

    .line 79
    .restart local v0    # "_arg0":Z
    :cond_52
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    goto :goto_9

    .line 84
    .end local v0    # "_arg0":Z
    :sswitch_56
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d

    .line 87
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 92
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_69
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/os/Bundle;)V

    goto :goto_9

    .line 90
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_6d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_69

    .line 97
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_6f
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_9

    .line 107
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_80
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    goto/16 :goto_9

    .line 117
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_92
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    goto/16 :goto_9

    .line 125
    .end local v0    # "_arg0":I
    :sswitch_a0
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b8

    .line 128
    sget-object v4, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    .line 133
    .local v0, "_arg0":Landroid/telephony/SignalStrength;
    :goto_b3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_9

    .line 131
    .end local v0    # "_arg0":Landroid/telephony/SignalStrength;
    :cond_b8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_b3

    .line 138
    .end local v0    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_ba
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOtaspChanged(I)V

    goto/16 :goto_9

    .line 146
    .end local v0    # "_arg0":I
    :sswitch_c8
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    sget-object v4, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 149
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    goto/16 :goto_9

    .line 154
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_d8
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDunDataActivity(I)V

    goto/16 :goto_9

    .line 162
    .end local v0    # "_arg0":I
    :sswitch_e6
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDunDataConnectionStateChanged(II)V

    goto/16 :goto_9

    .line 172
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_f8
    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onFdnUpdated()V

    goto/16 :goto_9

    .line 38
    :sswitch_data_102
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_29
        0x3 -> :sswitch_36
        0x4 -> :sswitch_46
        0x5 -> :sswitch_56
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_80
        0x8 -> :sswitch_92
        0x9 -> :sswitch_a0
        0xa -> :sswitch_ba
        0xb -> :sswitch_c8
        0xc -> :sswitch_d8
        0xd -> :sswitch_e6
        0xe -> :sswitch_f8
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
