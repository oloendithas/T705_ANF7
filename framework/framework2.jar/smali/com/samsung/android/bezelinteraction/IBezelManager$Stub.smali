.class public abstract Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;
.super Landroid/os/Binder;
.source "IBezelManager.java"

# interfaces
.implements Lcom/samsung/android/bezelinteraction/IBezelManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bezelinteraction/IBezelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bezelinteraction/IBezelManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.bezelinteraction.IBezelManager"

.field static final TRANSACTION_enableBezelInteraction:I = 0x4

.field static final TRANSACTION_getEnableBezelInteraction:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_selectedItemCallback:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.bezelinteraction.IBezelManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;
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
    const-string v1, "com.samsung.android.bezelinteraction.IBezelManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/bezelinteraction/IBezelManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/samsung/android/bezelinteraction/IBezelManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_94

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 43
    :sswitch_a
    const-string v3, "com.samsung.android.bezelinteraction.IBezelManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v5, "com.samsung.android.bezelinteraction.IBezelManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    .line 53
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 58
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_27
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v2

    .line 59
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v2, :cond_31

    move v3, v4

    :cond_31
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 56
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :cond_35
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_27

    .line 65
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_37
    const-string v5, "com.samsung.android.bezelinteraction.IBezelManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v2

    .line 69
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_4a

    move v3, v4

    :cond_4a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 75
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :sswitch_4e
    const-string v3, "com.samsung.android.bezelinteraction.IBezelManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_68

    .line 78
    sget-object v3, Lcom/samsung/android/bezelinteraction/BezelEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bezelinteraction/BezelEvent;

    .line 83
    .local v0, "_arg0":Lcom/samsung/android/bezelinteraction/BezelEvent;
    :goto_61
    invoke-virtual {p0, v0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->selectedItemCallback(Lcom/samsung/android/bezelinteraction/BezelEvent;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":Lcom/samsung/android/bezelinteraction/BezelEvent;
    :cond_68
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/bezelinteraction/BezelEvent;
    goto :goto_61

    .line 89
    .end local v0    # "_arg0":Lcom/samsung/android/bezelinteraction/BezelEvent;
    :sswitch_6a
    const-string v5, "com.samsung.android.bezelinteraction.IBezelManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7d

    move v0, v4

    .line 92
    .local v0, "_arg0":Z
    :goto_76
    invoke-virtual {p0, v0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->enableBezelInteraction(Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_7d
    move v0, v3

    .line 91
    goto :goto_76

    .line 98
    :sswitch_7f
    const-string v5, "com.samsung.android.bezelinteraction.IBezelManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->getEnableBezelInteraction()Z

    move-result v2

    .line 100
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_8e

    move v3, v4

    :cond_8e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_37
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_6a
        0x5 -> :sswitch_7f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
