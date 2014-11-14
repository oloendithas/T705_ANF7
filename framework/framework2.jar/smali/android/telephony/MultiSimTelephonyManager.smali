.class public Landroid/telephony/MultiSimTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "MultiSimTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSimTelephonyManager"

.field private static cnt:I

.field private static sInstance:[Landroid/telephony/MultiSimTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const/4 v1, 0x0

    sput v1, Landroid/telephony/MultiSimTelephonyManager;->cnt:I

    .line 48
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/MultiSimTelephonyManager;

    sput-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    .line 49
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_c
    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 50
    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    new-instance v2, Landroid/telephony/MultiSimTelephonyManager;

    invoke-direct {v2, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(I)V

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 52
    :cond_1d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 56
    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .param p1, "simSlot"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 65
    iput p1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public static getDefault()Landroid/telephony/MultiSimTelephonyManager;
    .registers 2

    .prologue
    .line 91
    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefault(I)Landroid/telephony/MultiSimTelephonyManager;
    .registers 3
    .param p0, "simSlot"    # I

    .prologue
    .line 99
    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 169
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/MultiSimTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v1, v3

    .line 178
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_10
    :goto_10
    return-object v1

    .line 171
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_11
    iget v4, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v4}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 172
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1a} :catch_22

    move-result v4

    if-eqz v4, :cond_10

    move-object v1, v3

    .line 173
    goto :goto_10

    .line 175
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_1f
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 176
    goto :goto_10

    .line 177
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_22
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 178
    goto :goto_10
.end method

.method protected getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTypeFromProperty()I
    .registers 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .registers 2

    .prologue
    .line 278
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method protected getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkRoaming()Z
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .registers 2

    .prologue
    .line 378
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .registers 2

    .prologue
    .line 357
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 142
    return-void
.end method
