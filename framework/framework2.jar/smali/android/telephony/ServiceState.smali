.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static CIQ_UID:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final OPTIONAL_RADIO_TECH_DC:I = 0x1

.field public static final OPTIONAL_RADIO_TECH_NONE:I = 0x0

.field public static final OPTIONAL_RADIO_TECH_TDLTE:I = 0x2

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RIL_RADIO_TECHNOLOGY_DC:I = 0x1e

.field public static final RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RIL_RADIO_TECHNOLOGY_TDLTE:I = 0x1f

.field public static final RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final RIL_REG_STATE_DENIED:I = 0x3

.field public static final RIL_REG_STATE_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final RIL_REG_STATE_HOME:I = 0x1

.field public static final RIL_REG_STATE_NOT_REG:I = 0x0

.field public static final RIL_REG_STATE_NOT_REG_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final RIL_REG_STATE_ROAMING:I = 0x5

.field public static final RIL_REG_STATE_SEARCHING:I = 0x2

.field public static final RIL_REG_STATE_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final RIL_REG_STATE_UNKNOWN:I = 0x4

.field public static final RIL_REG_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field static final SHIP_BUILD:Z

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3

.field private static sITelephony:Lcom/android/internal/telephony/ITelephony;


# instance fields
.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field private mCdmaRoamingIndicator:I

.field private mCssIndicator:Z

.field private mDataRegState:I

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mNetworkId:I

.field private mOperatorAlphaLong:Ljava/lang/String;

.field private mOperatorAlphaShort:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mOptionalRadioTech:I

.field private mRilDataRadioTechnology:I

.field private mRilVoiceRadioTechnology:I

.field private mRoaming:Z

.field private mSystemId:I

.field private mVoiceRegState:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 242
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ServiceState;->SHIP_BUILD:Z

    .line 263
    const/4 v0, -0x1

    sput v0, Landroid/telephony/ServiceState;->CIQ_UID:I

    .line 264
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/ServiceState;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 361
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 206
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 223
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 206
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 223
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 241
    iput v2, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7f

    move v0, v1

    :goto_20
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_81

    move v0, v1

    :goto_3b
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_83

    move v0, v1

    :goto_50
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_85

    :goto_7c
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 335
    return-void

    :cond_7f
    move v0, v2

    .line 320
    goto :goto_20

    :cond_81
    move v0, v2

    .line 324
    goto :goto_3b

    :cond_83
    move v0, v2

    .line 327
    goto :goto_50

    :cond_85
    move v1, v2

    .line 334
    goto :goto_7c
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v0, 0x1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 206
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 223
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 291
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 292
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 813
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static isCdma(I)Z
    .registers 5
    .param p0, "radioTechnology"    # I

    .prologue
    const/4 v0, 0x1

    .line 1064
    const-string v1, "CTC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "false"

    const-string v2, "gsm.operator.isroaming"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v1, 0xe

    if-ne p0, v1, :cond_20

    .line 1070
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const/4 v1, 0x4

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1f

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1f

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1f

    const/16 v1, 0xd

    if-eq p0, v1, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static isDataInLegacy3gpp(I)Z
    .registers 3
    .param p0, "radioTechnology"    # I

    .prologue
    const/4 v0, 0x1

    .line 1096
    if-eq p0, v0, :cond_1d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1d

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1d

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1d

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1d

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1d

    const/16 v1, 0x10

    if-ne p0, v1, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isGsm(I)Z
    .registers 6
    .param p0, "radioTechnology"    # I

    .prologue
    const/16 v4, 0xe

    const/4 v0, 0x1

    .line 1017
    const-string v1, "CTC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "true"

    const-string v2, "gsm.operator.isroaming"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    if-ne p0, v4, :cond_21

    .line 1023
    :cond_20
    :goto_20
    return v0

    :cond_21
    if-eq p0, v0, :cond_20

    const/4 v1, 0x2

    if-eq p0, v1, :cond_20

    const/4 v1, 0x3

    if-eq p0, v1, :cond_20

    const/16 v1, 0x9

    if-eq p0, v1, :cond_20

    const/16 v1, 0xa

    if-eq p0, v1, :cond_20

    const/16 v1, 0xb

    if-eq p0, v1, :cond_20

    if-eq p0, v4, :cond_20

    const/16 v1, 0xf

    if-eq p0, v1, :cond_20

    const/16 v1, 0x10

    if-eq p0, v1, :cond_20

    const/16 v1, 0x11

    if-eq p0, v1, :cond_20

    const/16 v1, 0x12

    if-eq p0, v1, :cond_20

    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 256
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 257
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 258
    return-object v0
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .registers 4
    .param p1, "rt"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 905
    packed-switch p1, :pswitch_data_44

    .line 954
    const/4 v0, 0x0

    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 909
    goto :goto_6

    .line 911
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_6

    .line 913
    :pswitch_b
    const/16 v0, 0x8

    goto :goto_6

    .line 915
    :pswitch_e
    const/16 v0, 0x9

    goto :goto_6

    .line 917
    :pswitch_11
    const/16 v0, 0xa

    goto :goto_6

    .line 920
    :pswitch_14
    const/4 v0, 0x4

    goto :goto_6

    .line 922
    :pswitch_16
    const/4 v0, 0x7

    goto :goto_6

    .line 924
    :pswitch_18
    const/4 v0, 0x5

    goto :goto_6

    .line 926
    :pswitch_1a
    const/4 v0, 0x6

    goto :goto_6

    .line 928
    :pswitch_1c
    const/16 v0, 0xc

    goto :goto_6

    .line 930
    :pswitch_1f
    const/16 v0, 0xe

    goto :goto_6

    .line 933
    :pswitch_22
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v0

    if-ne v0, v1, :cond_2b

    .line 934
    const/16 v0, 0x1f

    goto :goto_6

    .line 937
    :cond_2b
    const/16 v0, 0xd

    goto :goto_6

    .line 940
    :pswitch_2e
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v1

    if-ne v1, v0, :cond_37

    .line 941
    const/16 v0, 0x1e

    goto :goto_6

    .line 944
    :cond_37
    const/16 v0, 0xf

    goto :goto_6

    .line 946
    :pswitch_3a
    const/16 v0, 0x10

    goto :goto_6

    .line 948
    :pswitch_3d
    const/16 v0, 0x11

    goto :goto_6

    .line 951
    :pswitch_40
    const/16 v0, 0x12

    goto :goto_6

    .line 905
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_14
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_1a
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_2e
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
    .end packed-switch
.end method

.method public static rilRadioTechnologyToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "rt"    # I

    .prologue
    .line 579
    packed-switch p0, :pswitch_data_90

    .line 643
    :pswitch_3
    const-string v0, "Unexpected"

    .line 644
    .local v0, "rtString":Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected radioTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_1d
    const-string v1, "OPEN"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "CHN"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 652
    :cond_31
    const-string v1, "CTC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .end local v0    # "rtString":Ljava/lang/String;
    :cond_52
    return-object v0

    .line 581
    :pswitch_53
    const-string v0, "Unknown"

    .line 582
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 584
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_56
    const-string v0, "GPRS"

    .line 585
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 587
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_59
    const-string v0, "EDGE"

    .line 588
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 590
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5c
    const-string v0, "UMTS"

    .line 591
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 593
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5f
    const-string v0, "CDMA-IS95A"

    .line 594
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 596
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_62
    const-string v0, "CDMA-IS95B"

    .line 597
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 599
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_65
    const-string v0, "1xRTT"

    .line 600
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 602
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_68
    const-string v0, "EvDo-rev.0"

    .line 603
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 605
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6b
    const-string v0, "EvDo-rev.A"

    .line 606
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 608
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6e
    const-string v0, "HSDPA"

    .line 609
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 611
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_71
    const-string v0, "HSUPA"

    .line 612
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 614
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_74
    const-string v0, "HSPA"

    .line 615
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 617
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_77
    const-string v0, "EvDo-rev.B"

    .line 618
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 620
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_7a
    const-string v0, "eHRPD"

    .line 621
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 623
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_7d
    const-string v0, "LTE"

    .line 624
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 626
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_80
    const-string v0, "HSPAP"

    .line 627
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 629
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_83
    const-string v0, "GSM"

    .line 630
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 632
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_86
    const-string v0, "TD-SCDMA"

    .line 633
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 635
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_89
    const-string v0, "IWLAN"

    .line 636
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 639
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_8c
    const-string v0, "DC"

    .line 640
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 579
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_71
        :pswitch_74
        :pswitch_77
        :pswitch_7a
        :pswitch_7d
        :pswitch_80
        :pswitch_83
        :pswitch_86
        :pswitch_89
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_8c
    .end packed-switch
.end method

.method private static setCiqUid()V
    .registers 5

    .prologue
    .line 268
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    sput-object v2, Landroid/telephony/ServiceState;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 269
    sget-object v2, Landroid/telephony/ServiceState;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    const-string v3, "com.carrieriq.tmobile"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getUidForApplication(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/telephony/ServiceState;->CIQ_UID:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_36

    .line 275
    :goto_17
    return-void

    .line 270
    :catch_18
    move-exception v1

    .line 271
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceState: ITelephony call abandoned due to remote exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 272
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 273
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "PHONE"

    const-string v3, "ServiceState: Telephony Service isn\'t available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 823
    const-string/jumbo v0, "voiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 824
    const-string v0, "dataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 825
    const-string/jumbo v0, "roaming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 826
    const-string/jumbo v0, "operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 827
    const-string/jumbo v0, "operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 828
    const-string/jumbo v0, "operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 829
    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 830
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 831
    const-string v0, "dataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 832
    const-string v0, "cssIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 833
    const-string/jumbo v0, "networkId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 834
    const-string/jumbo v0, "systemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 835
    const-string v0, "cdmaRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 836
    const-string v0, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 837
    const-string v0, "emergencyOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 838
    return-void
.end method

.method private setNullState(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 692
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServiceState] setNullState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 694
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 695
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 696
    iput-object v5, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 697
    iput-object v5, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 698
    iput-object v5, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 699
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 700
    iput v3, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 701
    iput v3, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 702
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 703
    iput v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 704
    iput v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 705
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 706
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 707
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 708
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 709
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 711
    iput v3, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 713
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 295
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 296
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 297
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mRoaming:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 298
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 299
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 300
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 301
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 302
    iget v0, p1, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 303
    iget v0, p1, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 304
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 305
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 306
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 307
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 308
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 309
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 310
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 311
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 312
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 541
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 546
    .local v2, "s":Landroid/telephony/ServiceState;
    if-nez p1, :cond_a

    .line 550
    .end local v2    # "s":Landroid/telephony/ServiceState;
    :cond_7
    :goto_7
    return v3

    .line 542
    :catch_8
    move-exception v1

    .line 543
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_7

    .line 550
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/ServiceState;
    :cond_a
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mRoaming:Z

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto/16 :goto_7
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 847
    const-string/jumbo v0, "voiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 848
    const-string v0, "dataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 849
    const-string/jumbo v0, "roaming"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 850
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 854
    const-string/jumbo v0, "radioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const-string v0, "dataRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    const-string v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 857
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 859
    const-string v0, "cdmaRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    const-string v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    const-string v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 862
    return-void
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .registers 2

    .prologue
    .line 457
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .registers 2

    .prologue
    .line 464
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode()I
    .registers 2

    .prologue
    .line 471
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public getCssIndicator()I
    .registers 2

    .prologue
    .line 979
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getDataNetworkType()I
    .registers 2

    .prologue
    .line 969
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataRegState()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public getIsManualSelection()Z
    .registers 2

    .prologue
    .line 519
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public getNetworkId()I
    .registers 2

    .prologue
    .line 984
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public getNetworkType()I
    .registers 3

    .prologue
    .line 963
    const-string v0, "PHONE"

    const-string v1, "ServiceState.getNetworkType() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalRadioTech()I
    .registers 2

    .prologue
    .line 1091
    iget v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    return v0
.end method

.method public getRadioTechnology()I
    .registers 3

    .prologue
    .line 900
    const-string v0, "PHONE"

    const-string v1, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    return v0
.end method

.method public getRilDataRadioTechnology()I
    .registers 2

    .prologue
    .line 892
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .registers 2

    .prologue
    .line 888
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    return v0
.end method

.method public getRoaming()Z
    .registers 2

    .prologue
    .line 436
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    return v0
.end method

.method public getState()I
    .registers 6

    .prologue
    .line 377
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 378
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 379
    .local v0, "currentUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_71

    .line 381
    sget v2, Landroid/telephony/ServiceState;->CIQ_UID:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 382
    invoke-static {}, Landroid/telephony/ServiceState;->setCiqUid()V

    .line 384
    :cond_1c
    sget v2, Landroid/telephony/ServiceState;->CIQ_UID:I

    if-ne v0, v2, :cond_71

    .line 385
    const-string v2, "PHONE"

    const-string v3, "ServiceState: getState() was called by sys.Manager"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :try_start_27
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceState: WFC state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/ServiceState;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v2, Landroid/telephony/ServiceState;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x3

    .line 396
    .end local v0    # "currentUid":I
    :goto_4e
    return v2

    .line 388
    .restart local v0    # "currentUid":I
    :cond_4f
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_52} :catch_54

    move-result v2

    goto :goto_4e

    .line 389
    :catch_54
    move-exception v1

    .line 390
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceState: ITelephony call abandoned due to remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v0    # "currentUid":I
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_71
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    goto :goto_4e
.end method

.method public getSystemId()I
    .registers 2

    .prologue
    .line 989
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public getVoiceNetworkType()I
    .registers 2

    .prologue
    .line 974
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceRegState()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v0, :cond_35

    move v0, v1

    :goto_10
    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_37

    move v0, v1

    :goto_16
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_39

    move v0, v2

    :goto_1c
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_40

    move v0, v2

    :goto_22
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_47

    move v0, v2

    :goto_28
    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    add-int/2addr v0, v3

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v3, :cond_4e

    :goto_33
    add-int/2addr v0, v1

    return v0

    :cond_35
    move v0, v2

    goto :goto_10

    :cond_37
    move v0, v2

    goto :goto_16

    :cond_39
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1c

    :cond_40
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_22

    :cond_47
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_28

    :cond_4e
    move v1, v2

    goto :goto_33
.end method

.method public isEmergencyOnly()Z
    .registers 2

    .prologue
    .line 443
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .registers 2
    .param p1, "roaming"    # I

    .prologue
    .line 763
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 764
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 770
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 771
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 777
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 778
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .registers 2
    .param p1, "roaming"    # I

    .prologue
    .line 756
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 757
    return-void
.end method

.method public setCssIndicator(I)V
    .registers 3
    .param p1, "css"    # I

    .prologue
    .line 877
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 878
    return-void

    .line 877
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setDataRegState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 736
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 737
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServiceState] setDataRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-void
.end method

.method public setEmergencyOnly(Z)V
    .registers 2
    .param p1, "emergencyOnly"    # Z

    .prologue
    .line 749
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 750
    return-void
.end method

.method public setIsManualSelection(Z)V
    .registers 2
    .param p1, "isManual"    # Z

    .prologue
    .line 802
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 803
    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 798
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 799
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 781
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 782
    iput-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 783
    iput-object p3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 789
    return-void
.end method

.method public setOptionalRadioTech(I)V
    .registers 2
    .param p1, "optTech"    # I

    .prologue
    .line 1084
    iput p1, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 1085
    return-void
.end method

.method public setRilDataRadioTechnology(I)V
    .registers 5
    .param p1, "rt"    # I

    .prologue
    .line 871
    iput p1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 872
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServiceState] setDataRadioTechnology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-void
.end method

.method public setRilVoiceRadioTechnology(I)V
    .registers 2
    .param p1, "rt"    # I

    .prologue
    .line 866
    iput p1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 867
    return-void
.end method

.method public setRoaming(Z)V
    .registers 2
    .param p1, "roaming"    # Z

    .prologue
    .line 741
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 742
    return-void
.end method

.method public setState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 725
    const-string v0, "PHONE"

    const-string v1, "[ServiceState] setState deprecated use setVoiceRegState()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-void
.end method

.method public setStateOff()V
    .registers 2

    .prologue
    .line 720
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 721
    return-void
.end method

.method public setStateOutOfService()V
    .registers 2

    .prologue
    .line 716
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 717
    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .registers 3
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    .prologue
    .line 882
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 883
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 884
    return-void
.end method

.method public setVoiceRegState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 730
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 731
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServiceState] setVoiceRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 660
    iget v2, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "radioTechnology":Ljava/lang/String;
    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "dataRadioTechnology":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ServiceState;->SHIP_BUILD:Z

    if-nez v2, :cond_db

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v2, :cond_d1

    const-string/jumbo v2, "roaming"

    :goto_34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_d5

    const-string v2, "(manual)"

    :goto_68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_d8

    const-string v2, "CSS supported"

    :goto_8c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DefRoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EmergOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 678
    :goto_d0
    return-object v2

    .line 664
    :cond_d1
    const-string v2, "home"

    goto/16 :goto_34

    :cond_d5
    const-string v2, ""

    goto :goto_68

    :cond_d8
    const-string v2, "CSS not supported"

    goto :goto_8c

    .line 678
    :cond_db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v2, :cond_179

    const-string/jumbo v2, "roaming"

    :goto_ff
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_17c

    const-string v2, "(manual)"

    :goto_10f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_17f

    const-string v2, "CSS supported"

    :goto_133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DefRoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EmergOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d0

    :cond_179
    const-string v2, "home"

    goto :goto_ff

    :cond_17c
    const-string v2, ""

    goto :goto_10f

    :cond_17f
    const-string v2, "CSS not supported"

    goto :goto_133
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v0, :cond_63

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_65

    move v0, v1

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_67

    move v0, v1

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_69

    :goto_5f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    return-void

    :cond_63
    move v0, v2

    .line 340
    goto :goto_11

    :cond_65
    move v0, v2

    .line 344
    goto :goto_28

    :cond_67
    move v0, v2

    .line 347
    goto :goto_3a

    :cond_69
    move v1, v2

    .line 354
    goto :goto_5f
.end method
