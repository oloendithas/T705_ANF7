.class public abstract Lcom/android/internal/app/IUsageStats$Stub;
.super Landroid/os/Binder;
.source "IUsageStats.java"

# interfaces
.implements Lcom/android/internal/app/IUsageStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IUsageStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IUsageStats"

.field static final TRANSACTION_getAllPkgUsageStats:I = 0x7

.field static final TRANSACTION_getPkgUsageStats:I = 0x6

.field static final TRANSACTION_noteLaunchTime:I = 0x4

.field static final TRANSACTION_notePauseComponent:I = 0x3

.field static final TRANSACTION_noteResumeComponent:I = 0x1

.field static final TRANSACTION_noteResumeComponentForMDM:I = 0x2

.field static final TRANSACTION_setUsageStatsWatcher:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IUsageStats"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;
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
    const-string v1, "com.android.internal.app.IUsageStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IUsageStats;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/internal/app/IUsageStats;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/internal/app/IUsageStats$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IUsageStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_ea

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 42
    :sswitch_9
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    .line 50
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 56
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    .line 57
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 62
    .local v1, "_arg1":Landroid/content/Intent;
    :goto_30
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IUsageStats$Stub;->noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 53
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_37
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_22

    .line 60
    :cond_39
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_30

    .line 68
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :sswitch_3b
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_59

    .line 71
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 77
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IUsageStats$Stub;->noteResumeComponentForMDM(Landroid/content/ComponentName;I)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 74
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    :cond_59
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4e

    .line 84
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5b
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_75

    .line 87
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 92
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_6e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->notePauseComponent(Landroid/content/ComponentName;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 90
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_75
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6e

    .line 98
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_77
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_96

    .line 101
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 107
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IUsageStats$Stub;->noteLaunchTime(Landroid/content/ComponentName;I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 104
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    :cond_96
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8a

    .line 114
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_98
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IUsageStatsWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStatsWatcher;

    move-result-object v0

    .line 117
    .local v0, "_arg0":Lcom/android/internal/app/IUsageStatsWatcher;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->setUsageStatsWatcher(Lcom/android/internal/app/IUsageStatsWatcher;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 123
    .end local v0    # "_arg0":Lcom/android/internal/app/IUsageStatsWatcher;
    :sswitch_ad
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d1

    .line 126
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 131
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_c0
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IUsageStats$Stub;->getPkgUsageStats(Landroid/content/ComponentName;)Lcom/android/internal/os/PkgUsageStats;

    move-result-object v2

    .line 132
    .local v2, "_result":Lcom/android/internal/os/PkgUsageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v2, :cond_d3

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {v2, p3, v3}, Lcom/android/internal/os/PkgUsageStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_8

    .line 129
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Lcom/android/internal/os/PkgUsageStats;
    :cond_d1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c0

    .line 138
    .restart local v2    # "_result":Lcom/android/internal/os/PkgUsageStats;
    :cond_d3
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 144
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Lcom/android/internal/os/PkgUsageStats;
    :sswitch_d9
    const-string v4, "com.android.internal.app.IUsageStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/app/IUsageStats$Stub;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v2

    .line 146
    .local v2, "_result":[Lcom/android/internal/os/PkgUsageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    .line 38
    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_5b
        0x4 -> :sswitch_77
        0x5 -> :sswitch_98
        0x6 -> :sswitch_ad
        0x7 -> :sswitch_d9
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
