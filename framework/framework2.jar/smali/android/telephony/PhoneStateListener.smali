.class public Landroid/telephony/PhoneStateListener;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"


# static fields
.field public static final LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8

.field public static final LISTEN_CALL_STATE:I = 0x20

.field public static final LISTEN_CELL_INFO:I = 0x400

.field public static final LISTEN_CELL_LOCATION:I = 0x10

.field public static final LISTEN_DATA_ACTIVITY:I = 0x80

.field public static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field public static final LISTEN_DUN_DATA_ACTIVITY:I = 0x180

.field public static final LISTEN_DUN_DATA_CONNECTION_STATE:I = 0x140

.field public static final LISTEN_FDN_UPDATED:I = 0x800

.field public static final LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_OTASP_CHANGED:I = 0x200

.field public static final LISTEN_SERVICE_STATE:I = 0x1

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100


# instance fields
.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field mHandler:Landroid/os/Handler;

.field protected mSubscription:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    .line 377
    new-instance v0, Landroid/telephony/PhoneStateListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$1;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 442
    new-instance v0, Landroid/telephony/PhoneStateListener$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/PhoneStateListener$2;-><init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    .line 203
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    .line 205
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "subscription"    # I

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    .line 377
    new-instance v0, Landroid/telephony/PhoneStateListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$1;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 442
    new-instance v0, Landroid/telephony/PhoneStateListener$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/PhoneStateListener$2;-><init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    .line 212
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .registers 2
    .param p1, "cfi"    # Z

    .prologue
    .line 253
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 271
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 2
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 260
    return-void
.end method

.method public onDataActivity(I)V
    .registers 2
    .param p1, "direction"    # I

    .prologue
    .line 302
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 283
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 289
    return-void
.end method

.method public onDunDataActivity(I)V
    .registers 2
    .param p1, "direction"    # I

    .prologue
    .line 352
    return-void
.end method

.method public onDunDataConnectionStateChanged(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 363
    return-void
.end method

.method public onFdnUpdated()V
    .registers 1

    .prologue
    .line 371
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 2
    .param p1, "mwi"    # Z

    .prologue
    .line 246
    return-void
.end method

.method public onOtaspChanged(I)V
    .registers 2
    .param p1, "otaspMode"    # I

    .prologue
    .line 329
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 225
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .registers 2
    .param p1, "asu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 314
    return-void
.end method
