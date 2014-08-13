.class public abstract Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;
.super Landroid/os/Binder;
.source "ISideSyncSinkSIP.java"

# interfaces
.implements Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

.field static final TRANSACTION_isSideSyncWorking:I = 0x1

.field static final TRANSACTION_returnKeyboardSize:I = 0x2

.field static final TRANSACTION_sendCommand:I = 0x7

.field static final TRANSACTION_sendIntentToSource:I = 0x3

.field static final TRANSACTION_sendIntentToSourceEx:I = 0x4

.field static final TRANSACTION_sendKeyCode:I = 0x5

.field static final TRANSACTION_sendLangID:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 47
    :sswitch_0
    const-string v0, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v8, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;->isSideSyncWorking()Z

    move-result v6

    .line 54
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v6    # "_result":Z
    :sswitch_2
    const-string v0, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;->returnKeyboardSize(II)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string v0, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;->sendIntentToSourceEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;->sendKeyCode(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    .end local v1    # "_arg0":I
    :sswitch_6
    const-string v0, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;->sendLangID(I)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v1    # "_arg0":I
    :sswitch_7
    const-string v8, "com.sec.android.sidesync.sink.model.ISideSyncSinkSIP"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    sget-object v8, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 127
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;->sendCommand(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v6

    .line 128
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v6, :cond_2

    .line 130
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 125
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 134
    .restart local v6    # "_result":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
