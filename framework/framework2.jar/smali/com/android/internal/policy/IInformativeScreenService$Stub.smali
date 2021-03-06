.class public abstract Lcom/android/internal/policy/IInformativeScreenService$Stub;
.super Landroid/os/Binder;
.source "IInformativeScreenService.java"

# interfaces
.implements Lcom/android/internal/policy/IInformativeScreenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IInformativeScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IInformativeScreenService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IInformativeScreenService"

.field static final TRANSACTION_onBootCompleted:I = 0x4

.field static final TRANSACTION_onScreenTurnedOff:I = 0x1

.field static final TRANSACTION_onScreenTurnedOn:I = 0x2

.field static final TRANSACTION_onSystemReady:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.policy.IInformativeScreenService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IInformativeScreenService;
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
    const-string v1, "com.android.internal.policy.IInformativeScreenService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/policy/IInformativeScreenService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/internal/policy/IInformativeScreenService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/internal/policy/IInformativeScreenService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/IInformativeScreenService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
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
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_40

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 42
    :sswitch_9
    const-string v2, "com.android.internal.policy.IInformativeScreenService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v2, "com.android.internal.policy.IInformativeScreenService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IInformativeScreenService$Stub;->onScreenTurnedOff(I)V

    goto :goto_8

    .line 55
    .end local v0    # "_arg0":I
    :sswitch_1c
    const-string v2, "com.android.internal.policy.IInformativeScreenService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardShowCallback;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardShowCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IInformativeScreenService$Stub;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto :goto_8

    .line 63
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardShowCallback;
    :sswitch_2d
    const-string v2, "com.android.internal.policy.IInformativeScreenService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/policy/IInformativeScreenService$Stub;->onSystemReady()V

    goto :goto_8

    .line 69
    :sswitch_36
    const-string v2, "com.android.internal.policy.IInformativeScreenService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/policy/IInformativeScreenService$Stub;->onBootCompleted()V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_36
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
