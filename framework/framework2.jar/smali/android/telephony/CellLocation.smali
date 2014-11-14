.class public abstract Landroid/telephony/CellLocation;
.super Ljava/lang/Object;
.source "CellLocation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmpty()Landroid/telephony/CellLocation;
    .registers 1

    .prologue
    .line 159
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 178
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 161
    :pswitch_d
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    goto :goto_c

    .line 163
    :pswitch_13
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    goto :goto_c

    .line 159
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 137
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 120
    :pswitch_d
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_c

    .line 122
    :pswitch_13
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_c

    .line 118
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public static newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "simSlot"    # I

    .prologue
    .line 80
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 99
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 82
    :pswitch_d
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_c

    .line 84
    :pswitch_13
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_c

    .line 80
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public static requestLocationUpdate()V
    .registers 3

    .prologue
    .line 52
    const/4 v1, 0x0

    .local v1, "simSlotNum":I
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 53
    const-string/jumbo v2, "phone"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 55
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 56
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_1e

    .line 52
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_1e
    move-exception v2

    .line 63
    :cond_1f
    return-void
.end method


# virtual methods
.method public abstract fillInNotifierBundle(Landroid/os/Bundle;)V
.end method

.method public abstract isEmpty()Z
.end method
