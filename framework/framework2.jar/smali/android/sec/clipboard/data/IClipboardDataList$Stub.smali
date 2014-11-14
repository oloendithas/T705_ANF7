.class public abstract Landroid/sec/clipboard/data/IClipboardDataList$Stub;
.super Landroid/os/Binder;
.source "IClipboardDataList.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/IClipboardDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.data.IClipboardDataList"

.field static final TRANSACTION_getItem:I = 0x2

.field static final TRANSACTION_removeData:I = 0x3

.field static final TRANSACTION_size:I = 0x1

.field static final TRANSACTION_updateData:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/data/IClipboardDataList;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    .line 64
    :goto_3
    return-object v0

    .line 60
    :cond_4
    const-string v1, "android.sec.clipboard.data.IClipboardDataList"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/clipboard/data/IClipboardDataList;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Landroid/sec/clipboard/data/IClipboardDataList;

    goto :goto_3

    .line 64
    :cond_13
    new-instance v0, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 68
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 72
    sparse-switch p1, :sswitch_data_7c

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 76
    :sswitch_a
    const-string v3, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 81
    :sswitch_10
    const-string v3, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->size()I

    move-result v2

    .line 83
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 89
    .end local v2    # "_result":I
    :sswitch_20
    const-string v5, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 93
    .local v2, "_result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v2, :cond_39

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v2, p3, v4}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 99
    :cond_39
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 106
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_3d
    const-string v5, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->removeData(I)Z

    move-result v2

    .line 110
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v2, :cond_50

    move v3, v4

    :cond_50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 117
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_54
    const-string v5, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_79

    .line 122
    sget-object v5, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 127
    .local v1, "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_6b
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v2

    .line 128
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v2, :cond_75

    move v3, v4

    :cond_75
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 125
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "_result":Z
    :cond_79
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_6b

    .line 72
    nop

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_54
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
